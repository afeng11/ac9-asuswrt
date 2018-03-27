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
	{ 0xff4e97b5, "xt_unregister_target" },
	{ 0xe90dcae0, "__request_module" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0xd6ee688f, "vmalloc" },
	{ 0x67c2fa54, "__copy_to_user" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x1c869d81, "xt_check_target" },
	{ 0xe2fae716, "kmemdup" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x999e8297, "vfree" },
	{ 0xe2d5255a, "strcmp" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x48a0f939, "mutex_lock_interruptible" },
	{ 0xea147363, "printk" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x7fc01577, "init_net" },
	{ 0x7f3353cb, "xt_register_target" },
	{ 0x608cd2f8, "module_put" },
	{ 0x7dceceac, "capable" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0x5aa474e1, "nf_unregister_sockopt" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0xc22156f0, "xt_request_find_match" },
	{ 0x41e5fcf0, "xt_request_find_target" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x23e0cd36, "xt_check_match" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x9902105b, "nf_register_sockopt" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "79CF7F3DDC18EB517E308B3");
