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
	{ 0xb8151ecc, "nf_ct_unexpect_related" },
	{ 0xa90c928a, "param_ops_int" },
	{ 0xf15abbd3, "nf_conntrack_helper_register" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xd8f795ca, "del_timer" },
	{ 0x97255bdf, "strlen" },
	{ 0x17695141, "__nf_ct_refresh_acct" },
	{ 0xed67432c, "nf_conntrack_helper_unregister" },
	{ 0x20000329, "simple_strtoul" },
	{ 0x6802f62d, "nf_ct_expect_init" },
	{ 0x4e830a3e, "strnicmp" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0x7d11c268, "jiffies" },
	{ 0x27db7e69, "nf_ct_unlink_expect" },
	{ 0x3b58723f, "__pskb_pull_tail" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x11089ac7, "_ctype" },
	{ 0xea147363, "printk" },
	{ 0xd2a6efbd, "nf_ct_expect_put" },
	{ 0x690c2376, "nf_ct_expect_alloc" },
	{ 0x84b183ae, "strncmp" },
	{ 0x4a97e2b3, "nf_ct_expect_related_report" },
	{ 0x8cfc414e, "add_timer" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x7fc01577, "init_net" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xda4ffd9e, "__nf_ct_expect_find" },
	{ 0xaccabc6a, "in4_pton" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0xc27487dd, "__bug" },
	{ 0x9d669763, "memcpy" },
	{ 0xd1329880, "param_array_ops" },
	{ 0xe57878a1, "in6_pton" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x73b164d, "param_ops_ushort" },
	{ 0x13095525, "param_ops_uint" },
	{ 0x158a64, "skb_copy_bits" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "0F10A9ADA3C98D2F44A7761");
