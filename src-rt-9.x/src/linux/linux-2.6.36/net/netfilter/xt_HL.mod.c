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
	{ 0xb015467, "xt_unregister_targets" },
	{ 0x71a1979, "xt_register_targets" },
	{ 0xe113bbbc, "csum_partial" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xbf38a7da, "skb_make_writable" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xea147363, "printk" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "7E560229B5D12311DC22AFC");
