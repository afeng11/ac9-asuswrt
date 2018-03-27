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
	{ 0x6d6cbadc, "rb_last" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0x365891, "qdisc_calculate_pkt_len" },
	{ 0x80456615, "tc_classify" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0x69700697, "qdisc_watchdog_schedule" },
	{ 0xbdf5c25c, "rb_next" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x26911e4d, "gen_new_estimator" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x821e8d91, "gen_replace_estimator" },
	{ 0xa57afc74, "ktime_get" },
	{ 0xa58b6804, "nla_parse" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xfbe27a1c, "rb_first" },
	{ 0xc27487dd, "__bug" },
	{ 0x6bdcfd99, "qdisc_class_hash_remove" },
	{ 0x8d0eff00, "qdisc_tree_decrease_qlen" },
	{ 0xff73610b, "noop_qdisc" },
	{ 0x64a23805, "pfifo_qdisc_ops" },
	{ 0x68bb5f7a, "qdisc_watchdog_init" },
	{ 0x1809baf2, "qdisc_class_hash_grow" },
	{ 0xa04a01bd, "qdisc_class_hash_insert" },
	{ 0x80776a1f, "qdisc_create_dflt" },
	{ 0x117093be, "qdisc_class_hash_init" },
	{ 0x8da03f7c, "qdisc_reset" },
	{ 0xe2017ff8, "qdisc_watchdog_cancel" },
	{ 0xf53d4c26, "qdisc_class_hash_destroy" },
	{ 0x37a0cba, "kfree" },
	{ 0xac6855b0, "gen_kill_estimator" },
	{ 0xbd2483e8, "qdisc_destroy" },
	{ 0xb78df845, "tcf_destroy_chain" },
	{ 0xa6dcc773, "rb_insert_color" },
	{ 0xc0580937, "rb_erase" },
	{ 0x492ac4e, "qdisc_warn_nonwc" },
	{ 0x6b2dc060, "dump_stack" },
	{ 0xea147363, "printk" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0x85670f1d, "rtnl_is_locked" },
	{ 0x94c43b8f, "skb_trim" },
	{ 0x59e5070d, "__do_div64" },
	{ 0xf853ed51, "nla_put" },
	{ 0xc36080ad, "gnet_stats_copy_app" },
	{ 0x4508b7, "gnet_stats_copy_queue" },
	{ 0xa3eea8e, "gnet_stats_copy_rate_est" },
	{ 0x450a90d9, "gnet_stats_copy_basic" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "7CC6828045ADD724C55EA6E");
