#include <linux/module.h>				// Required by all kernel modules
#include <linux/kernel.h>				// Required by printk
#include <linux/init.h>					// Required for __init and __exit macros
#include <linux/proc_fs.h>				// Required for accessing the /proc file system
#include <linux/uaccess.h>				// Required for accessing the copy_to_user function
#include <linux/seq_file.h>

#define PROC_FILENAME "hello_proc"
#define NUMBER_RUNS 1

MODULE_LICENSE("GPL");
MODULE_AUTHOR("P. Escaleira");
MODULE_DESCRIPTION("An hello module");


static struct proc_dir_entry * pf = 0;

static void cpu(void) {
	int eax, ebx, ecx, edx;

	asm volatile("movl $0, %%eax\n\tcpuid": "=a"(eax), "=b"(ebx), "=c"(ecx), "=d"(edx));
}

static unsigned long mine_rdtsc(void) {
	unsigned long rax, rcx, rdx;

	asm volatile("rdtscp": "=a"(rax), "=c"(rcx), "=d"(rdx));
	return (rdx << 32) + rax;
}

static unsigned long result;
static ssize_t procfile_read(struct file * file, char __user * ubuf, size_t count, loff_t * ppos) {
	unsigned long t0;

	printk(KERN_INFO "%ld\n", result);
	if (*ppos >= NUMBER_RUNS*4)
		return 0;

	if (*ppos % 4 == 0) {
		t0 = mine_rdtsc();
        	cpu();
	        result = mine_rdtsc() - t0;
	}
	char *res = (char *) &result;
	if (copy_to_user(ubuf, res + (*ppos % 4), 1)) // Returns the number of bytes that could not be coppied
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
