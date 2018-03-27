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
	{ 0xacc1ebd1, "param_ops_charp" },
	{ 0xe2d5255a, "strcmp" },
	{ 0x1b6314fd, "in_aton" },
	{ 0xc27487dd, "__bug" },
	{ 0x8667e87c, "nf_nat_rtsp_hook_expectfn" },
	{ 0xb4288108, "nf_nat_rtsp_hook" },
	{ 0x609f1c7e, "synchronize_net" },
	{ 0xea147363, "printk" },
	{ 0xb8151ecc, "nf_ct_unexpect_related" },
	{ 0x1d1d7e59, "__nf_nat_mangle_tcp_packet" },
	{ 0x84b183ae, "strncmp" },
	{ 0x4a97e2b3, "nf_ct_expect_related_report" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xdd27fa87, "memchr" },
	{ 0x11089ac7, "_ctype" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x6903595, "nf_nat_setup_info" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=nf_conntrack_rtsp";


MODULE_INFO(srcversion, "E3D45DCA640583BC994D56D");
