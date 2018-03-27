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
	{ 0xff4e97b5, "xt_unregister_target" },
	{ 0x7f3353cb, "xt_register_target" },
	{ 0x9d669763, "memcpy" },
	{ 0xbf38a7da, "skb_make_writable" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xe2d5255a, "strcmp" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "C167C6E08CB823DD99D3005");
