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
	{ 0xabd62a81, "usb_deregister" },
	{ 0x67b27ec1, "tty_std_termios" },
	{ 0x432e5eff, "put_tty_driver" },
	{ 0x6e10f45a, "tty_unregister_driver" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0xbdc666a, "tty_register_driver" },
	{ 0x30c94b76, "tty_set_operations" },
	{ 0xf04e93d6, "alloc_tty_driver" },
	{ 0xc8b57c27, "autoremove_wake_function" },
	{ 0x8893fa5d, "finish_wait" },
	{ 0xd62c833f, "schedule_timeout" },
	{ 0x75a17bed, "prepare_to_wait" },
	{ 0x71c90087, "memcmp" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x566b539b, "tty_register_device" },
	{ 0x87287226, "usb_get_intf" },
	{ 0x86b053a7, "usb_driver_claim_interface" },
	{ 0xfd61c9ad, "_dev_info" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x68faad7a, "device_create_file" },
	{ 0xe9bfc2b8, "usb_alloc_urb" },
	{ 0x13b43aea, "usb_alloc_coherent" },
	{ 0xdc798d37, "__mutex_init" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0xce5709f, "usb_ifnum_to_if" },
	{ 0xb36a11e3, "dev_err" },
	{ 0xba897ddd, "usb_control_msg" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xfaef0ed, "__tasklet_schedule" },
	{ 0x8016972d, "tty_insert_flip_string_fixed_flag" },
	{ 0xf36d2c19, "tty_flip_buffer_push" },
	{ 0xda3c51ca, "tty_buffer_request_room" },
	{ 0xdd4e18b1, "tty_wakeup" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x8949858b, "schedule_work" },
	{ 0xb9e52429, "__wake_up" },
	{ 0xea147363, "printk" },
	{ 0xbd1ec043, "usb_submit_urb" },
	{ 0x75b2c273, "tty_hangup" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x302187c6, "usb_driver_release_interface" },
	{ 0x933740ca, "cancel_work_sync" },
	{ 0x278f5ac8, "usb_kill_urb" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0x531380ff, "device_remove_file" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x37a0cba, "kfree" },
	{ 0x4acc733d, "usb_free_urb" },
	{ 0x29192b58, "usb_put_intf" },
	{ 0x85a3c408, "tty_unregister_device" },
	{ 0x9d669763, "memcpy" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xf17f160e, "dev_get_drvdata" },
	{ 0x6c495075, "usb_free_coherent" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbcore";

MODULE_ALIAS("usb:v0870p0001d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0E8Dp0003d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0482p0203d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v079Bp000Fd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0ACEp1608d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0ACEp1611d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v22B8p7000d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0803p3095d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0572p1321d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v22B8p6425d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc02ip00*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc02ip01*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc02ip02*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc02ip03*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc02ip04*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc02ip05*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc02ip06*");

MODULE_INFO(srcversion, "B50CE3B00BCFBB1552558B6");
