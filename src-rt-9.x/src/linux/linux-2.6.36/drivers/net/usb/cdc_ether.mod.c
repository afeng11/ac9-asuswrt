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
	{ 0xd5af09b9, "usbnet_resume" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0x558520ad, "usbnet_probe" },
	{ 0x42fa1624, "netif_carrier_on" },
	{ 0x7ebf69b8, "usbnet_disconnect" },
	{ 0x1656a7f1, "netif_carrier_off" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xabd62a81, "usb_deregister" },
	{ 0x71c90087, "memcmp" },
	{ 0x8fd1d3e, "usbnet_get_endpoints" },
	{ 0x86b053a7, "usb_driver_claim_interface" },
	{ 0x99677d54, "usbnet_suspend" },
	{ 0xfd61c9ad, "_dev_info" },
	{ 0xd6896aa5, "usbnet_get_ethernet_addr" },
	{ 0x302187c6, "usb_driver_release_interface" },
	{ 0xf407d33, "netdev_err" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xce5709f, "usb_ifnum_to_if" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbnet,usbcore";

MODULE_ALIAS("usb:v04DDp8004d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v04DDp8005d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v04DDp8006d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v04DDp8007d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v04DDp9031d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v04DDp9032d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v04DDp9050d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v07B4p0F02d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v1410pB001d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v1410p9010d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v413Cp8195d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v413Cp8196d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc0Aip00*");
MODULE_ALIAS("usb:v12D1p*d*dc*dsc*dp*ic02isc06ipFF*");

MODULE_INFO(srcversion, "62CB82FCEAB83D038FC8E31");
