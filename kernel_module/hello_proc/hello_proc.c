#include <linux/module.h>				// Required by all kernel modules
#include <linux/kernel.h>				// Required by printk
#include <linux/init.h>					// Required for __init and __exit macros
#include <linux/proc_fs.h>				// Required for accessing the /proc file system
#include <linux/uaccess.h>				// Required for accessing the copy_to_user function
#include <linux/seq_file.h>

#define PROC_FILENAME "hello_proc"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("P. Escaleira");
MODULE_DESCRIPTION("An hello module");

static struct proc_dir_entry *pf = 0;

static ssize_t
procfile_read(struct file * file, char __user * ubuf, size_t count, loff_t * ppos) {
   char * filedata = " You can produce the sound of two hands clapping.Now, how does one hand sound?\n Zen question\n";
   printk(KERN_INFO "procread called on /proc/%s!\n", PROC_FILENAME);
   // Lets play with the offset (ppos) just for fun! 

   if (*ppos > strlen(filedata)) return 0;
   
   if(copy_to_user(ubuf, filedata + *ppos, 1))           // Returns the number of bytes that could not be coppied 
      return -EFAULT;
      
   * ppos += 1;
   return 1;
}

static struct proc_ops options = {
	.proc_read = procfile_read,
	.proc_write = 0,
};

static int
__init hello_init(void){
   pf = proc_create(PROC_FILENAME, 0444 , 0, &options);
   
   if (pf == 0) {
      printk(KERN_ALERT "Hello proc module cannot open /proc/%s!\n ", PROC_FILENAME );
   }
   
   printk(KERN_INFO "Hello proc module installed, check file /proc/%s!\n " , PROC_FILENAME );
  
   return 0;                                              // 0 - module loaded; otherwise, loading error
}

static void
__exit hello_exit(void){
   if (pf != 0) {
      proc_remove(pf);
   }

   printk(KERN_INFO "Hello module removed.\n ");
}

module_init(hello_init);
module_exit(hello_exit);

