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
	{ 0x257f448e, "kmalloc_caches" },
	{ 0xf9a482f9, "msleep" },
	{ 0xd5af09b9, "usbnet_resume" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0x558520ad, "usbnet_probe" },
	{ 0x5309616, "usbnet_cdc_unbind" },
	{ 0x7ebf69b8, "usbnet_disconnect" },
	{ 0x2305923a, "skb_clone" },
	{ 0x5f87da5, "usbnet_generic_cdc_bind" },
	{ 0x92101845, "usbnet_stop" },
	{ 0x94c43b8f, "skb_trim" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xb36a11e3, "dev_err" },
	{ 0xabd62a81, "usb_deregister" },
	{ 0xba897ddd, "usb_control_msg" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0x1bb5e3de, "usbnet_start_xmit" },
	{ 0x99677d54, "usbnet_suspend" },
	{ 0x4ba1611f, "skb_pull" },
	{ 0x568ce846, "dev_kfree_skb_any" },
	{ 0xc3d77bb, "skb_copy_expand" },
	{ 0xfd61c9ad, "_dev_info" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x6b90440b, "usbnet_tx_timeout" },
	{ 0xf18586a4, "usbnet_skb_return" },
	{ 0x302187c6, "usb_driver_release_interface" },
	{ 0x8e646f98, "usbnet_open" },
	{ 0x8dcbbf1b, "eth_validate_addr" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0xd2d0d395, "dev_warn" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x99bb8806, "memmove" },
	{ 0x5582c82b, "eth_mac_addr" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbnet,cdc_ether,usbcore";

MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc02ipFF*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*icEFisc01ip01*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*icE0isc01ip03*");

MODULE_INFO(srcversion, "4150D614664B7029A3A5492");
