-include $(SRCBASE)/router/.config

export LINUXDIR := $(SRCBASE)/linux/linux-2.6
export BUILD := $(shell (gcc -dumpmachine))
export KERNEL_BINARY=$(LINUXDIR)/arch/arm/boot/zImage
export PLATFORM_ARCH := arm-uclibc
export CROSS_COMPILE := arm-brcm-linux-uclibcgnueabi-
export CROSS_COMPILER := $(CROSS_COMPILE)
export CONFIGURE := ./configure --host=arm-linux --build=$(BUILD)
export HOSTCONFIG := linux-armv4
export BCMEX := _arm
export EXTRA_FLAG := -lgcc_s
export ARCH := arm
export HOST := arm-linux
export TOOLS := $(SRCBASE)/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3
export RTVER := 0.9.32.1
export BCMSUB := brcmarm
export PLATFORM := $(PLATFORM_ARCH)
EXTRA_CFLAGS := -DLINUX26 -DCONFIG_BCMWL5 -DDEBUG_NOISY -DDEBUG_RCTEST -pipe -DTTEST 

export CONFIG_LINUX26=y
export CONFIG_BCMWL5=y

define platformKernelConfig
# prepare config_base
# prepare prebuilt kernel binary
	@( \
	sed -i "/CONFIG_RGMII_BCM_FA/d" $(1); \
	if [ "$(RGMII_BCM_FA)" = "y" ]; then \
		echo "CONFIG_RGMII_BCM_FA=y" >> $(1); \
	else \
		echo "# CONFIG_RGMII_BCM_FA is not set" >> $(1); \
	fi; \
	if [ "$(ARM)" = "y" ]; then \
		if [ "$(HND_ROUTER)" != "y" ]; then \
			mkdir -p $(SRCBASE)/router/ctf_arm/linux; \
		fi; \
       	cp -f $(SRCBASE)/router/ctf_arm/bcm9/ctf.* $(SRCBASE)/router/ctf_arm/linux/;\
		if [ -d $(SRCBASE)/wl/sysdeps/$(BUILD_NAME) ]; then \
			if [ -d $(SRCBASE)/wl/sysdeps/$(BUILD_NAME)/linux ]; then \
				cp -rf $(SRCBASE)/wl/sysdeps/$(BUILD_NAME)/linux $(SRCBASE)/wl/. ; \
			fi; \
			if [ -d $(SRCBASE)/wl/sysdeps/$(BUILD_NAME)/clm ]; then \
				cp -f $(SRCBASE)/wl/sysdeps/$(BUILD_NAME)/clm/src/wlc_clm_data.c $(SRCBASE)/wl/clm/src/. ; \
			fi; \
		elif [ -d $(SRCBASE)/wl/sysdeps/default ]; then \
			if [ -d $(SRCBASE)/wl/sysdeps/default/linux ]; then \
				cp -rf $(SRCBASE)/wl/sysdeps/default/linux $(SRCBASE)/wl/. ; \
			fi; \
			if [ -d $(SRCBASE)/wl/sysdeps/default/clm ]; then \
				cp -f $(SRCBASE)/wl/sysdeps/default/clm/src/wlc_clm_data.c $(SRCBASE)/wl/clm/src/. ; \
			fi; \
		fi; \
		if [ -d $(SRCBASE)/router/wl_arm_9/prebuilt ]; then \
			mkdir $(SRCBASE)/wl/linux ; \
			cp $(SRCBASE)/router/wl_arm_9/prebuilt/wl*.o $(SRCBASE)/wl/linux ; \
		fi; \
		if [ -d $(SRCBASE)/router/et_arm_9/prebuilt ]; then \
			mkdir -p $(SRCBASE)/et/linux ; \
			cp $(SRCBASE)/router/et_arm_9/prebuilt/et.o $(SRCBASE)/et/linux ; \
		fi; \
	fi; \
	if [ "$(SNMPD)" = "y" ]; then \
		if [ -d $(SRCBASE)/router/net-snmp-5.7.2/asus_mibs/sysdeps/$(BUILD_NAME) ]; then \
			rm -f  $(SRCBASE)/router/net-snmp-5.7.2/mibs/RT-*.txt ; \
			rm -f  $(SRCBASE)/router/net-snmp-5.7.2/mibs/TM-*.txt ; \
			rm -rf $(SRCBASE)/router/net-snmp-5.7.2/agent/mibgroup/asus-mib ; \
			cp -rf $(SRCBASE)/router/net-snmp-5.7.2/asus_mibs/sysdeps/$(BUILD_NAME)/$(BUILD_NAME)-MIB.txt $(SRCBASE)/router/net-snmp-5.7.2/mibs ; \
			cp -rf $(SRCBASE)/router/net-snmp-5.7.2/asus_mibs/sysdeps/$(BUILD_NAME)/asus-mib $(SRCBASE)/router/net-snmp-5.7.2/agent/mibgroup ; \
		fi; \
	fi; \
	)
endef

export PLATFORM := arm-uclibc
