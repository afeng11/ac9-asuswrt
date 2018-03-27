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
	{ 0x13cec65a, "rpcauth_register" },
	{ 0xf2296118, "xdr_shift_buf" },
	{ 0x75921d28, "auth_domain_put" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0xc99f9b3f, "rpc_destroy_wait_queue" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x405c1144, "get_seconds" },
	{ 0xd5b037e1, "kref_put" },
	{ 0xf767001d, "sunrpc_cache_update" },
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0x649e5049, "xdr_buf_read_netobj" },
	{ 0x67c2fa54, "__copy_to_user" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x97255bdf, "strlen" },
	{ 0x60a13e90, "rcu_barrier" },
	{ 0x6d232bad, "rpcauth_init_cred" },
	{ 0xc8b57c27, "autoremove_wake_function" },
	{ 0xa435c72e, "sunrpc_cache_pipe_upcall" },
	{ 0xe357f798, "rpc_unlink" },
	{ 0x20000329, "simple_strtoul" },
	{ 0xfb1044d4, "put_rpccred" },
	{ 0x77ffb567, "rpcauth_generic_bind_cred" },
	{ 0xaa7c96fb, "rpc_init_wait_queue" },
	{ 0xf668ba9, "svc_auth_unregister" },
	{ 0xe2fae716, "kmemdup" },
	{ 0x800df1d7, "groups_free" },
	{ 0x1251d30f, "call_rcu" },
	{ 0x4b359351, "cache_register" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0x98348b63, "__alloc_pages_nodemask" },
	{ 0xc499ae1e, "kstrdup" },
	{ 0x7d11c268, "jiffies" },
	{ 0xe2d5255a, "strcmp" },
	{ 0xffa8302, "_atomic_dec_and_lock" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0x3cf20525, "xdr_buf_subsegment" },
	{ 0x4df1a8a5, "svcauth_unix_set_client" },
	{ 0x31a89d59, "rpc_debug" },
	{ 0x2d795a75, "cache_check" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x48120d91, "rpc_queue_upcall" },
	{ 0xea147363, "printk" },
	{ 0x62280118, "ddr_phys_offset2_va" },
	{ 0xcb5f58a7, "sunrpc_cache_lookup" },
	{ 0x71c90087, "memcmp" },
	{ 0x6daea78a, "rpc_call_null" },
	{ 0xd482c208, "mem_section" },
	{ 0x315818ab, "coherence_flag" },
	{ 0x1493164f, "rpcauth_init_credcache" },
	{ 0xe97f4ce5, "qword_get" },
	{ 0xc8e96dea, "qword_addhex" },
	{ 0xe5a0b84f, "rpcauth_lookup_credcache" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xab3b1123, "cache_unregister" },
	{ 0x97c0e6fb, "contig_page_data" },
	{ 0x61651be, "strcat" },
	{ 0x608cd2f8, "module_put" },
	{ 0xfe107b, "ddr_phys_offset_va" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x2b8e1ed3, "__free_pages" },
	{ 0xb492f510, "svc_auth_register" },
	{ 0x2eec63c9, "xdr_encode_netobj" },
	{ 0xce4e8a14, "rpc_wake_up_status" },
	{ 0xd62c833f, "schedule_timeout" },
	{ 0x1000e51, "schedule" },
	{ 0x7145ff08, "auth_domain_lookup" },
	{ 0xc27487dd, "__bug" },
	{ 0xdd217e56, "rpc_sleep_on" },
	{ 0xe5919cb1, "xdr_encode_opaque" },
	{ 0xb9e52429, "__wake_up" },
	{ 0x459ac449, "rpcauth_unregister" },
	{ 0x4aaab2b1, "groups_alloc" },
	{ 0x83800bfa, "kref_init" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x75a17bed, "prepare_to_wait" },
	{ 0x9775cdc, "kref_get" },
	{ 0x28f1c0aa, "rpc_wake_up" },
	{ 0x8893fa5d, "finish_wait" },
	{ 0xb5d83855, "read_bytes_from_xdr_buf" },
	{ 0x41cf547d, "rpc_mkpipe" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xb742fd7, "simple_strtol" },
	{ 0x307eee77, "rpcauth_destroy_credcache" },
	{ 0x99bb8806, "memmove" },
	{ 0x470dea6b, "auth_domain_find" },
	{ 0x13095525, "param_ops_uint" },
	{ 0xfebf995, "outer_cache" },
	{ 0xbde01be8, "xdr_buf_from_iov" },
	{ 0xe914e41e, "strcpy" },
	{ 0x45d99551, "rpc_put_task" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=sunrpc";


MODULE_INFO(srcversion, "70C6C5F7D043B3DDD1025CC");
