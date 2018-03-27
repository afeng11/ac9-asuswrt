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
	{ 0x7ebf69b8, "usbnet_disconnect" },
	{ 0x6b90440b, "usbnet_tx_timeout" },
	{ 0xab7ccdba, "usbnet_change_mtu" },
	{ 0x1bb5e3de, "usbnet_start_xmit" },
	{ 0x92101845, "usbnet_stop" },
	{ 0x8e646f98, "usbnet_open" },
	{ 0xabd62a81, "usb_deregister" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0x558520ad, "usbnet_probe" },
	{ 0x99677d54, "usbnet_suspend" },
	{ 0xd5af09b9, "usbnet_resume" },
	{ 0x79aa04a2, "get_random_bytes" },
	{ 0xb36a11e3, "dev_err" },
	{ 0x1c055b18, "usb_cdc_wdm_register" },
	{ 0x8fd1d3e, "usbnet_get_endpoints" },
	{ 0x86b053a7, "usb_driver_claim_interface" },
	{ 0xd6896aa5, "usbnet_get_ethernet_addr" },
	{ 0xce5709f, "usb_ifnum_to_if" },
	{ 0xf17f160e, "dev_get_drvdata" },
	{ 0x302187c6, "usb_driver_release_interface" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xea364e7, "skb_push" },
	{ 0x9d669763, "memcpy" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbnet,usbcore,cdc-wdm";

MODULE_ALIAS("usb:v12D1p*d*dc*dsc*dp*icFFisc01ip09*");
MODULE_ALIAS("usb:v12D1p*d*dc*dsc*dp*icFFisc01ip39*");
MODULE_ALIAS("usb:v12D1p*d*dc*dsc*dp*icFFisc01ip69*");
MODULE_ALIAS("usb:v12D1p*d*dc*dsc*dp*icFFisc01ip07*");
MODULE_ALIAS("usb:v12D1p*d*dc*dsc*dp*icFFisc01ip11*");
MODULE_ALIAS("usb:v12D1p*d*dc*dsc*dp*icFFisc01ip37*");
MODULE_ALIAS("usb:v12D1p*d*dc*dsc*dp*icFFisc01ip67*");
MODULE_ALIAS("usb:v106Cp*d*dc*dsc*dp*icFFiscF0ipFF*");
MODULE_ALIAS("usb:v106Cp*d*dc*dsc*dp*icFFiscF1ipFF*");
MODULE_ALIAS("usb:v1410pB001d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v1410p9010d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v413Cp8195d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v413Cp8196d*dc*dsc*dp*ic02isc06ip00*");
MODULE_ALIAS("usb:v0408pEA42d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0012d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0017d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0021d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0025d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0042d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0049d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0052d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0055d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0058d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0063d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0104d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0113d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0118d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0121d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0123d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0124d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0125d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0126d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0130d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0133d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0141d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0157d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0158d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0167d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0168d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0176d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0178d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0191d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0199d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0200d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0257d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0265d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0284d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p0326d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1008d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1010d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1012d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1018d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1021d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1245d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1247d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1252d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1254d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1255d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1255d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1256d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1401d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1402d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1424d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1425d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p1426d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2p2002d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0F3Dp68A2d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v114Fp68A2d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p68A2d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p68A2d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p901Cd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1BBBp011Ed*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v2357p0201d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1BC7p1200d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9212d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v03F0p1F1Dd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v04DAp250Dd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v413Cp8172d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1410pA001d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v0B05p1776d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v19D2pFFF3d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9001d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9002d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9202d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9203d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9222d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9009d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v413Cp8186d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v413Cp8194d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p920Bd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p920Dd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9225d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9245d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v03F0p251Dd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9215d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9265d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9235d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9275d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p68A5d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p68A9d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9001d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9002d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9003d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9004d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9005d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9006d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9007d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9008d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9009d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p900Ad*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9011d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9011d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v16D8p8002d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v05C6p9205d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9013d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v03F0p371Dd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9015d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p9019d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1199p901Bd*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v12D1p14F1d*dc*dsc*dp*ic*isc*ip*");
MODULE_ALIAS("usb:v1410pA021d*dc*dsc*dp*ic*isc*ip*");

MODULE_INFO(srcversion, "E980CF08DED97BF424421B3");
