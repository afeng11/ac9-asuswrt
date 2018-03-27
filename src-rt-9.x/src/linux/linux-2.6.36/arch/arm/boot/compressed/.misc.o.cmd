cmd_arch/arm/boot/compressed/misc.o := arm-brcm-linux-uclibcgnueabi-gcc -Wp,-MD,arch/arm/boot/compressed/.misc.o.d  -nostdinc -isystem /home/mango/develop/am-toolchains/brcm-arm-sdk/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin/../lib/gcc/arm-brcm-linux-uclibcgnueabi/4.5.3/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-brcm-hnd/include -Iarch/arm/plat-brcm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -I/home/mango/data/awrt-mango/src-rt-9.x/src/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/common/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/shared/bcmwifi/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/common/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/common/include/devctrl_if -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/cmn/hal -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/cmn/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/ac/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/ht/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/n/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/lcn/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/lcn40/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/lcn20/include -DBCMDRIVER -Dlinux -DHNDCTF -DCTFPOOL -DCTFMAP -DPKTC -DCTF_PPPOE -DCTF_L2TP -DCTF_PPTP -DCTF_IPV6 -DBCMFA -DBCM47XX -O2 -D"CONFIG_LINUX_MTD=32" -marm -ffreestanding -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -ggdb -Wframe-larger-than=2048 -fno-stack-protector -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -fpic -fno-builtin    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(misc)"  -D"KBUILD_MODNAME=KBUILD_STR(misc)"  -c -o arch/arm/boot/compressed/.tmp_misc.o arch/arm/boot/compressed/misc.c

deps_arch/arm/boot/compressed/misc.o := \
  arch/arm/boot/compressed/misc.c \
    $(wildcard include/config/debug/icedcc.h) \
    $(wildcard include/config/cpu/v6.h) \
    $(wildcard include/config/cpu/v7.h) \
    $(wildcard include/config/cpu/xscale.h) \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/buzzz/func.h) \
  include/linux/compiler-gcc4.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/posix_types.h \
  include/linux/linkage.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/linkage.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/string.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/unaligned.h \
  include/linux/unaligned/le_byteshift.h \
  include/linux/unaligned/be_byteshift.h \
  include/linux/unaligned/generic.h \
  arch/arm/plat-brcm/include/mach/uncompress.h \
    $(wildcard include/config/debug/ll.h) \
    $(wildcard include/config/debug/uart/addr.h) \
  include/linux/io.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/has/ioport.h) \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/io.h \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/swab.h \
  include/linux/byteorder/generic.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/memory.h \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/bcm947xx.h) \
    $(wildcard include/config/bcm/gmac3.h) \
  include/linux/const.h \
  arch/arm/plat-brcm/include/mach/memory.h \
    $(wildcard include/config/sparsemem.h) \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/system.h \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/32v6k.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/irqflags.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/hwcap.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  include/asm-generic/cmpxchg-local.h \
  arch/arm/plat-brcm/include/mach/io.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v3.h) \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/glue.h \
    $(wildcard include/config/cpu/arm610.h) \
    $(wildcard include/config/cpu/arm710.h) \
    $(wildcard include/config/cpu/abrt/lv4t.h) \
    $(wildcard include/config/cpu/abrt/ev4.h) \
    $(wildcard include/config/cpu/abrt/ev4t.h) \
    $(wildcard include/config/cpu/abrt/ev5tj.h) \
    $(wildcard include/config/cpu/abrt/ev5t.h) \
    $(wildcard include/config/cpu/abrt/ev6.h) \
    $(wildcard include/config/cpu/abrt/ev7.h) \
    $(wildcard include/config/cpu/pabrt/legacy.h) \
    $(wildcard include/config/cpu/pabrt/v6.h) \
    $(wildcard include/config/cpu/pabrt/v7.h) \
  include/asm-generic/getorder.h \
  arch/arm/plat-brcm/include/mach/io_map.h \
  arch/arm/plat-brcm/include/mach/vmalloc.h \
    $(wildcard include/config/vmsplit/3g.h) \
    $(wildcard include/config/vmsplit/2g.h) \
    $(wildcard include/config/vmsplit/1g.h) \
  arch/arm/plat-brcm/include/plat/plat-bcm5301x.h \
    $(wildcard include/config/plat/cca/gpio/irq.h) \

arch/arm/boot/compressed/misc.o: $(deps_arch/arm/boot/compressed/misc.o)

$(deps_arch/arm/boot/compressed/misc.o):
