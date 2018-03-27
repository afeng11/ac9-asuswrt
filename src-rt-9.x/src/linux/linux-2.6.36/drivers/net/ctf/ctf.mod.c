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
	{ 0xfaa578fe, "kcih" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x1e33e00, "getintvar" },
	{ 0xb85ff2a8, "osl_mfree" },
	{ 0xfb5f4ca1, "osl_pktfree" },
	{ 0x2305923a, "skb_clone" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0x7d11c268, "jiffies" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x764879d, "netlink_kernel_create" },
	{ 0xea147363, "printk" },
	{ 0x71c90087, "memcmp" },
	{ 0xbdf539f1, "netlink_kernel_release" },
	{ 0x328a05f1, "strncpy" },
	{ 0xea364e7, "skb_push" },
	{ 0x6dbcafc9, "ctf_attach_fn" },
	{ 0xe575f028, "netlink_unicast" },
	{ 0x4ba1611f, "skb_pull" },
	{ 0x157bbdae, "vlan_txstats_upd" },
	{ 0x7fc01577, "init_net" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xd7511a8e, "osl_ctfpool_stats" },
	{ 0x2ee239d8, "vlan_rxstats_upd" },
	{ 0x2b7ea367, "ppp_rxstats_upd" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x5c20b2f6, "osl_pkt_frmnative" },
	{ 0x78c1ab7, "bcm_bprintf" },
	{ 0x9d669763, "memcpy" },
	{ 0xea0b360b, "ppp_txstats_upd" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x58c774ac, "osl_malloc" },
	{ 0xe113bbbc, "csum_partial" },
	{ 0x98eb4a41, "bcm_ether_ntoa" },
	{ 0x3a193735, "dev_queue_xmit" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

