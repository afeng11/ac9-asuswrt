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
	{ 0x98e3ce0, "ppp_unregister_compressor" },
	{ 0xe9ef4a47, "ppp_register_compressor" },
	{ 0x315c65fd, "zlib_deflateInit2" },
	{ 0xd6ee688f, "vmalloc" },
	{ 0xf0caf44b, "zlib_deflate_workspacesize" },
	{ 0x999e8297, "vfree" },
	{ 0xf741c793, "zlib_deflateEnd" },
	{ 0x48034724, "zlib_deflateReset" },
	{ 0xaf64ad0d, "zlib_deflate" },
	{ 0x257f448e, "kmalloc_caches" },
	{ 0x4211c3c1, "zlib_inflateInit2" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xce5ac24f, "zlib_inflate_workspacesize" },
	{ 0xd9365f87, "kmem_cache_alloc" },
	{ 0x37a0cba, "kfree" },
	{ 0x77ecac9f, "zlib_inflateEnd" },
	{ 0x3ed63055, "zlib_inflateReset" },
	{ 0x881039d0, "zlib_inflate" },
	{ 0xea147363, "printk" },
	{ 0x668da8d5, "zlib_inflateIncomp" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=zlib_deflate";


MODULE_INFO(srcversion, "1E2B8ED91B14B7085F97770");
