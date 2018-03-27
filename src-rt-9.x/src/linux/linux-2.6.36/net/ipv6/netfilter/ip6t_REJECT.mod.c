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
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x7fc01577, "init_net" },
	{ 0xc27487dd, "__bug" },
	{ 0x7df1523, "dst_release" },
	{ 0x54ac18d5, "icmpv6_send" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0xc603e2ac, "ip6_local_out" },
	{ 0x9e053bdf, "nf_ct_attach" },
	{ 0xe113bbbc, "csum_partial" },
	{ 0xdc6a3522, "skb_put" },
	{ 0x35a3c819, "__alloc_skb" },
	{ 0x427d00a7, "xfrm_lookup" },
	{ 0x12079131, "ip6_route_output" },
	{ 0x9d669763, "memcpy" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x44da5d0f, "__csum_ipv6_magic" },
	{ 0xfd05b36, "skb_checksum" },
	{ 0x158a64, "skb_copy_bits" },
	{ 0x78bcae5, "ipv6_skip_exthdr" },
	{ 0xd542439, "__ipv6_addr_type" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xea147363, "printk" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "B1C8D0CEA96ED1F844A4175");
