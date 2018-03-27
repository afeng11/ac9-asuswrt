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
	{ 0x2a18c74, "nf_conntrack_destroy" },
	{ 0xbfdf8195, "icmp_send" },
	{ 0x3a193735, "dev_queue_xmit" },
	{ 0x6e5abce2, "netif_rx" },
	{ 0x7ce348f, "dev_get_by_name" },
	{ 0x28d4fffd, "skb_copy" },
	{ 0x7fc01577, "init_net" },
	{ 0x7df1523, "dst_release" },
	{ 0x33495335, "ip_route_output_key" },
	{ 0x5f754e5a, "memset" },
	{ 0xa9e21ecc, "sock_wfree" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xc5742086, "skb_realloc_headroom" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0xea364e7, "skb_push" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x9d669763, "memcpy" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "07A8196F932B6DAE470EF31");
