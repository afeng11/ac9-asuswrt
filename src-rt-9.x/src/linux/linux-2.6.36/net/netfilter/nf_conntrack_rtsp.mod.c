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
	{ 0xa90c928a, "param_ops_int" },
	{ 0xf15abbd3, "nf_conntrack_helper_register" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xed67432c, "nf_conntrack_helper_unregister" },
	{ 0x6802f62d, "nf_ct_expect_init" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x11089ac7, "_ctype" },
	{ 0xea147363, "printk" },
	{ 0xd2a6efbd, "nf_ct_expect_put" },
	{ 0x690c2376, "nf_ct_expect_alloc" },
	{ 0x84b183ae, "strncmp" },
	{ 0x4a97e2b3, "nf_ct_expect_related_report" },
	{ 0xdd27fa87, "memchr" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0x93fca811, "__get_free_pages" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0xc27487dd, "__bug" },
	{ 0x37a0cba, "kfree" },
	{ 0xd1329880, "param_array_ops" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x158a64, "skb_copy_bits" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "A3026B65F3809F62AAD558C");
