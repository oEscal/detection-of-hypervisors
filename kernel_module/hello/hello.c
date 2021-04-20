#include <linux/module.h>		// Required bu all kernel modules
#include <linux/kernel.h>		// Required by printk
#include <linux/init.h>			// Required for __init and __exit macros

MODULE_LICENSE("GPL");
MODULE_AUTHOR("P. Escaleira");
MODULE_DESCRIPTION("An hello module");

static int 
__init hello_init(void) {
	printk(KERN_INFO "Hello module installed!\n");
	return 0;			// 0 - module loaded; otherwise, loading error
}

static void
__exit hello_exit(void) {
	printk(KERN_INFO "Hello module removed.\n");
}

module_init(hello_init);
module_exit(hello_exit);

