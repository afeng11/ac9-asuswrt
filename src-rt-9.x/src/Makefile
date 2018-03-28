PLATFORM_ROUTER:=

export HND_ROUTER := n
# declare the init var here. Don't include router's arch related var here due to it will break the multi-arch rules

export SRCBASE := $(shell pwd)
export SRC_ROOT := $(SRCBASE)/../../src
export BUSYBOX := busybox-1.17.4
export BUSYBOX_DIR := $(SRCBASE)/router/$(BUSYBOX)

export SRCBASEDIR := $(shell pwd | sed 's/.*release\///g')
RELEASEDIR := $(shell (cd $(SRC_ROOT)/.. && pwd -P))
export PATH := $(RELEASEDIR)/tools:$(SRCBASE)/ctools:$(PATH):$(SRCBASE)/toolchain/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin

# tmp depend on busybox
E2FSPROGS := $(if $(filter $(BUSYBOX),busybox-1.17.4),n,y)

include ./mango.mak
include ./version.conf
include ./router/extendno.conf
-include ./.config
export CONFIG_BCMWL5=y
export CONFIG_LINUX26=y
#
# include platform.mak after include .config
# some definitions in platform.mak may be defined as different value, if .config exist.
include ./platform.mak
include ./setting.mak


export PLATFORMDIR := $(SRCBASE)/router/$(PLATFORM)

ifneq ($(BUILD_NAME),)
ifneq ($(BASE_MODEL),)
MODEL = $(subst -,,$(subst +,P,$(BASE_MODEL)))
else ifneq ($(findstring 4G-,$(BUILD_NAME)),)
MODEL = RT$(subst -,,$(BUILD_NAME))
else ifneq ($(findstring DSL,$(BUILD_NAME)),)
MODEL = $(subst -,_,$(BUILD_NAME))
else
MODEL = $(subst -,,$(subst +,P,$(BUILD_NAME)))
endif
export MODEL
export CFLAGS += -D$(MODEL)
export $(MODEL):=y
endif

EXTRA_KERNEL_YES_CONFIGS_1 := $(filter %=y %=Y,$(EXTRA_KERNEL_CONFIGS))
EXTRA_KERNEL_NO_CONFIGS_1 := $(filter %=n %=N,$(EXTRA_KERNEL_CONFIGS))
EXTRA_KERNEL_MOD_CONFIGS_1 := $(filter %=m %=M,$(EXTRA_KERNEL_CONFIGS))
EXTRA_KERNEL_VAL_CONFIGS := $(filter-out $(EXTRA_KERNEL_YES_CONFIGS_1) $(EXTRA_KERNEL_NO_CONFIGS_1) $(EXTRA_KERNEL_MOD_CONFIGS_1),$(EXTRA_KERNEL_CONFIGS))

EXTRA_KERNEL_YES_CONFIGS := $(subst =y,,$(subst =Y,,$(EXTRA_KERNEL_YES_CONFIGS_1)))
EXTRA_KERNEL_NO_CONFIGS := $(subst =n,,$(subst =N,,$(EXTRA_KERNEL_NO_CONFIGS_1)))
EXTRA_KERNEL_MOD_CONFIGS := $(subst =m,,$(subst =M,,$(EXTRA_KERNEL_MOD_CONFIGS_1)))

ifeq ($(NVRAM_SIZE),)
ifeq ($(NVRAM_64K),y)
NVRAM_SIZE=0x10000
else
NVRAM_SIZE=0x8000
endif
endif

CTAGS_EXCLUDE_OPT := --exclude=kernel_header --exclude=$(PLATFORM)
CTAGS_DEFAULT_DIRS := $(SRC_ROOT)/router/rc $(SRC_ROOT)/router/httpd $(SRC_ROOT)/router/shared $(SRC_ROOT)/router/www

uppercase_N = $(shell echo $(N) | tr a-z  A-Z)
lowercase_N = $(shell echo $(N) | tr A-Z a-z)
uppercase_B = $(shell echo $(BUILD_NAME) | tr a-z  A-Z)
lowercase_B = $(shell echo $(BUILD_NAME) | tr A-Z a-z)
BUILD_TIME := $(shell LC_ALL=C date -u)
BUILD_USER ?= $(shell whoami)

ifeq ($(CONFIG_LINUX26),y)
mips_rev = $(if $(filter $(MIPS32),r2),MIPSR2,MIPSR1)
KERN_SIZE_OPT ?= n
else
mips_rev =
KERN_SIZE_OPT ?= y
endif

ifeq ($(FAKEID),y)
export IMGNAME := $(BUILD_NAME)_$(KERNEL_VER).$(FS_VER)_$(FORCE_SN)_$(SWPJVER)$(FORCE_EN)
else
export IMGNAME := $(BUILD_NAME)_$(KERNEL_VER).$(FS_VER)_$(SERIALNO)_$(SWPJVER)$(EXTENDNO)
endif



# If platform specific software packages exist, PLATFORM_ROUTER should be defined in platform.mak
export PLATFORM_ROUTER

default:
	$(Q) $(make) rt-ac1200g+

rt_ver:
	echo "make rt_ver "
	@echo '#ifndef RTVERSION' > router/shared/version.h
	@echo '#define RT_MAJOR_VERSION "$(KERNEL_VER)"' >> router/shared/version.h
	@echo '#define RT_MINOR_VERSION "$(FS_VER)"' >> router/shared/version.h
	@echo '#define RT_VERSION "$(KERNEL_VER).$(FS_VER)"' >> router/shared/version.h
	@echo '#define RT_SERIALNO "$(SERIALNO)"' >> router/shared/version.h
	@echo '#define RT_EXTENDNO "$(EXTENDNO)"' >> router/shared/version.h
	@echo '#define RT_SWPJVERNO "$(SWPJVERNO)"' >> router/shared/version.h
	@echo '#define RT_BUILD_NAME "$(BUILD_NAME)"' >> router/shared/version.h
	@echo '#define RT_BUILD_INFO "$(BUILD_TIME) $(BUILD_USER)@$(BUILD_INFO)"' >> router/shared/version.h
	@echo '#endif' >> router/shared/version.h
	@echo '$(BUILD_NAME)_$(KERNEL_VER).$(FS_VER) $(BUILD_TIME)' > router/shared/version
	@echo 'EXTENDNO=$(EXTENDNO)' > router/extendno.conf

rt_ver_ntools:
	-@rm -f ntools/version
	-@echo 'KERNEL_IMAGE = $(BUILD_NAME)_$(KERNEL_VER).$(FS_VER)_$(SERIALNO)_$(EXTENDNO).trx' >> ntools/version

all: rt_ver rt_ver_ntools
	echo "Building $(BUILD_NAME)_$(KERNEL_VER).$(FS_VER)_$(SERIALNO).trx"
	@rm -rf image
	@mkdir image
	$(MAKE) -C router all
	$(MAKE) -C router install
	@$(MAKE) image

image:
	@if [ -z "$(BUILD_NAME)" ]; then \
		echo "No BUILD_NAME is assigned"; \
		exit 1; \
	fi
	@rm -f image/$(BUILD_NAME)_$(KERNEL_VER).$(FS_VER)_$(SERIALNO).trx
	@$(MAKE) -C router image
	$(MAKE) -C ctools clean
	$(MAKE) -C ctools $(if $(CONFIG_BCMWL5),TRX=NEW,)
	# Create generic TRX image
	ctools/objcopy -O binary -R .note -R .note.gnu.build-id -R .comment -S $(LINUXDIR)/vmlinux $(PLATFORMDIR)/piggy
	ctools/lzma_4k e $(PLATFORMDIR)/piggy $(PLATFORMDIR)/vmlinuz-lzma
	ctools/trx -o image/linux-lzma.trx $(PLATFORMDIR)/vmlinuz-lzma $(PLATFORMDIR)/target.image
	ctools/trx_asus -i image/linux-lzma.trx -r $(BUILD_NAME),$(KERNEL_VER).$(FS_VER),$(SERIALNO),$(EXTENDNO),image/$(IMGNAME).trx
	@rm -f image/linux-lzma.trx
	md5sum image/$(IMGNAME).trx > image/$(IMGNAME).md5
	ln -sf $(IMGNAME).trx image/$(BUILD_NAME).trx
	ln -sf $(LINUXDIR)/vmlinux image/vmlinux
	ln -sf $(LINUXDIR)/vmlinux.o image/vmlinux.o

cleantools:
	@[ ! -d $(LINUXDIR)/scripts/squashfs ] || \
		$(MAKE) -C $(LINUXDIR)/scripts/squashfs clean
	@$(MAKE) -C btools clean
	@$(MAKE) -C ctools clean

cleankernel:
	@cd $(LINUXDIR) && \
	mv .config save-config && \
	$(MAKE) distclean || true; \
	cp -p save-config .config || true

kernel:	
	$(MAKE) -C router kernel
	@[ ! -e $(KERNEL_BINARY) ] || ls -l $(KERNEL_BINARY)

distclean: clean cleankernel cleantools cleanlibc
ifneq ($(INSIDE_MAK),1)
	@$(MAKE) -C router $@ INSIDE_MAK=1
endif
	mv router/$(BUSYBOX)/.config busybox-saved-config || true
	@$(MAKE) -C router/$(BUSYBOX) distclean
	@rm -f router/$(BUSYBOX)/config_current
	@cp -p busybox-saved-config router/$(BUSYBOX)/.config || true
	@cp -p router/$(BUSYBOX)/.config  router/$(BUSYBOX)/config_current || true
	@rm -f router/config_current
	@rm -f router/.config.cmd router/.config.old router/.config
	@rm -f router/libfoo_xref.txt
	@-rm -f .config

IPSEC_ID_POOL =	"QUICKSEC""STRONGSWAN"


mk-%:
	@$(MAKE) -C router $(shell echo $@ | sed s/mk-//)

bbconfig:
	@cp $(BUSYBOX_DIR)/config_base $(BUSYBOX_DIR)/config_$(lowercase_B)
	$(call BusyboxOptions, $(BUSYBOX_DIR)/config_$(lowercase_B))
	@cd $(BUSYBOX_DIR) && \
		rm -f config_current ; \
		ln -s config_$(lowercase_B) config_current ; \
		cp config_current .config
	$(MAKE) -C router bboldconf
	@echo done

bin:
	@cp router/config_base router/config_$(lowercase_B)
	@cp $(BUSYBOX_DIR)/config_base $(BUSYBOX_DIR)/config_$(lowercase_B)
	@cp $(LINUXDIR)/config_base.6a $(LINUXDIR)/config_$(lowercase_B)
	@echo "" >> router/config_$(lowercase_B)
	$(call RouterOptions, router/config_$(lowercase_B))
	$(call KernelConfig, $(LINUXDIR)/config_$(lowercase_B))
	$(call BusyboxOptions, $(BUSYBOX_DIR)/config_$(lowercase_B))
	@$(MAKE) setprofile
	$(MAKE) all

define save_src_config
	@if [ -f .config ] ; then \
		if [ $(shell echo $(1) | grep -i "^RT4G-") ] ; then \
			NEW_BUILD_NAME=$(shell echo $(1) | tr a-z A-Z | sed 's/^RT//') ; \
		else \
			NEW_BUILD_NAME=$(shell echo $(1) | tr a-z A-Z) ; \
		fi ; \
		echo "CONFIGURED MODEL: $(BUILD_NAME)" ; \
		echo "SPECIFIED  MODEL: $${NEW_BUILD_NAME}" ; \
		echo "----------------------------------------------------------------------------" ; \
		if [ "$(BUILD_NAME)" != "$${NEW_BUILD_NAME}" ] ; then \
			echo "!!! MODEL NAME MISMATCH.  REMOVE .config AND MAKE AGAIN. !!!" ; \
			exit 1; \
		fi ; \
	fi ;
	@if [ -z '$($(shell echo $(1) | tr a-z A-Z))' ] ; then \
		echo NO THIS TARGET $(1) ; exit 1; \
	fi ;
	@if [ -f .config ] ; then \
			echo "Clean old model configuration"; \
			while read line ; do \
				var=`echo "$${line}"|sed -e "s,^export[       ]*,," -e "s,=.*$$,,"` ; \
				unset "$${var}" ; \
			done < .config; \
			echo "Update model configuration" ; \
			rm -f .config ; \
	fi ;
	@for var in $($(shell echo $(1) | tr a-z A-Z)) ; do \
		echo "export $${var}" >> .config ; \
		export $${var} ; \
	done ;
	@chmod 666 .config;
endef

rt-%:
	@echo $(BUILD_NAME)
	$(call save_src_config, $@)
	#$(MAKE) bin

setprofile:
	@echo "Using $(N) profile, $(B) build config."
	@cd $(LINUXDIR) ; \
		rm -f config_current ; \
		ln -s config_$(lowercase_B) config_current ; \
		cp -f config_current .config

	@cd $(BUSYBOX_DIR) && \
		rm -f config_current ; \
		ln -s config_$(lowercase_B) config_current ; \
		cp config_current .config

	@cd router ; \
		rm -f config_current ; \
		ln -s config_$(lowercase_B) config_current ; \
		cp config_current .config

	@if grep -q "CONFIG_RT3352_INIC_MII=m" $(LINUXDIR)/.config ; then \
		sed -i "/RTCONFIG_WLMODULE_RT3352_INIC_MII/d" router/.config; \
		echo "RTCONFIG_WLMODULE_RT3352_INIC_MII=y" >> router/.config; \
	fi
	@if grep -q "CONFIG_RTPCI_AP=m" $(LINUXDIR)/.config ; then \
		sed -i "/RTCONFIG_WLMODULE_RT3090_AP/d" router/.config; \
		echo "RTCONFIG_WLMODULE_RT3090_AP=y" >> router/.config; \
	fi
	@if grep -q "CONFIG_MT7610_AP=m" $(LINUXDIR)/.config ; then \
		sed -i "/RTCONFIG_WLMODULE_MT7610_AP/d" router/.config; \
		echo "RTCONFIG_WLMODULE_MT7610_AP=y" >> router/.config; \
	fi

	@if grep -q "CONFIG_RLT_WIFI=m" $(LINUXDIR)/.config ; then \
		sed -i "/RTCONFIG_WLMODULE_RLT_WIFI/d" router/.config; \
		echo "RTCONFIG_WLMODULE_RLT_WIFI=y" >> router/.config; \
	fi
	@if grep -q "CONFIG_WIFI_MT7603E=m" $(LINUXDIR)/.config ; then \
		sed -i "/RTCONFIG_WLMODULE_MT7603E_AP/d" router/.config; \
		echo "RTCONFIG_WLMODULE_MT7603E_AP=y" >> router/.config; \
	fi

	@if grep -q "CONFIG_RALINK_MT7628=y" $(LINUXDIR)/.config ; then \
		sed -i "/RTCONFIG_WLMODULE_MT7628_AP/d" router/.config; \
		echo "RTCONFIG_WLMODULE_MT7628_AP=y" >> router/.config; \
	fi

	@if grep -q "CONFIG_CHIP_MT7615E=y" $(LINUXDIR)/.config ; then \
		sed -i "/RTCONFIG_WLMODULE_MT7615E_AP/d" router/.config; \
		echo "RTCONFIG_WLMODULE_MT7615E_AP=y" >> router/.config; \
	fi
	$(MAKE) -C router oldconfig

help:
	@echo "make [model id]"
	@echo "make mk-[package]"
	@echo "..etc..      other build configs"
	@echo "clean        -C router clean"
	@echo "cleanimage   rm -rf image"
	@echo "cleantools   clean btools, mksquashfs"
	@echo "cleankernel  -C Linux distclean (but preserves .config)"
	@echo "distclean    distclean of Linux & busybox (but preserve .configs)"
	@echo "prepk        -C Linux oldconfig dep"
	@echo "libc         -C uClibc clean, all, install"

kernel-tags: dummy
	$(MAKE) -C $(LINUXDIR) tags

tags: kernel-tags
	ctags -R $(CTAGS_EXCLUDE_OPT) $(CTAGS_DEFAULT_DIRS)

stage-tags:
	$(MAKE) -C router stage-tags

cscope: dummy
	cscope -bkR -s `echo "$(CTAGS_DEFAULT_DIRS)" | sed -e "s, , -s ,g"` -s $(SRC_ROOT)/router

all-tags: kernel-tags
	ctags -R shared $(CTAGS_EXCLUDE_OPT) $(SRC_ROOT)/router

clean-tags: dummy
	$(RM) -f $(LINUXDIR)/tags tags

clean-cscope: dummy
	$(RM) -f $(LINUXDIR)/cscope.* cscope.*

install gen_target:
ifeq ($(RTCONFIG_REALTEK),y)
	@$(MAKE) -C router gen_kernelrelease
endif
ifneq ($(PLATFORM_ROUTER),)
	$(MAKE) -C $(PLATFORM_ROUTER) $@
endif
	$(MAKE) -C router $@

gen_prebuilt:
	-mkdir -p $(PBDIR)
	$(MAKE) -f upb.mak PBDIR=${PBDIR}
	@if [ -f .gpl_excludes_router ]; then cp -f .gpl_excludes_router ${PBDIR}/release/.; fi

#
# Generic rules for platform specific software packages.
#

ifneq ($(PLATFORM_ROUTER),)
$(PLATFORM_ROUTER)/%: dummy
	@[ ! -d $(PLATFORM_ROUTER)/$* ] || $(MAKE) -C $(PLATFORM_ROUTER) $*

$(PLATFORM_ROUTER)/%-clean: dummy
	@-[ ! -d $(PLATFORM_ROUTER)/$* ] || $(MAKE) -C $(PLATFORM_ROUTER) $*-clean

$(PLATFORM_ROUTER)/%-install: dummy
	@[ ! -d $(PLATFORM_ROUTER)/$* ] || $(MAKE) -C $(PLATFORM_ROUTER) $* $*-install

$(PLATFORM_ROUTER)/%-stage: dummy
	@[ ! -d $(PLATFORM_ROUTER)/$* ] || $(MAKE) -C $(PLATFORM_ROUTER) $* $*-stage

$(PLATFORM_ROUTER)/%-build: dummy
	$(MAKE) $(PLATFORM_ROUTER)/$*-clean $(PLATFORM_ROUTER)/$*

$(PLATFORM_ROUTER)/%-tags: dummy
	[ ! -d $(PLATFORM_ROUTER)/$* ] || ctags -a -R $(CTAGS_EXCLUDE_OPT) $(PLATFORM_ROUTER)/$*
endif

#
# Generic rules
#

%: dummy
	@[ ! -d router/$* ] || $(MAKE) -C router $@


%-clean: dummy
	@-[ ! -d router/$* ] || $(MAKE) -C router $@

%-install: dummy
	@[ ! -d router/$* ] || $(MAKE) -C router $* $@

%-stage: dummy
	@[ ! -d router/$* ] || $(MAKE) -C router $* $@

%-build: dummy
	$(MAKE) $*-clean $*

%-tags: dummy
	@[ ! -d router/$* ] || ctags -a -R $(CTAGS_EXCLUDE_OPT) $(SRC_ROOT)/router/$*

get_extendno:
	@if [ "$(ID)" == "" ]; then echo "No ID is assigned"; exit 1; fi
	git log --pretty=oneline asuswrt_$(KERNEL_VER).$(FS_VER).$(SERIALNO)..$(ID) | wc -l

.PHONY: all clean distclean cleanimage cleantools cleankernel prepk what setprofile libc help image default bin_file
.PHONY: a b c d m Makefile allversions
.PHONY: tags
.PHONY: dummy