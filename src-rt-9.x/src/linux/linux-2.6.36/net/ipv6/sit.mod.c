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
	{ 0x209e6fe1, "xfrm4_tunnel_register" },
	{ 0x7ba11041, "register_pernet_device" },
	{ 0x60a13e90, "rcu_barrier" },
	{ 0xa52da819, "unregister_pernet_device" },
	{ 0x76869878, "xfrm4_tunnel_deregister" },
	{ 0x3b58723f, "__pskb_pull_tail" },
	{ 0x55ca3706, "ipv6_chk_prefix" },
	{ 0xbfdf8195, "icmp_send" },
	{ 0x906690fb, "__secpath_destroy" },
	{ 0x6e5abce2, "netif_rx" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0xbc10dd97, "__put_user_4" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x67c2fa54, "__copy_to_user" },
	{ 0x500e7235, "netdev_state_change" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0x7dceceac, "capable" },
	{ 0x73e20c1c, "strlcpy" },
	{ 0x2a1e65d4, "register_netdevice" },
	{ 0xc403124c, "dev_alloc_name" },
	{ 0x349cba85, "strchr" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xd955888, "register_netdev" },
	{ 0xe914e41e, "strcpy" },
	{ 0x2e21f417, "alloc_netdev_mq" },
	{ 0x9d669763, "memcpy" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xa9e21ecc, "sock_wfree" },
	{ 0x7d11c268, "jiffies" },
	{ 0x2a18c74, "nf_conntrack_destroy" },
	{ 0xa0f61731, "__ip_select_ident" },
	{ 0x54ac18d5, "icmpv6_send" },
	{ 0x43f7ce35, "ip_local_out" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xea364e7, "skb_push" },
	{ 0xc5742086, "skb_realloc_headroom" },
	{ 0x71c90087, "memcmp" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0xd542439, "__ipv6_addr_type" },
	{ 0xc1ae8655, "consume_skb" },
	{ 0x6b2dc060, "dump_stack" },
	{ 0xea147363, "printk" },
	{ 0x1251d30f, "call_rcu" },
	{ 0x85670f1d, "rtnl_is_locked" },
	{ 0x37a0cba, "kfree" },
	{ 0x7fc01577, "init_net" },
	{ 0x40759f10, "__dev_get_by_index" },
	{ 0x7df1523, "dst_release" },
	{ 0x33495335, "ip_route_output_key" },
	{ 0x5f754e5a, "memset" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xc27487dd, "__bug" },
	{ 0x6e720ff2, "rtnl_unlock" },
	{ 0x9fdecc31, "unregister_netdevice_many" },
	{ 0xc7a4fbed, "rtnl_lock" },
	{ 0xdc5ae40f, "unregister_netdevice_queue" },
	{ 0x1a3a1d3c, "free_netdev" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=tunnel4";


MODULE_INFO(srcversion, "F3F7F14CB29AE9C17501EE5");
