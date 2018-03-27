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
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0x67c2fa54, "__copy_to_user" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xc8b57c27, "autoremove_wake_function" },
	{ 0x8949858b, "schedule_work" },
	{ 0x933740ca, "cancel_work_sync" },
	{ 0x278f5ac8, "usb_kill_urb" },
	{ 0xcf969b0a, "usb_deregister_dev" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xb36a11e3, "dev_err" },
	{ 0xabd62a81, "usb_deregister" },
	{ 0x48a0f939, "mutex_lock_interruptible" },
	{ 0xdc798d37, "__mutex_init" },
	{ 0x8ddccb12, "usb_register_dev" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xfd61c9ad, "_dev_info" },
	{ 0xbd1ec043, "usb_submit_urb" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x1000e51, "schedule" },
	{ 0xb9e52429, "__wake_up" },
	{ 0x37a0cba, "kfree" },
	{ 0x75a17bed, "prepare_to_wait" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0x8893fa5d, "finish_wait" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x99bb8806, "memmove" },
	{ 0x4acc733d, "usb_free_urb" },
	{ 0xe9bfc2b8, "usb_alloc_urb" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbcore";

MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc09ip*");

MODULE_INFO(srcversion, "6DA49E63F5760F2A989087E");
