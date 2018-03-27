export TOP := $(SRCBASE)/router
-include $(TOP)/.config
-include $(SRCBASE)/.config
-include $(SRCBASE)/profile.mak
include $(SRCBASE)/mango.mak
include $(SRCBASE)/platform.mak

ifeq ($(PLATFORM_ARCH),)
export PLATFORM_ARCH := $(PLATFORM)
endif

ifeq ($(or $(PLATFORM_ARCH),$(CROSS_COMPILE),$(CONFIGURE),$(ARCH),$(HOST)),)
$(error Define Platform-specific definitions in platform.mak)
endif

export HOSTCC := gcc
export PLT := $(ARCH)
export TOOLCHAIN := $(shell cd $(dir $(shell which $(CROSS_COMPILE)gcc))/.. && pwd -P)
export CC := $(CROSS_COMPILE)gcc
export GCC := $(CROSS_COMPILE)gcc
export CXX := $(CROSS_COMPILE)g++
export AR := $(CROSS_COMPILE)ar
export AS := $(CROSS_COMPILE)as
export LD := $(CROSS_COMPILE)ld
export NM := $(CROSS_COMPILE)nm
export OBJCOPY := $(CROSS_COMPILE)objcopy
export OBJDUMP := $(CROSS_COMPILE)objdump
export RANLIB := $(CROSS_COMPILE)ranlib
export READELF ?= $(CROSS_COMPILE)readelf
export STRIPX := $(CROSS_COMPILE)strip -x
export STRIP := $(CROSS_COMPILE)strip
export SIZE := $(CROSS_COMPILE)size

# Determine kernel version
SCMD=sed -e 's,[^=]*=[        ]*\([^  ]*\).*,\1,'
KVERSION:=	$(shell grep '^VERSION[ 	]*=' $(LINUXDIR)/Makefile|$(SCMD))
KPATCHLEVEL:=	$(shell grep '^PATCHLEVEL[ 	]*=' $(LINUXDIR)/Makefile|$(SCMD))
KSUBLEVEL:=	$(shell grep '^SUBLEVEL[ 	]*=' $(LINUXDIR)/Makefile|$(SCMD))
KEXTRAVERSION:=	$(shell grep '^EXTRAVERSION[ 	]*=' $(LINUXDIR)/Makefile|$(SCMD))
LINUX_KERNEL=$(KVERSION).$(KPATCHLEVEL).$(KSUBLEVEL)$(KEXTRAVERSION)
LINUX_KERNEL_VERSION=$(shell expr $(KVERSION) \* 65536 + $(KPATCHLEVEL) \* 256 + $(KSUBLEVEL))
ifeq ($(LINUX_KERNEL),)
$(error Empty LINUX_KERNEL variable)
endif
export LINUX_KERNEL
export LIBDIR := $(TOOLCHAIN)/lib
export USRLIBDIR := $(TOOLCHAIN)/usr/lib
export PLATFORMDIR := $(TOP)/$(PLATFORM_ARCH)
export INSTALLDIR := $(PLATFORMDIR)/install
export TARGETDIR := $(PLATFORMDIR)/target
export STAGEDIR := $(PLATFORMDIR)/stage
export PKG_CONFIG_SYSROOT_DIR := $(STAGEDIR)
export PKG_CONFIG_PATH := $(STAGEDIR)/usr/lib/pkgconfig:$(STAGEDIR)/etc/lib/pkgconfig
export PKG_CONFIG_LIBDIR := $(STAGEDIR)/usr/lib/pkgconfig:$(STAGEDIR)/usr/local/lib/pkgconfig:$(STAGEDIR)/etc/lib/pkgconfig
export EXTRACFLAGS += -DLINUX_KERNEL_VERSION=$(LINUX_KERNEL_VERSION) $(if $(STAGING_DIR),--sysroot=$(STAGING_DIR))
export EXTRALDFLAGS += $(if $(STAGING_DIR),--sysroot=$(STAGING_DIR))

CPTMP = @[ -d $(TOP)/dbgshare ] && cp $@ $(TOP)/dbgshare/ || true

export KERNELCC := $(CC)
export KERNELLD := $(LD)
SIZECHECK = @$(SIZE) $@
#	endif
