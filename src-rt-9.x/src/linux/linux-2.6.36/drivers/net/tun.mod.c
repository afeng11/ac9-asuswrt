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
	{ 0x2a1e65d4, "register_netdevice" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x796b0811, "sock_init_data" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0xf4de2064, "sk_filter" },
	{ 0x349cba85, "strchr" },
	{ 0x67c2fa54, "__copy_to_user" },
	{ 0xd8a2ab95, "in_egroup_p" },
	{ 0x79aa04a2, "get_random_bytes" },
	{ 0xa8cde9a7, "remove_wait_queue" },
	{ 0xc7a4fbed, "rtnl_lock" },
	{ 0xa064b6a3, "no_llseek" },
	{ 0x42fa1624, "netif_carrier_on" },
	{ 0x1656a7f1, "netif_carrier_off" },
	{ 0xb02bfb34, "sock_alloc_send_pskb" },
	{ 0xa43b9539, "memcpy_fromiovecend" },
	{ 0xced593e2, "sk_detach_filter" },
	{ 0xe2db674a, "skb_partial_csum_set" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xffd5a395, "default_wake_function" },
	{ 0xa4adb9ac, "__f_setown" },
	{ 0xb14cd0e3, "misc_register" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x1e3d1824, "skb_queue_purge" },
	{ 0x5f754e5a, "memset" },
	{ 0xdeac7167, "netif_rx_ni" },
	{ 0x54598d63, "dev_set_mac_address" },
	{ 0xe9d14b6d, "sk_alloc" },
	{ 0xea147363, "printk" },
	{ 0xb2f6b7ee, "ethtool_op_get_link" },
	{ 0x1a3a1d3c, "free_netdev" },
	{ 0x9e2000a7, "memcpy_toiovecend" },
	{ 0xce911c18, "fasync_helper" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0xa34f1ef5, "crc32_le" },
	{ 0xe43343e6, "skb_copy_datagram_const_iovec" },
	{ 0x9661c5d4, "sk_free" },
	{ 0x2ae8c8d2, "sk_attach_filter" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x184b15a0, "rtnl_link_unregister" },
	{ 0x68faad7a, "device_create_file" },
	{ 0x4059792f, "print_hex_dump" },
	{ 0x7f067365, "skb_queue_tail" },
	{ 0x7dceceac, "capable" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0x4ff5ae9f, "__wake_up_sync_key" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0xbc10dd97, "__put_user_4" },
	{ 0x2e21f417, "alloc_netdev_mq" },
	{ 0x1000e51, "schedule" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0xc489a506, "do_sync_read" },
	{ 0x6b2dc060, "dump_stack" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0xe2e78bc2, "eth_type_trans" },
	{ 0xe3b2c9b7, "netdev_features_change" },
	{ 0x4479e584, "ether_setup" },
	{ 0xbb40c37, "__dev_get_by_name" },
	{ 0xfaf98462, "bitrev32" },
	{ 0xdc5ae40f, "unregister_netdevice_queue" },
	{ 0xb9e52429, "__wake_up" },
	{ 0x8dcbbf1b, "eth_validate_addr" },
	{ 0xfe634f58, "add_wait_queue" },
	{ 0x37a0cba, "kfree" },
	{ 0x2490fe75, "do_sync_write" },
	{ 0x9d669763, "memcpy" },
	{ 0xc403124c, "dev_alloc_name" },
	{ 0xb955ca22, "rtnl_link_register" },
	{ 0x7147c2d, "kill_fasync" },
	{ 0x63be0a58, "skb_dequeue" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xc5561774, "__netif_schedule" },
	{ 0xbf8e3b2, "skb_copy_datagram_from_iovec" },
	{ 0x85670f1d, "rtnl_is_locked" },
	{ 0xdc6a3522, "skb_put" },
	{ 0x5582c82b, "eth_mac_addr" },
	{ 0xfebf995, "outer_cache" },
	{ 0x887b22ac, "misc_deregister" },
	{ 0x6e720ff2, "rtnl_unlock" },
	{ 0xe914e41e, "strcpy" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "E4EB8D926473EA87A34CEFA");
