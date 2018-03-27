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
	{ 0x677bb305, "param_ops_bool" },
	{ 0x7f2e925b, "xt_hook_unlink" },
	{ 0x3994d878, "unregister_pernet_subsys" },
	{ 0x9bb8ec96, "xt_hook_link" },
	{ 0xe7186020, "register_pernet_subsys" },
	{ 0xea147363, "printk" },
	{ 0xfc9d4b48, "ip6t_do_table" },
	{ 0x7fc01577, "init_net" },
	{ 0x37a0cba, "kfree" },
	{ 0x4bcf5775, "ip6t_register_table" },
	{ 0xeff4f721, "ip6t_alloc_initial_table" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xb34fb15c, "ip6t_unregister_table" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "FCE863EAE11B2414E171C6A");
