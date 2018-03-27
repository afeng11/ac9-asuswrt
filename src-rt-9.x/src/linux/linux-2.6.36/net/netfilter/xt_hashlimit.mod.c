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
	{ 0x9b8503d3, "kmem_cache_destroy" },
	{ 0xf499fdb2, "rcu_barrier_bh" },
	{ 0x3994d878, "unregister_pernet_subsys" },
	{ 0xe514329, "xt_unregister_matches" },
	{ 0xa3c8af26, "kmem_cache_create" },
	{ 0xa30765e2, "xt_register_matches" },
	{ 0xe7186020, "register_pernet_subsys" },
	{ 0xde9360ba, "totalram_pages" },
	{ 0x74c86cc0, "init_timer_key" },
	{ 0x312a94c3, "proc_create_data" },
	{ 0xd6ee688f, "vmalloc" },
	{ 0xe2d5255a, "strcmp" },
	{ 0x79aa04a2, "get_random_bytes" },
	{ 0x158a64, "skb_copy_bits" },
	{ 0x9d669763, "memcpy" },
	{ 0xea147363, "printk" },
	{ 0xf6ebc03b, "net_ratelimit" },
	{ 0x78bcae5, "ipv6_skip_exthdr" },
	{ 0x71c90087, "memcmp" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x37a0cba, "kfree" },
	{ 0x170ec140, "seq_printf" },
	{ 0xe81f6450, "seq_open" },
	{ 0x8cfc414e, "add_timer" },
	{ 0x3bd1b1f6, "msecs_to_jiffies" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x999e8297, "vfree" },
	{ 0xb5298c76, "remove_proc_entry" },
	{ 0xd8f795ca, "del_timer" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0x362e23ec, "call_rcu_bh" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0x63db125c, "kmem_cache_free" },
	{ 0xa06d909b, "proc_mkdir" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xc27487dd, "__bug" },
	{ 0x6d9bf85, "proc_net_remove" },
	{ 0x7d11c268, "jiffies" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "5843346A3A732B4D3A237EC");
