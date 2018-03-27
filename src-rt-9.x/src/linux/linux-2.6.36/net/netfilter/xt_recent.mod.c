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
	{ 0x13095525, "param_ops_uint" },
	{ 0x1dc492a, "seq_release_private" },
	{ 0xeb8853ee, "seq_read" },
	{ 0xe514329, "xt_unregister_matches" },
	{ 0x3994d878, "unregister_pernet_subsys" },
	{ 0xa30765e2, "xt_register_matches" },
	{ 0xe7186020, "register_pernet_subsys" },
	{ 0x7fc01577, "init_net" },
	{ 0xaccabc6a, "in4_pton" },
	{ 0xe57878a1, "in6_pton" },
	{ 0xa3131f6, "strnchr" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x7d11c268, "jiffies" },
	{ 0x9d669763, "memcpy" },
	{ 0xb5298c76, "remove_proc_entry" },
	{ 0x37a0cba, "kfree" },
	{ 0x79aa04a2, "get_random_bytes" },
	{ 0xea147363, "printk" },
	{ 0x312a94c3, "proc_create_data" },
	{ 0xe914e41e, "strcpy" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0xd9ce8f0c, "strnlen" },
	{ 0xdc3fcbc9, "__sw_hweight8" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x71c90087, "memcmp" },
	{ 0x170ec140, "seq_printf" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0x48761222, "__seq_open_private" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xe2d5255a, "strcmp" },
	{ 0xa06d909b, "proc_mkdir" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xc27487dd, "__bug" },
	{ 0x6d9bf85, "proc_net_remove" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "00B9A3AB999488BFEB4FA6A");
