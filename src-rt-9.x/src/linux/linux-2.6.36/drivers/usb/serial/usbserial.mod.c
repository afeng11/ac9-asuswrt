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
	{ 0x49922164, "tty_port_tty_get" },
	{ 0x6d662533, "_find_first_bit_le" },
	{ 0x726406ca, "bus_register" },
	{ 0x531380ff, "device_remove_file" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xd5b037e1, "kref_put" },
	{ 0x55c371f2, "driver_register" },
	{ 0x13d0adf7, "__kfifo_out" },
	{ 0xfee59c3, "single_open" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xc068440e, "__kfifo_alloc" },
	{ 0x7647726c, "handle_sysrq" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0xd25140c9, "dev_printk" },
	{ 0x1f0761c3, "single_release" },
	{ 0x709cc168, "seq_puts" },
	{ 0xf04e93d6, "alloc_tty_driver" },
	{ 0x8debeb40, "tty_port_open" },
	{ 0x8949858b, "schedule_work" },
	{ 0x170ec140, "seq_printf" },
	{ 0x4b7e13cc, "tty_port_hangup" },
	{ 0x933740ca, "cancel_work_sync" },
	{ 0x278f5ac8, "usb_kill_urb" },
	{ 0xbdc666a, "tty_register_driver" },
	{ 0x677bb305, "param_ops_bool" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x432e5eff, "put_tty_driver" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xeb8853ee, "seq_read" },
	{ 0x7d11c268, "jiffies" },
	{ 0x30c94b76, "tty_set_operations" },
	{ 0x9aa66607, "device_bind_driver" },
	{ 0xb3274b8b, "tty_port_close" },
	{ 0xd69998, "device_del" },
	{ 0xb36a11e3, "dev_err" },
	{ 0xabd62a81, "usb_deregister" },
	{ 0xdc798d37, "__mutex_init" },
	{ 0xea147363, "printk" },
	{ 0xbbde77d9, "driver_unregister" },
	{ 0xb3c82ba9, "seq_putc" },
	{ 0x4b357304, "tty_port_init" },
	{ 0x8016972d, "tty_insert_flip_string_fixed_flag" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x453a780b, "tty_vhangup" },
	{ 0xf0fc90e0, "device_add" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x8edcb34f, "bus_unregister" },
	{ 0x5093fa82, "_clear_bit_le" },
	{ 0xa43c65e3, "usb_store_new_id" },
	{ 0x712ebb9f, "tty_insert_flip_string_flags" },
	{ 0x9faabfee, "usb_match_id" },
	{ 0x566b539b, "tty_register_device" },
	{ 0x68faad7a, "device_create_file" },
	{ 0x608cd2f8, "module_put" },
	{ 0x85a3c408, "tty_unregister_device" },
	{ 0xfd61c9ad, "_dev_info" },
	{ 0xbd1ec043, "usb_submit_urb" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x67b27ec1, "tty_std_termios" },
	{ 0xf1cc4277, "usb_get_dev" },
	{ 0x49c60e0b, "put_device" },
	{ 0x633a3f90, "usb_put_dev" },
	{ 0x30e74134, "tty_termios_copy_hw" },
	{ 0xdb760f52, "__kfifo_free" },
	{ 0x6e10f45a, "tty_unregister_driver" },
	{ 0x75b2c273, "tty_hangup" },
	{ 0xb9e52429, "__wake_up" },
	{ 0x19a304ba, "usb_disabled" },
	{ 0x8d66a3a, "warn_slowpath_fmt" },
	{ 0x50e36691, "seq_lseek" },
	{ 0x83800bfa, "kref_init" },
	{ 0x37a0cba, "kfree" },
	{ 0x9775cdc, "kref_get" },
	{ 0x7a4bfa96, "device_initialize" },
	{ 0x289c33f0, "usb_match_one_id" },
	{ 0xe5904422, "usb_register_driver" },
	{ 0xa35a5316, "tty_kref_put" },
	{ 0xf36d2c19, "tty_flip_buffer_push" },
	{ 0x3ed3c485, "tty_init_termios" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xf23fcb99, "__kfifo_in" },
	{ 0x701d0ebd, "snprintf" },
	{ 0x73b164d, "param_ops_ushort" },
	{ 0x29bdc81f, "dev_set_name" },
	{ 0xdd4e18b1, "tty_wakeup" },
	{ 0xfebf995, "outer_cache" },
	{ 0xf17f160e, "dev_get_drvdata" },
	{ 0x4acc733d, "usb_free_urb" },
	{ 0xe9bfc2b8, "usb_alloc_urb" },
	{ 0x313341a3, "_set_bit_le" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=usbcore";


MODULE_INFO(srcversion, "48534040AC28012C43C5418");
