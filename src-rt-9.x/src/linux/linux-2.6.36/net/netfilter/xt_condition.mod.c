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
	{ 0x13095525, "param_ops_uint" },
	{ 0x677bb305, "param_ops_bool" },
	{ 0x7fc01577, "init_net" },
	{ 0xe89b2c87, "xt_unregister_match" },
	{ 0xfc69ce50, "xt_register_match" },
	{ 0xa06d909b, "proc_mkdir" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xfebf995, "outer_cache" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0xcffb6db, "create_proc_entry" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x48a0f939, "mutex_lock_interruptible" },
	{ 0x37a0cba, "kfree" },
	{ 0x609f1c7e, "synchronize_net" },
	{ 0xb5298c76, "remove_proc_entry" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0xe2d5255a, "strcmp" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x28118cb6, "__get_user_1" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "DC458BC243C2D35F18055FA");
