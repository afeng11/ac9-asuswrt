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
	{ 0x54ac18d5, "icmpv6_send" },
	{ 0x28d4fffd, "skb_copy" },
	{ 0x7ce348f, "dev_get_by_name" },
	{ 0x8a0712a5, "nd_tbl" },
	{ 0x7fc01577, "init_net" },
	{ 0x41e49dfe, "neigh_create" },
	{ 0x480a46bb, "neigh_lookup" },
	{ 0x7df1523, "dst_release" },
	{ 0xdbc31634, "rt6_lookup" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0xea364e7, "skb_push" },
	{ 0x9d669763, "memcpy" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xea147363, "printk" },
	{ 0xe2d5255a, "strcmp" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "6973F416062F1452547B551");
