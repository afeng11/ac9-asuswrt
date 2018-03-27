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
	{ 0xe7bf1b36, "nf_unregister_hooks" },
	{ 0x3994d878, "unregister_pernet_subsys" },
	{ 0x5b52eda9, "nf_register_hooks" },
	{ 0xe7186020, "register_pernet_subsys" },
	{ 0x98c11978, "ebt_do_table" },
	{ 0x7fc01577, "init_net" },
	{ 0x7486253e, "ebt_register_table" },
	{ 0x171dcd30, "ebt_unregister_table" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=ebtables";


MODULE_INFO(srcversion, "B4C0871039D8E03070DE63B");
