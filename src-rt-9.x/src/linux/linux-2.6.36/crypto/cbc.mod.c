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
	{ 0x86be8231, "crypto_unregister_template" },
	{ 0xb19b9dc1, "crypto_register_template" },
	{ 0x92310a9f, "crypto_spawn_tfm" },
	{ 0x92c0b26c, "crypto_destroy_tfm" },
	{ 0x15a2fb35, "blkcipher_walk_done" },
	{ 0x9d669763, "memcpy" },
	{ 0x8810ad5e, "crypto_xor" },
	{ 0xf904f110, "blkcipher_walk_virt" },
	{ 0x1e8de35a, "crypto_blkcipher_type" },
	{ 0x4a5d519a, "crypto_mod_put" },
	{ 0xa2042c39, "crypto_alloc_instance" },
	{ 0xeb42b3d4, "crypto_attr_alg2" },
	{ 0xd16712f3, "crypto_check_attr_type" },
	{ 0x37a0cba, "kfree" },
	{ 0x2472c87b, "crypto_drop_spawn" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "C019FED99CAB7C1DDDB1F62");
