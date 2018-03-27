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
	{ 0xfc5a65e3, "seq_release" },
	{ 0xeb8853ee, "seq_read" },
	{ 0x50e36691, "seq_lseek" },
	{ 0xe89b2c87, "xt_unregister_match" },
	{ 0x5aa474e1, "nf_unregister_sockopt" },
	{ 0xb5298c76, "remove_proc_entry" },
	{ 0xfc69ce50, "xt_register_match" },
	{ 0x9902105b, "nf_register_sockopt" },
	{ 0xcffb6db, "create_proc_entry" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0x42224298, "sscanf" },
	{ 0x1e6d26a8, "strstr" },
	{ 0xc88e29e9, "kfree_skb" },
	{ 0x28d4fffd, "skb_copy" },
	{ 0x11089ac7, "_ctype" },
	{ 0x4e830a3e, "strnicmp" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0x1d2e87c6, "do_gettimeofday" },
	{ 0x9d669763, "memcpy" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x97255bdf, "strlen" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x170ec140, "seq_printf" },
	{ 0xe81f6450, "seq_open" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0xea147363, "printk" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x37a0cba, "kfree" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "9488A2F8F19BF3C5DD43791");
