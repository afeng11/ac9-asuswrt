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
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x405c1144, "get_seconds" },
	{ 0xf88c3301, "sg_init_table" },
	{ 0xc52ef5, "g_make_token_header" },
	{ 0xff178f6, "__aeabi_idivmod" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x97255bdf, "strlen" },
	{ 0x3efe7c86, "write_bytes_to_xdr_buf" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0xe2fae716, "kmemdup" },
	{ 0xad1cb2aa, "gss_mech_register" },
	{ 0xf8b2ff6e, "g_verify_token_header" },
	{ 0x3cf20525, "xdr_buf_subsegment" },
	{ 0x31a89d59, "rpc_debug" },
	{ 0xe707d823, "__aeabi_uidiv" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x5f754e5a, "memset" },
	{ 0xb86e4ab9, "random32" },
	{ 0xea147363, "printk" },
	{ 0x62280118, "ddr_phys_offset2_va" },
	{ 0x71c90087, "memcmp" },
	{ 0xd482c208, "mem_section" },
	{ 0x315818ab, "coherence_flag" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x2196324, "__aeabi_idiv" },
	{ 0xfe107b, "ddr_phys_offset_va" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x92c0b26c, "crypto_destroy_tfm" },
	{ 0xc27487dd, "__bug" },
	{ 0x7ccb4569, "gss_mech_unregister" },
	{ 0xefdd2345, "sg_init_one" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0xb5d83855, "read_bytes_from_xdr_buf" },
	{ 0xa33d15ef, "xdr_process_buf" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x99bb8806, "memmove" },
	{ 0xb5dea7ef, "g_token_size" },
	{ 0x3e65b9db, "crypto_alloc_base" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=auth_rpcgss,sunrpc";


MODULE_INFO(srcversion, "60B21094B4F1EFAD1A7DCE6");
