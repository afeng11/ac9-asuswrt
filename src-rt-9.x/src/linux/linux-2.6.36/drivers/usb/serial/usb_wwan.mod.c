#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xdd653daa, "module_layout" },
	{ 0x49922164, "tty_port_tty_get" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0x278f5ac8, "usb_kill_urb" },
	{ 0x677bb305, "param_ops_bool" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x5e70bcee, "usb_unlink_urb" },
	{ 0x7d11c268, "jiffies" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xea147363, "printk" },
	{ 0x8016972d, "tty_insert_flip_string_fixed_flag" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x5093fa82, "_clear_bit_le" },
	{ 0xbd1ec043, "usb_submit_urb" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x93fca811, "__get_free_pages" },
	{ 0x30e74134, "tty_termios_copy_hw" },
	{ 0x4302d0eb, "free_pages" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0xda5ea696, "_test_and_set_bit_le" },
	{ 0xa35a5316, "tty_kref_put" },
	{ 0xf36d2c19, "tty_flip_buffer_push" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xd689ecb4, "usb_serial_port_softint" },
	{ 0xfebf995, "outer_cache" },
	{ 0xf17f160e, "dev_get_drvdata" },
	{ 0x4acc733d, "usb_free_urb" },
	{ 0xebd10d7d, "usb_anchor_urb" },
	{ 0xe9bfc2b8, "usb_alloc_urb" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbcore,usbserial";


MODULE_INFO(srcversion, "2EE6D9B7D61F7D85E572CBF");
