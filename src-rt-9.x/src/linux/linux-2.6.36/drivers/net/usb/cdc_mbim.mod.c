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
	{ 0x558520ad, "usbnet_probe" },
	{ 0xabd62a81, "usb_deregister" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0xea147363, "printk" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0x1c10951b, "pskb_expand_head" },
	{ 0xf18586a4, "usbnet_skb_return" },
	{ 0x99bb8806, "memmove" },
	{ 0xea364e7, "skb_push" },
	{ 0x9d669763, "memcpy" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xdc6a3522, "skb_put" },
	{ 0x5a78b885, "__netdev_alloc_skb" },
	{ 0x92465293, "cdc_ncm_rx_verify_ndp16" },
	{ 0xa8f5e049, "cdc_ncm_rx_verify_nth16" },
	{ 0x99677d54, "usbnet_suspend" },
	{ 0xd5af09b9, "usbnet_resume" },
	{ 0xf17f160e, "dev_get_drvdata" },
	{ 0x1c055b18, "usb_cdc_wdm_register" },
	{ 0xf999bb62, "cdc_ncm_bind_common" },
	{ 0x58ba13fd, "cdc_ncm_select_altsetting" },
	{ 0xbdd54238, "cdc_ncm_unbind" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x568ce846, "dev_kfree_skb_any" },
	{ 0xb36a11e3, "dev_err" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x426df785, "cdc_ncm_fill_tx_frame" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0x4ba1611f, "skb_pull" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbnet,usbcore,cdc_ncm,cdc-wdm";

MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc0Dip00*");
MODULE_ALIAS("usb:v1199p68A2d*dc*dsc*dp*ic02isc0Eip00*");
MODULE_ALIAS("usb:v*p*d*dc*dsc*dp*ic02isc0Eip00*");

MODULE_INFO(srcversion, "DF51CCE4E380A55ED05E138");
