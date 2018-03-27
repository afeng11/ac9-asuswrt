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
	{ 0xc7cd9933, "usb_altnum_to_altsetting" },
	{ 0xd5af09b9, "usbnet_resume" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0x558520ad, "usbnet_probe" },
	{ 0x4a5361cf, "hrtimer_cancel" },
	{ 0x42fa1624, "netif_carrier_on" },
	{ 0x7ebf69b8, "usbnet_disconnect" },
	{ 0x2305923a, "skb_clone" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0x1656a7f1, "netif_carrier_off" },
	{ 0x677bb305, "param_ops_bool" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xb36a11e3, "dev_err" },
	{ 0xabd62a81, "usb_deregister" },
	{ 0xea147363, "printk" },
	{ 0xc2a96373, "usb_set_interface" },
	{ 0xfaef0ed, "__tasklet_schedule" },
	{ 0x328a05f1, "strncpy" },
	{ 0xba897ddd, "usb_control_msg" },
	{ 0x86b053a7, "usb_driver_claim_interface" },
	{ 0x1bb5e3de, "usbnet_start_xmit" },
	{ 0x99677d54, "usbnet_suspend" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x568ce846, "dev_kfree_skb_any" },
	{ 0x82072614, "tasklet_kill" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xfd61c9ad, "_dev_info" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x35a3c819, "__alloc_skb" },
	{ 0xd6896aa5, "usbnet_get_ethernet_addr" },
	{ 0xf18586a4, "usbnet_skb_return" },
	{ 0x72becf51, "hrtimer_start" },
	{ 0x302187c6, "usb_driver_release_interface" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x73290daa, "usbnet_get_msglevel" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0xc9cbfbd7, "hrtimer_init" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xce5709f, "usb_ifnum_to_if" },
	{ 0x701d0ebd, "snprintf" },
	{ 0xc5561774, "__netif_schedule" },
	{ 0xdc6a3522, "skb_put" },
	{ 0xf17f160e, "dev_get_drvdata" },
	{ 0xeaca2bba, "usbnet_set_msglevel" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbcore,usbnet";

MODULE_ALIAS("usb:v0BDBp*d*dc*dsc*dp*ic02isc0Dip00*");
MODULE_ALIAS("usb:v413Cp*d*dc*dsc*dp*ic02isc0Dip00*");
MODULE_ALIAS("usb:v0930p*d*dc*dsc*dp*ic02isc0Dip00*");
MODULE_ALIAS("usb:v12D1p*d*dc*dsc*dp*ic02isc0Dip00*");
MODULE_ALIAS("usb:v1519p0443d*dc*dsc*dp*ic02isc0Dip00*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc0Dip00*");

MODULE_INFO(srcversion, "FECDEE4CF51485FE5517CFD");
