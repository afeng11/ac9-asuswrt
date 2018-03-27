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
	{ 0xc2cdbf1, "synchronize_sched" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x90cb71ee, "nat_q931_hook" },
	{ 0xcb460152, "nat_callforwarding_hook" },
	{ 0x219e8f17, "nat_h245_hook" },
	{ 0x7b428b73, "nat_t120_hook" },
	{ 0x8a1178c6, "nat_rtp_rtcp_hook" },
	{ 0x1dc4cc53, "set_ras_addr_hook" },
	{ 0x56312766, "set_sig_addr_hook" },
	{ 0xe1450101, "set_h225_addr_hook" },
	{ 0x7a63a44a, "set_h245_addr_hook" },
	{ 0xb8151ecc, "nf_ct_unexpect_related" },
	{ 0x80387a1b, "get_h225_addr" },
	{ 0x4a97e2b3, "nf_ct_expect_related_report" },
	{ 0xea147363, "printk" },
	{ 0x158a64, "skb_copy_bits" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0x1d1d7e59, "__nf_nat_mangle_tcp_packet" },
	{ 0x1474e1d1, "nf_nat_mangle_udp_packet" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xc27487dd, "__bug" },
	{ 0x5cd9734d, "nf_nat_follow_master" },
	{ 0x6903595, "nf_nat_setup_info" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=nf_conntrack_h323";


MODULE_INFO(srcversion, "AD1DC1ED755807AA042D5CA");
