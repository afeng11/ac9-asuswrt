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
	{ 0xef65c908, "scsi_set_medium_removal" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x1003cb86, "blk_queue_rq_timeout" },
	{ 0xf5b8c404, "scsi_prep_return" },
	{ 0xf9a482f9, "msleep" },
	{ 0xd5b037e1, "kref_put" },
	{ 0x4bc0da26, "alloc_disk" },
	{ 0x34c762bd, "blk_queue_prep_rq" },
	{ 0xc65e73c, "scsi_normalize_sense" },
	{ 0xa90c928a, "param_ops_int" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x175dad21, "cdrom_number_of_slots" },
	{ 0xfef96e23, "__scsi_print_command" },
	{ 0x1749f819, "dev_set_drvdata" },
	{ 0xd3dbfbc4, "_find_first_zero_bit_le" },
	{ 0xd25140c9, "dev_printk" },
	{ 0x3ab86f8b, "unregister_cdrom" },
	{ 0xf7802486, "__aeabi_uidivmod" },
	{ 0xd5152710, "sg_next" },
	{ 0x62b72b0d, "mutex_unlock" },
	{ 0x2df7e0f7, "cdrom_open" },
	{ 0xf11e010c, "scsi_execute_req" },
	{ 0xd238eda3, "_lock_kernel" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0x257fafce, "scsi_execute" },
	{ 0x222f117a, "scsi_setup_fs_cmnd" },
	{ 0xe707d823, "__aeabi_uidiv" },
	{ 0xfa2a45e, "__memzero" },
	{ 0xea147363, "printk" },
	{ 0x3b5a746a, "cdrom_release" },
	{ 0xb7fbf44, "del_gendisk" },
	{ 0xbbde77d9, "driver_unregister" },
	{ 0xe16b893b, "mutex_lock" },
	{ 0x8902518, "cdrom_get_media_event" },
	{ 0x71a50dbc, "register_blkdev" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x6e21bb85, "scsi_prep_fn" },
	{ 0x5093fa82, "_clear_bit_le" },
	{ 0xb5a459dc, "unregister_blkdev" },
	{ 0xc9369091, "cdrom_get_last_written" },
	{ 0x8cce61ac, "scsi_device_put" },
	{ 0x59826805, "cdrom_media_changed" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x7f265a22, "scsi_nonblockable_ioctl" },
	{ 0x6f86d400, "scsi_ioctl" },
	{ 0xfe1cded4, "put_disk" },
	{ 0xdd507829, "scsi_register_driver" },
	{ 0x635cafb0, "scsi_block_when_processing_errors" },
	{ 0x83800bfa, "kref_init" },
	{ 0x37a0cba, "kfree" },
	{ 0x9d669763, "memcpy" },
	{ 0xb1f1a419, "sdev_evt_send_simple" },
	{ 0xbbf9f385, "add_disk" },
	{ 0x9775cdc, "kref_get" },
	{ 0xdea1b848, "cdrom_ioctl" },
	{ 0x83866b3e, "scsi_setup_blk_pc_cmnd" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xdd086ba9, "register_cdrom" },
	{ 0xb16b7078, "scsi_device_get" },
	{ 0xc6a824a7, "blk_queue_logical_block_size" },
	{ 0xf17f160e, "dev_get_drvdata" },
	{ 0x9f22bbc8, "scsi_mode_sense" },
	{ 0xcabbb30c, "_unlock_kernel" },
	{ 0xca5dbc50, "scsi_print_sense_hdr" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=scsi_mod,cdrom";


MODULE_INFO(srcversion, "7BD41270FE2B48A3BE12112");
