#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xdd653daa, "module_layout" },
	{ 0xa90c928a, "param_ops_int" },
	{ 0xabd62a81, "usb_deregister" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0xcffb6db, "create_proc_entry" },
	{ 0xa06d909b, "proc_mkdir" },
	{ 0x8ddccb12, "usb_register_dev" },
	{ 0x68faad7a, "device_create_file" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xdc798d37, "__mutex_init" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x68944016, "usb_find_interface" },
	{ 0x97255bdf, "strlen" },
	{ 0x1e6d26a8, "strstr" },
	{ 0x1000e51, "schedule" },
	{ 0x67c2fa54, "__copy_to_user" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xffd5a395, "default_wake_function" },
	{ 0x6128b5fc, "__printk_ratelimit" },
	{ 0xd62c833f, "schedule_timeout" },
	{ 0x3bd1b1f6, "msecs_to_jiffies" },
	{ 0xa8cde9a7, "remove_wait_queue" },
	{ 0x48a0f939, "mutex_lock_interruptible" },
	{ 0xfe634f58, "add_wait_queue" },
	{ 0xc27487dd, "__bug" },
	{ 0xb36a11e3, "dev_err" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x531380ff, "device_remove_file" },
	{ 0xcf969b0a, "usb_deregister_dev" },
	{ 0x37a0cba, "kfree" },
	{ 0xb5298c76, "remove_proc_entry" },
	{ 0xda1a7335, "kasprintf" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xba897ddd, "usb_control_msg" },
	{ 0xc2a96373, "usb_set_interface" },
	{ 0xee6446bd, "usb_kill_anchored_urbs" },
	{ 0xea147363, "printk" },
	{ 0xb9e52429, "__wake_up" },
	{ 0xf17f160e, "dev_get_drvdata" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x4acc733d, "usb_free_urb" },
	{ 0x37790235, "usb_unanchor_urb" },
	{ 0xbd1ec043, "usb_submit_urb" },
	{ 0xebd10d7d, "usb_anchor_urb" },
	{ 0xe9bfc2b8, "usb_alloc_urb" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbcore";

MODULE_ALIAS("usb:v*p*d*dc07dsc01dp01ic*isc*ip*");
MODULE_ALIAS("usb:v*p*d*dc07dsc01dp02ic*isc*ip*");
MODULE_ALIAS("usb:v*p*d*dc07dsc01dp03ic*isc*ip*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic07isc01ip01*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic07isc01ip02*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic07isc01ip03*");
MODULE_ALIAS("usb:v04B8p0202d*dc*dsc*dp*ic*isc*ip*");

MODULE_INFO(srcversion, "F79FD048C1D155031DBCC0C");
