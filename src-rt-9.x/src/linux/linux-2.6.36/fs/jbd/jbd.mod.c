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
	{ 0x9b8503d3, "kmem_cache_destroy" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xc3527505, "schedule_hrtimeout" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xd8f795ca, "del_timer" },
	{ 0xa0fbac79, "wake_up_bit" },
	{ 0x5381470, "bmap" },
	{ 0xb462336e, "end_buffer_write_sync" },
	{ 0xc8b57c27, "autoremove_wake_function" },
	{ 0x8c562691, "__lock_page" },
	{ 0xdae0f1c6, "ll_rw_block" },
	{ 0x5d745f1a, "__lock_buffer" },
	{ 0xa57afc74, "ktime_get" },
	{ 0x24fdac79, "wake_bit_function" },
	{ 0x74c86cc0, "init_timer_key" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x8e22b400, "unlock_buffer" },
	{ 0x7d11c268, "jiffies" },
	{ 0xd0f02bb6, "set_bh_page" },
	{ 0xf6288e02, "__init_waitqueue_head" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xdc798d37, "__mutex_init" },
	{ 0xea147363, "printk" },
	{ 0x62280118, "ddr_phys_offset2_va" },
	{ 0xa1c76e0a, "_cond_resched" },
	{ 0xa0ec3cae, "__sync_dirty_buffer" },
	{ 0x63db125c, "kmem_cache_free" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0xd1281a75, "__wait_on_buffer" },
	{ 0xd482c208, "mem_section" },
	{ 0x315818ab, "coherence_flag" },
	{ 0x89939a90, "sync_dirty_buffer" },
	{ 0x8cfc414e, "add_timer" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xb5dc3e7d, "unlock_page" },
	{ 0xbc161ea1, "__brelse" },
	{ 0x2196324, "__aeabi_idiv" },
	{ 0xcd4b732f, "bit_waitqueue" },
	{ 0x483ec199, "__cond_resched_lock" },
	{ 0xfe107b, "ddr_phys_offset_va" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x899567a, "free_buffer_head" },
	{ 0xa27ef4fb, "bdevname" },
	{ 0x28df7d58, "sync_blockdev" },
	{ 0xda95826f, "try_to_free_buffers" },
	{ 0x93fca811, "__get_free_pages" },
	{ 0xaad32de0, "init_buffer" },
	{ 0x1000e51, "schedule" },
	{ 0xc27487dd, "__bug" },
	{ 0x50fad434, "round_jiffies_up" },
	{ 0x7f24de73, "jiffies_to_usecs" },
	{ 0x70d7f138, "wake_up_process" },
	{ 0xa2d5c777, "alloc_buffer_head" },
	{ 0xd707b87e, "submit_bh" },
	{ 0xa3c8af26, "kmem_cache_create" },
	{ 0x4302d0eb, "free_pages" },
	{ 0xb9e52429, "__wake_up" },
	{ 0x5f7eaba0, "iput" },
	{ 0x37a0cba, "kfree" },
	{ 0xc169f4e1, "kthread_create" },
	{ 0x9d669763, "memcpy" },
	{ 0x75a17bed, "prepare_to_wait" },
	{ 0xcc077e2c, "write_dirty_buffer" },
	{ 0xb5c12b01, "put_page" },
	{ 0x836635f4, "__bforget" },
	{ 0x8893fa5d, "finish_wait" },
	{ 0xbb9a2c75, "ktime_add_ns" },
	{ 0xd43929d3, "__find_get_block" },
	{ 0x48803918, "mark_buffer_dirty" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x48daeb31, "__getblk" },
	{ 0x760a0f4f, "yield" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "5063D12E92D73333C8E7A0A");
