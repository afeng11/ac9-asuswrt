cmd_kernel/sys_ni.o := arm-brcm-linux-uclibcgnueabi-gcc -Wp,-MD,kernel/.sys_ni.o.d  -nostdinc -isystem /home/mango/develop/am-toolchains/brcm-arm-sdk/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin/../lib/gcc/arm-brcm-linux-uclibcgnueabi/4.5.3/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include -Iinclude  -include include/generated/autoconf.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-brcm-hnd/include -Iarch/arm/plat-brcm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -I/home/mango/data/awrt-mango/src-rt-9.x/src/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/common/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/shared/bcmwifi/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/common/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/common/include/devctrl_if -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/cmn/hal -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/cmn/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/ac/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/ht/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/n/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/lcn/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/lcn40/include -I/home/mango/data/awrt-mango/src-rt-9.x/src/wl/phymods/lcn20/include -DBCMDRIVER -Dlinux -DHNDCTF -DCTFPOOL -DCTFMAP -DPKTC -DCTF_PPPOE -DCTF_L2TP -DCTF_PPTP -DCTF_IPV6 -DBCMFA -DBCM47XX -O2 -D"CONFIG_LINUX_MTD=32" -marm -ffreestanding -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -ggdb -Wframe-larger-than=2048 -fno-stack-protector -fomit-frame-pointer -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(sys_ni)"  -D"KBUILD_MODNAME=KBUILD_STR(sys_ni)"  -c -o kernel/.tmp_sys_ni.o kernel/sys_ni.c

deps_kernel/sys_ni.o := \
  kernel/sys_ni.c \
  include/linux/linkage.h \
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
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/linkage.h \
  include/linux/errno.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  /home/mango/data/awrt-mango/src-rt-9.x/src/linux/linux-2.6.36/arch/arm/include/asm/unistd.h \
    $(wildcard include/config/aeabi.h) \
    $(wildcard include/config/oabi/compat.h) \

kernel/sys_ni.o: $(deps_kernel/sys_ni.o)

$(deps_kernel/sys_ni.o):
