#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xdd653daa, "module_layout" },
	{ 0xedb22f14, "ata_dummy_port_ops" },
	{ 0xf55cdb89, "ata_port_freeze" },
	{ 0xf9a482f9, "msleep" },
	{ 0xf8f3a0fb, "ata_ratelimit" },
	{ 0xa90c928a, "param_ops_int" },
	{ 0x4feb1e30, "dev_attr_sw_activity" },
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0x37344975, "devm_kzalloc" },
	{ 0xd25140c9, "dev_printk" },
	{ 0x20000329, "simple_strtoul" },
	{ 0xd5152710, "sg_next" },
	{ 0xeae3dfd6, "__const_udelay" },
	{ 0x74c86cc0, "init_timer_key" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0xc85d1a8e, "dev_attr_em_message" },
	{ 0x7d11c268, "jiffies" },
	{ 0x4fdc945d, "sata_deb_timing_normal" },
	{ 0xd86f9593, "ata_ehi_push_desc" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x37befc70, "jiffies_to_msecs" },
	{ 0xea147363, "printk" },
	{ 0x787ff1ee, "ata_std_error_handler" },
	{ 0xe49ff3b0, "ata_wait_register" },
	{ 0x8540ffde, "ata_std_qc_defer" },
	{ 0x85f20151, "ata_link_abort" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0x315818ab, "coherence_flag" },
	{ 0xd6929fdf, "dev_attr_unload_heads" },
	{ 0x9a6221c5, "mod_timer" },
	{ 0xcccfb2fa, "sata_deb_timing_hotplug" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x6c0d7b4e, "ata_ehi_clear_desc" },
	{ 0x9d985481, "sata_port_ops" },
	{ 0xaea389b4, "sata_link_hardreset" },
	{ 0xfd61c9ad, "_dev_info" },
	{ 0x531dcb8, "ata_dev_classify" },
	{ 0x3bd1b1f6, "msecs_to_jiffies" },
	{ 0x8b752ac1, "ata_tf_to_fis" },
	{ 0x7136fc7, "dev_attr_em_message_type" },
	{ 0xc27487dd, "__bug" },
	{ 0x7a089d8e, "ata_wait_after_reset" },
	{ 0x82d74797, "ata_qc_complete_multiple" },
	{ 0xa6bc0763, "ata_link_next" },
	{ 0x9d669763, "memcpy" },
	{ 0x67df75, "ata_tf_from_fis" },
	{ 0x6128b5fc, "__printk_ratelimit" },
	{ 0xd2d0d395, "dev_warn" },
	{ 0x25970f50, "ata_std_postreset" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x66e8413a, "ata_link_online" },
	{ 0xe1da36d, "dev_attr_link_power_management_policy" },
	{ 0x1a5f3a63, "ata_port_abort" },
	{ 0xfebf995, "outer_cache" },
	{ 0x8583ce26, "sata_async_notification" },
	{ 0x8d69549, "dmam_alloc_coherent" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=libata";


MODULE_INFO(srcversion, "7ED6274272C448EF753DD3F");
