#include <linux/module.h>				// Required by all kernel modules
#include <linux/kernel.h>				// Required by printk
#include <linux/init.h>					// Required for __init and __exit macros
#include <linux/proc_fs.h>				// Required for accessing the /proc file system
#include <linux/uaccess.h>				// Required for accessing the copy_to_user function
#include <linux/seq_file.h>
#include <linux/moduleparam.h>
#include "../assembly_instructions.h"

#define PROC_FILENAME "cicles_counter"


MODULE_LICENSE("GPL");
MODULE_AUTHOR("P. Escaleira");
MODULE_DESCRIPTION("Clock cicles counter module");


static int instruction = 0;
module_param(instruction, int, 0660);

static int number_runs = 1000000;
module_param(number_runs, int, 0660);

static const assembly_instruction_function INSTRUCTIONS_SET[] = {&cpuid_assembly, &rtc_assembly, &sgdt_lgdt_assembly, &xor_assembly};

static struct proc_dir_entry * pf = 0;


static unsigned long result;
static char *result_char;
static ssize_t procfile_read(struct file * file, char __user * ubuf, size_t count, loff_t * ppos) {
	unsigned long t0;

	if (instruction >= (sizeof(INSTRUCTIONS_SET)/sizeof(assembly_instruction_function)) 
		|| instruction < 0) {
		printk(KERN_ALERT "The instruction number given is outside the range of possible instructions.");
		return 0;
	}

	if (*ppos == 0)
		result_char = (char *) &result;

	if (*ppos >= number_runs*4)
		return 0;

	if (*ppos % 4 == 0) {
		t0 = rdtsc_assembly();
		INSTRUCTIONS_SET[instruction]();
	   result = rdtsc_assembly() - t0;
	}
	if (copy_to_user(ubuf, result_char + (*ppos % 4), 1)) // Returns the number of bytes that could not be coppied
		return -EFAULT;

	*ppos += 1;
	return 1;
}

static struct proc_ops options = {
	.proc_read = procfile_read,
	.proc_write = 0,
};

static int __init hello_init(void) {
	pf = proc_create(PROC_FILENAME, 0444, 0, &options);

	if (pf == 0) {
		printk(KERN_ALERT "Hello proc module cannot open /proc/%s!\n ", PROC_FILENAME);
	}

	printk(KERN_INFO "Hello proc module installed, check file /proc/%s!\n ", PROC_FILENAME);

	return 0; // 0 - module loaded; otherwise, loading error
}

static void __exit hello_exit(void) {
	if (pf != 0) {
		proc_remove(pf);
	}

	printk(KERN_INFO "Hello module removed.\n ");
}

module_init(hello_init);
module_exit(hello_exit);