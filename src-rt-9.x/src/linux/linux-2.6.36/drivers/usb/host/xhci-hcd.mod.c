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
	{ 0xdbc74ba7, "pci_bus_read_config_byte" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xa90c928a, "param_ops_int" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xd8f795ca, "del_timer" },
	{ 0x5e65788c, "usb_hcd_pci_remove" },
	{ 0x766e73ba, "usb_hcd_poll_rh_status" },
	{ 0xd5152710, "sg_next" },
	{ 0xeae3dfd6, "__const_udelay" },
	{ 0x74c86cc0, "init_timer_key" },
	{ 0x5ccd7e30, "usb_hcd_giveback_urb" },
	{ 0x2c7e7b70, "dma_pool_destroy" },
	{ 0x7d11c268, "jiffies" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xe707d823, "__aeabi_uidiv" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x5f754e5a, "memset" },
	{ 0xc3d1a64f, "usb_hcd_link_urb_to_ep" },
	{ 0xb36a11e3, "dev_err" },
	{ 0xea147363, "printk" },
	{ 0x7388e478, "usb_hcd_pci_shutdown" },
	{ 0x4867101f, "dma_free_coherent" },
	{ 0xe82a41dd, "dma_pool_free" },
	{ 0x8cfc414e, "add_timer" },
	{ 0x859c6dc7, "request_threaded_irq" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x2196324, "__aeabi_idiv" },
	{ 0x8ace755d, "radix_tree_delete" },
	{ 0x891d2598, "dma_alloc_coherent" },
	{ 0x406afd97, "usb_hcd_check_unlink_urb" },
	{ 0xc5c43414, "pci_set_mwi" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0xddceaa9b, "usb_hcd_irq" },
	{ 0x586818d2, "wait_for_completion_interruptible_timeout" },
	{ 0xc27487dd, "__bug" },
	{ 0x3eb7e410, "dma_pool_alloc" },
	{ 0x53c5ebdc, "pci_unregister_driver" },
	{ 0x37a0cba, "kfree" },
	{ 0x6128b5fc, "__printk_ratelimit" },
	{ 0x5c465637, "__pci_register_driver" },
	{ 0x87744100, "radix_tree_lookup" },
	{ 0xd2d0d395, "dev_warn" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x60f71cfa, "complete" },
	{ 0x9919d1db, "usb_hc_died" },
	{ 0xadd81f10, "usb_hcd_unlink_urb_from_ep" },
	{ 0xb5f840b0, "usb_hcd_pci_probe" },
	{ 0xa0f74ce7, "radix_tree_insert" },
	{ 0x1f0cf4c1, "dma_pool_create" },
	{ 0xfebf995, "outer_cache" },
	{ 0xf20dabd8, "free_irq" },
	{ 0x313341a3, "_set_bit_le" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbcore";

MODULE_ALIAS("pci:v*d*sv*sd*bc0Csc03i30*");

MODULE_INFO(srcversion, "08AC98992A22C08ACD44D9B");
