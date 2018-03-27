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
	{ 0x9b8503d3, "kmem_cache_destroy" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xc8b57c27, "autoremove_wake_function" },
	{ 0xea147363, "printk" },
	{ 0x82d79b51, "sysctl_vfs_cache_pressure" },
	{ 0x63db125c, "kmem_cache_free" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0xaa818ca3, "unregister_shrinker" },
	{ 0x1000e51, "schedule" },
	{ 0xa3c8af26, "kmem_cache_create" },
	{ 0xb9e52429, "__wake_up" },
	{ 0x37a0cba, "kfree" },
	{ 0x75a17bed, "prepare_to_wait" },
	{ 0x19f428cb, "register_shrinker" },
	{ 0x8893fa5d, "finish_wait" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "EEE8AA590F362EDB428F0C7");
