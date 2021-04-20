#include <linux/module.h>				// Required by all kernel modules
#include <linux/kernel.h>				// Required by printk
#include <linux/init.h>					// Required for __init and __exit macros
#include <linux/proc_fs.h>				// Required for accessing the /proc file system
#include <linux/uaccess.h>				// Required for accessing the copy_to_user function
#include <linux/seq_file.h>

#define PROC_FILENAME "hello_proc"
#define NUMBER_RUNS 100000

MODULE_LICENSE("GPL");
MODULE_AUTHOR("P. Escaleira");
MODULE_DESCRIPTION("An hello module");


static struct proc_dir_entry * pf = 0;
static unsigned long results[NUMBER_RUNS];

static void cpu(void) {
	int eax, ebx, ecx, edx;

	asm volatile("movl $0, %%eax\n\tcpuid": "=a"(eax), "=b"(ebx), "=c"(ecx), "=d"(edx));
}

static unsigned long mine_rdtsc(void) {
	unsigned long rax, rcx, rdx;

	asm volatile("rdtscp": "=a"(rax), "=c"(rcx), "=d"(rdx));
	return (rdx << 32) + rax;
}

static ssize_t procfile_read(struct file * file, char __user * ubuf, size_t count, loff_t * ppos) {
	printk(KERN_INFO "proc read called on /proc/%s!\n", PROC_FILENAME);

	if (*ppos >= NUMBER_RUNS) 
		return 0;

	if (copy_to_user(ubuf, results + *ppos, 1)) // Returns the number of bytes that could not be coppied
		return -EFAULT;

	*ppos += 1;
	return 1;
}

static struct proc_ops options = {
	.proc_read = procfile_read,
	.proc_write = 0,
};

static int __init hello_init(void) {
	unsigned long t0, t1;
	int i;

	printk(KERN_INFO "Start counting clock cicles\n");
	for (i = 0; i < NUMBER_RUNS; i++) {
		t0 = mine_rdtsc();
		cpu();
		t1 = mine_rdtsc();

		results[i] = t1 - t0;
	}
	printk(KERN_INFO "Done counting clock cicles\n");

	pf = proc_create(PROC_FILENAME, 0444, 0, & options);

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