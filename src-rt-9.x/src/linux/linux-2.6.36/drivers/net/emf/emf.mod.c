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
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x1a2f395c, "osl_pktdup" },
	{ 0x97255bdf, "strlen" },
	{ 0xb85ff2a8, "osl_mfree" },
	{ 0xfb5f4ca1, "osl_pktfree" },
	{ 0x7ce348f, "dev_get_by_name" },
	{ 0x2305923a, "skb_clone" },
	{ 0xb5298c76, "remove_proc_entry" },
	{ 0xa284c9d4, "nf_register_hook" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xe2d5255a, "strcmp" },
	{ 0x6e5abce2, "netif_rx" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x764879d, "netlink_kernel_create" },
	{ 0xa06d909b, "proc_mkdir" },
	{ 0xea147363, "printk" },
	{ 0xbdf539f1, "netlink_kernel_release" },
	{ 0x328a05f1, "strncpy" },
	{ 0x8468a9c1, "osl_attach" },
	{ 0x84b183ae, "strncmp" },
	{ 0xea364e7, "skb_push" },
	{ 0xe575f028, "netlink_unicast" },
	{ 0x7fc01577, "init_net" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0xc27487dd, "__bug" },
	{ 0xcffb6db, "create_proc_entry" },
	{ 0x1ec12ca0, "bcm_binit" },
	{ 0x78c1ab7, "bcm_bprintf" },
	{ 0x52dab5d9, "nf_unregister_hook" },
	{ 0x1eda5758, "osl_detach" },
	{ 0x9d669763, "memcpy" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x58c774ac, "osl_malloc" },
	{ 0xc1ae8655, "consume_skb" },
	{ 0x3a193735, "dev_queue_xmit" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

