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
	{ 0x810ea72f, "netdev_info" },
	{ 0x6b973f09, "mii_ethtool_gset" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xa90c928a, "param_ops_int" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xd8f795ca, "del_timer" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0x79aa04a2, "get_random_bytes" },
	{ 0xa8cde9a7, "remove_wait_queue" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0x11f7ed4c, "hex_to_bin" },
	{ 0x8949858b, "schedule_work" },
	{ 0x1656a7f1, "netif_carrier_off" },
	{ 0x278f5ac8, "usb_kill_urb" },
	{ 0x74c86cc0, "init_timer_key" },
	{ 0xf8a59dda, "usb_get_urb" },
	{ 0x5e70bcee, "usb_unlink_urb" },
	{ 0x7d11c268, "jiffies" },
	{ 0x6e5abce2, "netif_rx" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xffd5a395, "default_wake_function" },
	{ 0xe707d823, "__aeabi_uidiv" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x1e3d1824, "skb_queue_purge" },
	{ 0x398c9e69, "alloc_etherdev_mq" },
	{ 0x8da5091a, "usb_string" },
	{ 0x6f95b2b, "mii_nway_restart" },
	{ 0xdc798d37, "__mutex_init" },
	{ 0xb2f6b7ee, "ethtool_op_get_link" },
	{ 0xc2a96373, "usb_set_interface" },
	{ 0x1a3a1d3c, "free_netdev" },
	{ 0xfaef0ed, "__tasklet_schedule" },
	{ 0xd955888, "register_netdev" },
	{ 0x73e20c1c, "strlcpy" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0x9a6221c5, "mod_timer" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x568ce846, "dev_kfree_skb_any" },
	{ 0x82072614, "tasklet_kill" },
	{ 0x7f067365, "skb_queue_tail" },
	{ 0xa6f1b546, "netif_device_attach" },
	{ 0xbd1ec043, "usb_submit_urb" },
	{ 0x65750173, "netif_device_detach" },
	{ 0x35a3c819, "__alloc_skb" },
	{ 0xf1cc4277, "usb_get_dev" },
	{ 0x3bd1b1f6, "msecs_to_jiffies" },
	{ 0x633a3f90, "usb_put_dev" },
	{ 0xd62c833f, "schedule_timeout" },
	{ 0x11d3249c, "usb_clear_halt" },
	{ 0xe2e78bc2, "eth_type_trans" },
	{ 0xc27487dd, "__bug" },
	{ 0xf407d33, "netdev_err" },
	{ 0xb9e52429, "__wake_up" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0x8dcbbf1b, "eth_validate_addr" },
	{ 0xfe634f58, "add_wait_queue" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x801678, "flush_scheduled_work" },
	{ 0x63be0a58, "skb_dequeue" },
	{ 0x878d3bd0, "unregister_netdev" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x701d0ebd, "snprintf" },
	{ 0x7d79282a, "mii_link_ok" },
	{ 0xc5561774, "__netif_schedule" },
	{ 0xc1ae8655, "consume_skb" },
	{ 0xdc6a3522, "skb_put" },
	{ 0x5582c82b, "eth_mac_addr" },
	{ 0xf17f160e, "dev_get_drvdata" },
	{ 0x4acc733d, "usb_free_urb" },
	{ 0x5946a659, "mii_ethtool_sset" },
	{ 0xe9bfc2b8, "usb_alloc_urb" },
	{ 0xe914e41e, "strcpy" },
	{ 0x313341a3, "_set_bit_le" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=mii,usbcore";


MODULE_INFO(srcversion, "F9D951F4E411A8EDB2111E0");
