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
	{ 0xfbc74f64, "__copy_from_user" },
	{ 0x14373b93, "register_sysctl_table" },
	{ 0x67c2fa54, "__copy_to_user" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x7db57751, "proc_dointvec" },
	{ 0x377ee0d1, "blk_put_request" },
	{ 0x677bb305, "param_ops_bool" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xb7e030d4, "blk_rq_unmap_user" },
	{ 0xb0a33371, "invalidate_bdev" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x3e6b6ebc, "check_disk_change" },
	{ 0xea147363, "printk" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x69ce1c6a, "blk_rq_map_user" },
	{ 0x83767ca9, "proc_dostring" },
	{ 0x7dceceac, "capable" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x5ef99db4, "unregister_sysctl_table" },
	{ 0x9b0a3d5d, "blk_execute_rq" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0x419234ef, "scsi_cmd_ioctl" },
	{ 0x374ed073, "scnprintf" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xa711d02e, "blk_get_request" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "B4E0D26784C44A254F93250");
