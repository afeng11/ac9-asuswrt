include ../common.mak
include $(SRCBASE)/.config

CFLAGS += -Os -Wall $(EXTRACFLAGS) -fPIC
CFLAGS += -I. -I$(TOP)/shared -I$(SRCBASE)/include
CFLAGS += -I$(LINUXDIR)/include
CFLAGS += -D__EXPORTED_HEADERS__
CFLAGS += -DTEST1

ifeq ($(RTCONFIG_SHP),y)
CFLAGS += -DSHP
endif

ifeq ($(RTCONFIG_BCMWL6),y)
CFLAGS += -I$(SRCBASE)/shared/bcmwifi/include
CFLAGS += -I$(SRCBASE)/common/include
ifeq ($(RTCONFIG_BCM7)$(RTCONFIG_HSPOT),y)
CFLAGS += ${WLAN_StdIncPathA}
endif
else
CFLAGS += -I$(SRCBASE)/shared
endif


ifeq ($(RTCONFIG_BCMSMP),y)
CFLAGS += -DSMP
endif

ifeq ($(RTCONFIG_5301X),y)
CFLAGS += -DBCM5301X
endif

include $(SRCBASE)/.config


ifeq (2_6_36,$(LINUX_VERSION))
CFLAGS += -DAUTOFW_PORT_DEPRECATED
endif

CFLAGS += -DTRAFFIC_MGMT

ifeq ($(RTCONFIG_BCM7)$(RTCONFIG_HSPOT),y)
CFLAGS += -DD11AC_IOTYPES
endif

OBJS = shutils.o linux_timer.o defaults.o model.o rtstate.o boardapi.o
OBJS += network_utility.o
OBJS += misc.o version.o files.o strings.o process.o 
OBJS += bin_sem_asus.o semaphore.o pids.o $(if $(wildcard notify_rc.c),notify_rc.o,prebuild/notify_rc.o)
OBJS += discover.o
OBJS += base64.o
OBJS += nvparse.o
OBJS += bwdpi_utils.o
OBJS += bwdpi_utils.o
OBJS += mac_name_tab.o
OBJS += stun.o
ifeq ($(RTCONFIG_TRAFFIC_LIMITER),y)
OBJS += tld_utils.o
endif
ifeq ($(RTCONFIG_REALTEK),y)
	# do nothing #
else ifeq ($(RTCONFIG_BCM7),y)
OBJS += et_linux.o bcmwifi_channels.o
else ifeq ($(RTCONFIG_HSPOT),y)
OBJS += bcmwifi_channels.o
endif
ifeq ($(or $(RTCONFIG_BCM_7114),$(HND_ROUTER)),y)
OBJS += confmtd_utils.o
ifeq ($(RTCONFIG_WBD),y)
OBJS += wbd_rc_shared.o
endif

endif
ifeq ($(RTCONFIG_REALTEK),y)
else ifeq ($(RTCONFIG_RALINK),y)
else ifeq ($(RTCONFIG_QCA),y)
else ifeq ($(RTCONFIG_ALPINE),y)
else ifeq ($(RTCONFIG_LANTIQ),y)
else
# Broadcom
OBJS += wl.o wl_linux.o
OBJS += broadcom.o api-broadcom.o

ifeq ($(RTCONFIG_STA_MONITOR),y)
OBJS += bcm_stamon.o
endif
endif

ifeq ($(RTCONFIG_USB),y)
OBJS += usb.o

ID_CFLAGS += -I$(TOP)/$(BUSYBOX_DIR)/include
ID_CFLAGS += -I$(TOP)/$(BUSYBOX_DIR)/util-linux/volume_id
ID_CFLAGS += -include $(TOP)/$(BUSYBOX_DIR)/include/autoconf.h
ID_CFLAGS += -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64
#ID_CFLAGS += -fdata-sections -ffunction-sections
ID_OBJS  = $(TOP)/$(BUSYBOX_DIR)/util-linux/volume_id/util.o
ID_OBJS += $(TOP)/$(BUSYBOX_DIR)/util-linux/volume_id/linux_swap.o
ID_OBJS += $(TOP)/$(BUSYBOX_DIR)/util-linux/volume_id/ext.o
ID_OBJS += $(TOP)/$(BUSYBOX_DIR)/util-linux/volume_id/fat.o
ID_OBJS += $(TOP)/$(BUSYBOX_DIR)/util-linux/volume_id/ntfs.o
ID_OBJS += $(if $(HFS),$(TOP)/$(BUSYBOX_DIR)/util-linux/volume_id/hfs.o)
ID_OBJS += $(if $(HFS),$(patsubst %.c,%.o,$(wildcard $(TOP)/$(BUSYBOX_DIR)/libbb/hash_md5.c)))
ID_OBJS += $(if $(HFS),$(patsubst %.c,%.o,$(wildcard $(TOP)/$(BUSYBOX_DIR)/libbb/bb_bswap_64.c)))
ID_OBJS += volume_id.o
#OBJS += volume_id.lib.o
OBJS += $(notdir $(ID_OBJS))

ifeq ($(RTCONFIG_USB_MODEM),y)
CFLAGS += -I$(TOP)/libdisk
OBJS += at_cmd.o
endif
endif

ifeq ($(RTCONFIG_BCMARM),y)
OBJS += ifaddrs.o
endif


ifeq ($(RTCONFIG_BLINK_LED),y)
CFLAGS	+= -I$(TOP)/bled
OBJS	+= bled.o
endif

ifeq ($(RTCONFIG_SAVEJFFS),y)
OBJS	+= $(if $(wildcard jffs_cfgs.c),jffs_cfgs.o,prebuild/jffs_cfgs.o)
endif

ifeq ($(RTCONFIG_TCODE),y)
OBJS	+= $(if $(wildcard tcode.c),tcode.o,prebuild/tcode.o)
endif

OBJS += $(if $(wildcard shutils_private.c),shutils_private.o,prebuild/shutils_private.o)
OBJS += $(if $(wildcard spwenc.c), spwenc.o, prebuild/spwenc.o)

ifeq ($(CONFIG_BCMWL5),y)
CFLAGS += -DTRX_NEW
OBJS += private.o
OBJS += wlif_utils.o UdpLib.o bcmutils.o
OBJS += bcmwifi_channels.o
endif

vpath %.c sysdeps $(SRCBASE)/shared/ $(WLAN_ComponentSrcDirs)
vpath %.c sysdeps/broadcom  $(SRCBASE)/shared/bcmwifi/src

all: libshared.so libshared.a

libshared.so: $(OBJS)
	@echo " [shared] LD $@"
	@$(LD) $(LDFLAGS) -shared -o $@ $^
	$(SIZECHECK)
	$(CPTMP)

libshared.a: $(OBJS)
	@echo " [shared] AR $@"
	@rm -f $@
	@$(AR) cru $@ $^

install: all
	@echo " [shared] Installing as $(INSTALLDIR)/usr/lib/libshared.so"
	@install -d $(INSTALLDIR)/usr/lib
	@install -m 755 libshared.so $(INSTALLDIR)/usr/lib
	@$(STRIP) $(INSTALLDIR)/usr/lib/libshared.so

clean:
	rm -f *.o *.so *.a .*.depend *.prep sysdeps/*.o sysdeps/broadcom/*.o sysdeps/ralink/*.o sysdeps/qtn/*.o

private.o:
	@-cp -f ./prebuild/private.o .


ifeq ($(RTCONFIG_USB),y)
vpath %.c $(sort $(dir $(ID_OBJS)))
$(notdir $(ID_OBJS)): %.o: %.c .%.depend
	@echo " [shared] CC $@"
	@$(CC) $(CFLAGS) $(ID_CFLAGS) -o $@ -c $<

$(patsubst %.o,.%.depend,$(notdir $(ID_OBJS))): .%.depend: %.c
	@$(CC) $(CFLAGS) $(ID_CFLAGS) -M $< > $@

# ld -r --gc-sections is broken, so don't use it for now
#volume_id.lib.o: $(notdir $(ID_OBJS))
#	@echo " [shared] LD $@"
#	@$(LD) -r -e find_label_or_uuid --gc-sections -o $@ $(notdir $(ID_OBJS))
endif

%.o: %.c .%.depend
	@echo " [shared] CC $@"
	@$(CC) $(CFLAGS) -o $@ -c $<

prebuild/%.o:
	#nothing to do...

.depend: $(OBJS:%.o=%.c)
	@$(CC) $(CFLAGS) -M $^ > .depend

.%.depend: %.c
	@$(CC) $(CFLAGS) -M $< > $@

.defaults.depend .tcode.depend .hw_auth.depend: .%.depend: %.c %.prep
	@$(CC) $(CFLAGS) -M $< > $@

%.prep: %.c
	@$(CC) $(CFLAGS) -E $< > $@

-include $(OBJS:%.o=.%.depend)
