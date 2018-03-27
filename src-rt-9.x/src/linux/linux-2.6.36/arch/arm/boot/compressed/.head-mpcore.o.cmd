cmd_arch/arm/boot/compressed/head-mpcore.o := arm-brcm-linux-uclibcgnueabi-gcc -Wp,-MD,arch/arm/boot/compressed/.head-mpcore.o.d  -nostdinc -isystem /home/mango/develop/am-toolchains/brcm-arm-sdk/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin/../lib/gcc/arm-brcm-linux-uclibcgnueabi/4.5.3/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-brcm-hnd/include -Iarch/arm/plat-brcm/include -D__ASSEMBLY__ -I/home/mango/data/awrt-mango/src-rt-9.x/src/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/common/include -DBCM47XX -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables  -D__LINUX_ARM_ARCH__=7 -march=armv7-a  -include asm/unified.h -msoft-float     -Wa,-march=all    -c -o arch/arm/boot/compressed/head-mpcore.o arch/arm/boot/compressed/head-mpcore.S

deps_arch/arm/boot/compressed/head-mpcore.o := \
  arch/arm/boot/compressed/head-mpcore.S \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/linkage.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/system.h \
    $(wildcard include/config/buzzz/func.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/32v6k.h) \

arch/arm/boot/compressed/head-mpcore.o: $(deps_arch/arm/boot/compressed/head-mpcore.o)

$(deps_arch/arm/boot/compressed/head-mpcore.o):
