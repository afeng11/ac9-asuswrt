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
	{ 0x609f1c7e, "synchronize_net" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xbfdf8195, "icmp_send" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x85531f60, "inet_del_protocol" },
	{ 0x3b58723f, "__pskb_pull_tail" },
	{ 0xea147363, "printk" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0xdeba19eb, "inet_add_protocol" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "03044EBD693135FBFE95557");
