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
	{ 0x97c9c668, "fat_detach" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x405c1144, "get_seconds" },
	{ 0x4575315d, "utf8s_to_utf16s" },
	{ 0xff178f6, "__aeabi_idivmod" },
	{ 0x7a7115a2, "mark_buffer_dirty_inode" },
	{ 0x96591318, "__mark_inode_dirty" },
	{ 0xe22ca8b7, "dput" },
	{ 0x34257efb, "d_find_alias" },
	{ 0xdc420522, "names_cachep" },
	{ 0x81394f40, "unlock_super" },
	{ 0x5f3dfbb4, "fat_sync_inode" },
	{ 0xbbda09bf, "fat_add_entries" },
	{ 0x7d11c268, "jiffies" },
	{ 0x27fccace, "fat_remove_entries" },
	{ 0x7881e434, "fat_alloc_new_dir" },
	{ 0x5f754e5a, "memset" },
	{ 0xd50bc7ea, "fat_fill_super" },
	{ 0x14ae8df1, "fat_build_inode" },
	{ 0x11089ac7, "_ctype" },
	{ 0x460c87fe, "fat_attach" },
	{ 0x31fea505, "d_move" },
	{ 0x84b183ae, "strncmp" },
	{ 0x63db125c, "kmem_cache_free" },
	{ 0x89939a90, "sync_dirty_buffer" },
	{ 0x715c352f, "fat_getattr" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0xbc161ea1, "__brelse" },
	{ 0x2196324, "__aeabi_idiv" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x594bd04b, "kill_block_super" },
	{ 0xc27487dd, "__bug" },
	{ 0x81a814aa, "fat_search_long" },
	{ 0x93f0e1e1, "fat_scan" },
	{ 0xcb988212, "register_filesystem" },
	{ 0x121b4924, "__fat_fs_error" },
	{ 0x5f7eaba0, "iput" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x3f120d35, "d_splice_alias" },
	{ 0x85df5959, "fat_setattr" },
	{ 0x4da9713c, "get_sb_bdev" },
	{ 0x26070c00, "fat_free_clusters" },
	{ 0xd729a33d, "fat_get_dotdot_entry" },
	{ 0xad5fc4c2, "unregister_filesystem" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x949dce21, "lock_super" },
	{ 0x6c630f31, "fat_time_unix2fat" },
	{ 0x701d0ebd, "snprintf" },
	{ 0x524f3d56, "fat_dir_empty" },
	{ 0x2118bb51, "d_instantiate" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=fat";


MODULE_INFO(srcversion, "3D03A04E9DAAD35E4715049");
