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
	{ 0xf9a482f9, "msleep" },
	{ 0x4cb17b7f, "netlink_has_listeners" },
	{ 0xfee59c3, "single_open" },
	{ 0x2274fe5, "__alloc_workqueue_key" },
	{ 0xc8b57c27, "autoremove_wake_function" },
	{ 0x1f0761c3, "single_release" },
	{ 0x8949858b, "schedule_work" },
	{ 0x170ec140, "seq_printf" },
	{ 0x802be255, "queue_work" },
	{ 0xeb8853ee, "seq_read" },
	{ 0x6cb1bc28, "proc_net_fops_create" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x764879d, "netlink_kernel_create" },
	{ 0xea147363, "printk" },
	{ 0x6d9bf85, "proc_net_remove" },
	{ 0xbdf539f1, "netlink_kernel_release" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0x85740c04, "destroy_workqueue" },
	{ 0x7fc01577, "init_net" },
	{ 0xc3b16eb1, "flush_workqueue" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x35a3c819, "__alloc_skb" },
	{ 0x254496af, "netlink_broadcast" },
	{ 0xd62c833f, "schedule_timeout" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x50e36691, "seq_lseek" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x801678, "flush_scheduled_work" },
	{ 0x75a17bed, "prepare_to_wait" },
	{ 0x8893fa5d, "finish_wait" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x701d0ebd, "snprintf" },
	{ 0xdc6a3522, "skb_put" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "8FE43164E7137A472CE3610");
