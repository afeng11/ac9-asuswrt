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
	{ 0x79311e88, "usb_mon_register" },
	{ 0x9b8503d3, "kmem_cache_destroy" },
	{ 0x64e78e65, "cdev_del" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x7666bb90, "cdev_init" },
	{ 0xd5b037e1, "kref_put" },
	{ 0x9b388444, "get_zeroed_page" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0x528c709d, "simple_read_from_buffer" },
	{ 0x67c2fa54, "__copy_to_user" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x3be89d3c, "usb_register_notify" },
	{ 0xa8cde9a7, "remove_wait_queue" },
	{ 0xa064b6a3, "no_llseek" },
	{ 0x319206f7, "device_destroy" },
	{ 0xd5152710, "sg_next" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x7485e15e, "unregister_chrdev_region" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xffd5a395, "default_wake_function" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x5f754e5a, "memset" },
	{ 0xace5c0fc, "usb_bus_list" },
	{ 0xdc798d37, "__mutex_init" },
	{ 0xea147363, "printk" },
	{ 0x62280118, "ddr_phys_offset2_va" },
	{ 0x63db125c, "kmem_cache_free" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0xd482c208, "mem_section" },
	{ 0x315818ab, "coherence_flag" },
	{ 0x61933215, "device_create" },
	{ 0xfed11ed1, "usb_mon_deregister" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xb45efe82, "cdev_add" },
	{ 0xe9587909, "usb_unregister_notify" },
	{ 0xfe107b, "ddr_phys_offset_va" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0xbc10dd97, "__put_user_4" },
	{ 0x1000e51, "schedule" },
	{ 0xa3c8af26, "kmem_cache_create" },
	{ 0x3554cc03, "usb_bus_list_lock" },
	{ 0x4302d0eb, "free_pages" },
	{ 0xb9e52429, "__wake_up" },
	{ 0x1d2e87c6, "do_gettimeofday" },
	{ 0xfe634f58, "add_wait_queue" },
	{ 0x83800bfa, "kref_init" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x9775cdc, "kref_get" },
	{ 0xe8ebf1c5, "class_destroy" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x701d0ebd, "snprintf" },
	{ 0xfebf995, "outer_cache" },
	{ 0xb1a8ec6e, "__class_create" },
	{ 0x29537c9e, "alloc_chrdev_region" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbcore";


MODULE_INFO(srcversion, "9DEE3D9A3D25289DF18C6D5");
