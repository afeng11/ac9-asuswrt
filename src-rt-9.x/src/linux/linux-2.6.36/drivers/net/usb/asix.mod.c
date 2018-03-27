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
	{ 0xd5af09b9, "usbnet_resume" },
	{ 0x99677d54, "usbnet_suspend" },
	{ 0x7ebf69b8, "usbnet_disconnect" },
	{ 0x558520ad, "usbnet_probe" },
	{ 0xc8f91e0f, "usbnet_nway_reset" },
	{ 0xeaca2bba, "usbnet_set_msglevel" },
	{ 0x73290daa, "usbnet_get_msglevel" },
	{ 0x574ce5d8, "usbnet_set_settings" },
	{ 0x41158463, "usbnet_get_settings" },
	{ 0x6b90440b, "usbnet_tx_timeout" },
	{ 0xab7ccdba, "usbnet_change_mtu" },
	{ 0x8dcbbf1b, "eth_validate_addr" },
	{ 0x5582c82b, "eth_mac_addr" },
	{ 0x1bb5e3de, "usbnet_start_xmit" },
	{ 0x92101845, "usbnet_stop" },
	{ 0x8e646f98, "usbnet_open" },
	{ 0xabd62a81, "usb_deregister" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0xfaf98462, "bitrev32" },
	{ 0xa34f1ef5, "crc32_le" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0xbd1ec043, "usb_submit_urb" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0xe9bfc2b8, "usb_alloc_urb" },
	{ 0x6f95b2b, "mii_nway_restart" },
	{ 0x8fd1d3e, "usbnet_get_endpoints" },
	{ 0x99a4e0bc, "usbnet_unlink_rx_urbs" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0xf9a482f9, "msleep" },
	{ 0x6b973f09, "mii_ethtool_gset" },
	{ 0x44cd3308, "mii_check_media" },
	{ 0xe2fae716, "kmemdup" },
	{ 0xba897ddd, "usb_control_msg" },
	{ 0x871e0749, "usbnet_defer_kevent" },
	{ 0x42fa1624, "netif_carrier_on" },
	{ 0x1656a7f1, "netif_carrier_off" },
	{ 0xf407d33, "netdev_err" },
	{ 0xf18586a4, "usbnet_skb_return" },
	{ 0x2305923a, "skb_clone" },
	{ 0x4ba1611f, "skb_pull" },
	{ 0x99bb8806, "memmove" },
	{ 0xdc6a3522, "skb_put" },
	{ 0x9d669763, "memcpy" },
	{ 0xea364e7, "skb_push" },
	{ 0x568ce846, "dev_kfree_skb_any" },
	{ 0xc3d77bb, "skb_copy_expand" },
	{ 0xea147363, "printk" },
	{ 0x4acc733d, "usb_free_urb" },
	{ 0x37a0cba, "kfree" },
	{ 0x572bd577, "generic_mii_ioctl" },
	{ 0x328a05f1, "strncpy" },
	{ 0x96e62992, "usbnet_get_drvinfo" },
	{ 0x7d79282a, "mii_link_ok" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbnet,usbcore,mii";

MODULE_ALIAS("usb:v077Bp2226d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0846p1040d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v2001p1A00d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0B95p1720d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v07B8p420Ad*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v08DDp90FFd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0557p2009d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0411p003Dd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0411p006Ed*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v6189p182Dd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v07AAp0017d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1189p0893d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1631p6200d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v04F1p3008d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0B95p7720d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0B95p1780d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v13B1p0018d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1557p7720d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v07D1p3C05d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v2001p3C05d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1737p0039d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v04BBp0930d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v050Dp5055d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05ACp1402d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0B95p772Ad*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v14EApAB11d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0DB0pA877d*dc*dsc*dp*ic*isc*ip*");

MODULE_INFO(srcversion, "FB222909B2AAAC23E431978");
