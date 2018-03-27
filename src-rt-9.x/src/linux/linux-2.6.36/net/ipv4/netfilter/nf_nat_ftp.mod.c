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
	{ 0xc27487dd, "__bug" },
	{ 0xa1e3165e, "nf_nat_ftp_hook" },
	{ 0xc2cdbf1, "synchronize_sched" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x5cd9734d, "nf_nat_follow_master" },
	{ 0xb8151ecc, "nf_ct_unexpect_related" },
	{ 0x1d1d7e59, "__nf_nat_mangle_tcp_packet" },
	{ 0x701d0ebd, "snprintf" },
	{ 0x4a97e2b3, "nf_ct_expect_related_report" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xea147363, "printk" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=nf_conntrack_ftp";


MODULE_INFO(srcversion, "A88FD01D016557D8E552F02");
