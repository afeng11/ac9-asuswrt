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
	{ 0x95f45ba0, "nf_nat_sdp_media_hook" },
	{ 0x1daf9efc, "nf_nat_sdp_session_hook" },
	{ 0xf8b6f5db, "nf_nat_sdp_port_hook" },
	{ 0x774fa030, "nf_nat_sdp_addr_hook" },
	{ 0x54a47dd1, "nf_nat_sip_expect_hook" },
	{ 0xf9bd0b6e, "nf_nat_sip_seq_adjust_hook" },
	{ 0xf73528b2, "nf_nat_sip_hook" },
	{ 0xc2cdbf1, "synchronize_sched" },
	{ 0xdc8848af, "ct_sip_parse_request" },
	{ 0x801e92e9, "ct_sip_parse_numerical_param" },
	{ 0x12ed7078, "ct_sip_parse_address_param" },
	{ 0x4e830a3e, "strnicmp" },
	{ 0xea77fd60, "ct_sip_parse_header_uri" },
	{ 0xd20e5c24, "nf_nat_set_seq_adjust" },
	{ 0xcea16521, "ct_sip_get_header" },
	{ 0x97255bdf, "strlen" },
	{ 0xb8151ecc, "nf_ct_unexpect_related" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0x4a97e2b3, "nf_ct_expect_related_report" },
	{ 0xd277e43c, "ct_sip_get_sdp_header" },
	{ 0x1d1d7e59, "__nf_nat_mangle_tcp_packet" },
	{ 0x1474e1d1, "nf_nat_mangle_udp_packet" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xc27487dd, "__bug" },
	{ 0x6903595, "nf_nat_setup_info" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=nf_conntrack_sip";


MODULE_INFO(srcversion, "C69CDC88742158CFEDBCC3E");
