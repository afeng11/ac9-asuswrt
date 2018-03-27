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
	{ 0x5b9c8278, "nf_ct_remove_expectations" },
	{ 0xb8151ecc, "nf_ct_unexpect_related" },
	{ 0xa90c928a, "param_ops_int" },
	{ 0xf15abbd3, "nf_conntrack_helper_register" },
	{ 0xd8f795ca, "del_timer" },
	{ 0x17695141, "__nf_ct_refresh_acct" },
	{ 0xed67432c, "nf_conntrack_helper_unregister" },
	{ 0x7df1523, "dst_release" },
	{ 0x6802f62d, "nf_ct_expect_init" },
	{ 0x677bb305, "param_ops_bool" },
	{ 0x7d11c268, "jiffies" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xea147363, "printk" },
	{ 0x71c90087, "memcmp" },
	{ 0xd2a6efbd, "nf_ct_expect_put" },
	{ 0x690c2376, "nf_ct_expect_alloc" },
	{ 0x4a97e2b3, "nf_ct_expect_related_report" },
	{ 0x8cfc414e, "add_timer" },
	{ 0x7fc01577, "init_net" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xda4ffd9e, "__nf_ct_expect_find" },
	{ 0x93fca811, "__get_free_pages" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0xc27487dd, "__bug" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0x71616ce8, "nf_afinfo" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x13095525, "param_ops_uint" },
	{ 0x158a64, "skb_copy_bits" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "101994DDED57B8FBEEAB17F");
