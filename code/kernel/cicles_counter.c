#include <linux/module.h>				// Required by all kernel modules
#include <linux/kernel.h>				// Required by printk
#include <linux/init.h>					// Required for __init and __exit macros
#include <linux/proc_fs.h>				// Required for accessing the /proc file system
#include <linux/uaccess.h>				// Required for accessing the copy_to_user function
#include <linux/seq_file.h>
#include <linux/moduleparam.h>
#include "../assembly_instructions.h"
#include "to_run.h"

#define PROC_FILENAME "cicles_counter"


MODULE_LICENSE("GPL");
MODULE_AUTHOR("P. Escaleira");
MODULE_DESCRIPTION("Clock cicles counter module");

const int COUNTER = 100;

static int number_runs = 1000000;
module_param(number_runs, int, 0660);

static struct proc_dir_entry * pf = 0;


static unsigned long long result[2];
static char *result_char;
static ssize_t procfile_read(struct file * file, char __user * ubuf, size_t count, loff_t * ppos) {
	unsigned long t0, t1, t2;
	int i;

	if (*ppos == 0) {
		result_char = (char *) &result;
	}

	if (*ppos >= number_runs)
		return 0;

	RDTSC_ASSEMBLY(t0)

	for(i = 0; i < COUNTER; i++) {
		UNROLL_THOUSAND(XOR_ASSEMBLY())
	}

	RDTSC_ASSEMBLY(t1)

	for (i = 0; i < COUNTER; i++) {
		#if defined RUN_CPUID
			CPUID_ASSEMBLY()
		#elif defined RUN_RTC
			RTC_ASSEMBLY()
		#elif defined RUN_LGDT
			SGDT_LGDT_ASSEMBLY()
		#endif
	}

	RDTSC_ASSEMBLY(t2)

	result[0] = t1 - t0;
	result[1] = t2 - t1;

	if (copy_to_user(ubuf, result_char, sizeof(result))) // Returns the number of bytes that could not be coppied
		return -EFAULT;

	*ppos += 1;
	return sizeof(result);
}

static struct proc_ops options = {
	.proc_read = procfile_read,
	.proc_write = 0,
};

static int __init hello_init(void) {
	pf = proc_create(PROC_FILENAME, 0444, 0, &options);

	if (pf == 0) {
		printk(KERN_ALERT "Cicles counter proc module cannot open /proc/%s!\n ", PROC_FILENAME);
	}

	printk(KERN_INFO "Cicles counter proc module installed, check file /proc/%s!\n ", PROC_FILENAME);

	return 0; // 0 - module loaded; otherwise, loading error
}

static void __exit hello_exit(void) {
	if (pf != 0) {
		proc_remove(pf);
	}

	printk(KERN_INFO "Cicles counter module removed.\n ");
}

module_init(hello_init);
module_exit(hello_exit);
