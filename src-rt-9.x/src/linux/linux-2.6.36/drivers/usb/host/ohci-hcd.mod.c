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
	{ 0x677bb305, "param_ops_bool" },
	{ 0x7388e478, "usb_hcd_pci_shutdown" },
	{ 0x5e65788c, "usb_hcd_pci_remove" },
	{ 0xb5f840b0, "usb_hcd_pci_probe" },
	{ 0x53c5ebdc, "pci_unregister_driver" },
	{ 0xc17515d7, "usb_hcds_loaded" },
	{ 0x5c465637, "__pci_register_driver" },
	{ 0xea147363, "printk" },
	{ 0x19a304ba, "usb_disabled" },
	{ 0x7e64181d, "usb_calc_bus_time" },
	{ 0xc3d1a64f, "usb_hcd_link_urb_to_ep" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0x3eb7e410, "dma_pool_alloc" },
	{ 0x766e73ba, "usb_hcd_poll_rh_status" },
	{ 0x8949858b, "schedule_work" },
	{ 0xde0ec9bf, "pci_match_id" },
	{ 0x1f0cf4c1, "dma_pool_create" },
	{ 0x891d2598, "dma_alloc_coherent" },
	{ 0xd8f795ca, "del_timer" },
	{ 0x4867101f, "dma_free_coherent" },
	{ 0x2c7e7b70, "dma_pool_destroy" },
	{ 0xf20dabd8, "free_irq" },
	{ 0x801678, "flush_scheduled_work" },
	{ 0xd0ee38b8, "schedule_timeout_uninterruptible" },
	{ 0x82c49596, "pci_get_slot" },
	{ 0xa5a08371, "pci_get_device" },
	{ 0xe0204ad6, "pci_dev_put" },
	{ 0xdbc74ba7, "pci_bus_read_config_byte" },
	{ 0x74c86cc0, "init_timer_key" },
	{ 0x3bd1b1f6, "msecs_to_jiffies" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x406afd97, "usb_hcd_check_unlink_urb" },
	{ 0x5ccd7e30, "usb_hcd_giveback_urb" },
	{ 0xadd81f10, "usb_hcd_unlink_urb_from_ep" },
	{ 0x37a0cba, "kfree" },
	{ 0xe82a41dd, "dma_pool_free" },
	{ 0x7d11c268, "jiffies" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0x9a6221c5, "mod_timer" },
	{ 0x91eb9b4, "round_jiffies" },
	{ 0x63b48a2c, "pci_bus_write_config_word" },
	{ 0x2b177eb5, "pci_bus_read_config_word" },
	{ 0x9db6c60e, "pci_bus_write_config_dword" },
	{ 0x8f2c28c3, "pci_bus_read_config_dword" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xb36a11e3, "dev_err" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xd2d0d395, "dev_warn" },
	{ 0xf9a482f9, "msleep" },
	{ 0xeae3dfd6, "__const_udelay" },
	{ 0x5f754e5a, "memset" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xfebf995, "outer_cache" },
	{ 0xe707d823, "__aeabi_uidiv" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbcore";

MODULE_ALIAS("pci:v*d*sv*sd*bc0Csc03i10*");

MODULE_INFO(srcversion, "84E1570234835708C454250");
