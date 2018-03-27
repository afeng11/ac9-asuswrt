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
	{ 0x2e5810c6, "__aeabi_unwind_cpp_pr1" },
	{ 0xd8f795ca, "del_timer" },
	{ 0xa100f1b, "emfc_mfdb_membership_add" },
	{ 0xb85ff2a8, "osl_mfree" },
	{ 0xdf018e44, "emfc_mfdb_membership_del" },
	{ 0x7ce348f, "dev_get_by_name" },
	{ 0x2305923a, "skb_clone" },
	{ 0x751800a7, "emfc_igmp_snooper_unregister" },
	{ 0xb5298c76, "remove_proc_entry" },
	{ 0x74c86cc0, "init_timer_key" },
	{ 0x3c2c5af5, "sprintf" },
	{ 0x7d11c268, "jiffies" },
	{ 0xe2d5255a, "strcmp" },
	{ 0x849733d, "emfc_rtport_add" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x764879d, "netlink_kernel_create" },
	{ 0xd1007a33, "dev_alloc_skb" },
	{ 0xea147363, "printk" },
	{ 0xbdf539f1, "netlink_kernel_release" },
	{ 0x328a05f1, "strncpy" },
	{ 0x8468a9c1, "osl_attach" },
	{ 0xea364e7, "skb_push" },
	{ 0x9a6221c5, "mod_timer" },
	{ 0xe575f028, "netlink_unicast" },
	{ 0x8cfc414e, "add_timer" },
	{ 0x4ba1611f, "skb_pull" },
	{ 0x7fc01577, "init_net" },
	{ 0x3ff62317, "local_bh_disable" },
	{ 0x799aca4, "local_bh_enable" },
	{ 0xcffb6db, "create_proc_entry" },
	{ 0x1ec12ca0, "bcm_binit" },
	{ 0xdf35b547, "emfc_igmp_snooper_register" },
	{ 0x78c1ab7, "bcm_bprintf" },
	{ 0xe2e8f7ee, "emfc_rtport_del" },
	{ 0x1eda5758, "osl_detach" },
	{ 0x9d669763, "memcpy" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x58c774ac, "osl_malloc" },
	{ 0xc1ae8655, "consume_skb" },
	{ 0x3a193735, "dev_queue_xmit" },
	{ 0xdc6a3522, "skb_put" },
	{ 0xe914e41e, "strcpy" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=emf";

