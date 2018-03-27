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
	{ 0xed7cfbce, "unregister_qdisc" },
	{ 0x43f8b1bc, "register_qdisc" },
	{ 0x365891, "qdisc_calculate_pkt_len" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0x69700697, "qdisc_watchdog_schedule" },
	{ 0x68bb5f7a, "qdisc_watchdog_init" },
	{ 0xa57afc74, "ktime_get" },
	{ 0xe2017ff8, "qdisc_watchdog_cancel" },
	{ 0x52523f8, "bfifo_qdisc_ops" },
	{ 0xe2baa4f1, "fifo_create_dflt" },
	{ 0xbd2483e8, "qdisc_destroy" },
	{ 0x16b78057, "fifo_set_limit" },
	{ 0x9cb96e92, "qdisc_put_rtab" },
	{ 0xb6a61a86, "qdisc_get_rtab" },
	{ 0xa58b6804, "nla_parse" },
	{ 0x94c43b8f, "skb_trim" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xf853ed51, "nla_put" },
	{ 0xff73610b, "noop_qdisc" },
	{ 0x6b2dc060, "dump_stack" },
	{ 0xea147363, "printk" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x8da03f7c, "qdisc_reset" },
	{ 0x8d0eff00, "qdisc_tree_decrease_qlen" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0x85670f1d, "rtnl_is_locked" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "4D35EFBE24C8611C7AF0186");
