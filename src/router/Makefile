export HND_ROUTER := n

include common.mak
include $(SRCBASE)/.config
export CFLAGS += -DBCMWPA2
export CFLAGS += -DBCMQOS
export CFLAGS += -DEXT_ACS
export CFLAGS += -DD11AC_IOTYPES
export CFLAGS += -DPHYMON
export CFLAGS += -DPROXYARP
export CFLAGS += -DTRAFFIC_MGMT
export CFLAGS += -DTRAFFIC_MGMT_RSSI_POLICY
export CONFIG_MFP=y
export CFLAGS += -DMFP
export CFLAGS += -D__CONFIG_MFP__
export CFLAGS += $(EXTRACFLAGS)


# New Broadcom/Ralink/MTK/QCA/RTK platform.
KPATH_2636_OR_3X = $(if $(or $(findstring linux-2.6.36,$(LINUXDIR)),$(findstring linux-3.x,$(LINUXDIR)),$(findstring linux-3.3.x,$(LINUXDIR)),$(findstring linux-3.3.8,$(LINUXDIR)),$(findstring linux-3.4.x,$(LINUXDIR)),$(findstring linux-4.1,$(LINUXDIR)),$(findstring linux-3.10,$(LINUXDIR)),$(findstring linux-3.14.x,$(LINUXDIR))),y)
# New Ralink/MTK/QCA platform.
KPATH_2636X_OR_3X = $(if $(or $(findstring linux-2.6.36.x,$(LINUXDIR)),$(findstring linux-3.x,$(LINUXDIR)),$(findstring linux-3.3.x,$(LINUXDIR)),$(findstring linux-3.3.8,$(LINUXDIR)),$(findstring linux-3.4.x,$(LINUXDIR)),$(findstring linux-3.14.x,$(LINUXDIR))),y)
# New Ralink/MTK/QCA/RTK platform.
KPATH_3X = $(if $(or $(findstring linux-3.x,$(LINUXDIR)),$(findstring linux-3.3.x,$(LINUXDIR)),$(findstring linux-3.3.8,$(LINUXDIR)),$(findstring linux-3.4.x,$(LINUXDIR)),$(findstring linux-3.10,$(LINUXDIR)),$(findstring linux-3.14.x,$(LINUXDIR))),y)

ifneq ($(BASE_MODEL),)
MODEL = $(subst -,,$(subst +,P,$(BASE_MODEL)))
else ifneq ($(findstring 4G-,$(BUILD_NAME)),)
MODEL = RT$(subst -,,$(BUILD_NAME))
else ifneq ($(findstring DSL,$(BUILD_NAME)),)
MODEL = $(subst -,_,$(BUILD_NAME))
else
MODEL = $(subst -,,$(subst +,P,$(BUILD_NAME)))
endif
export CFLAGS += -D$(MODEL)
export $(MODEL)=y
export OLD_SRC=$(SRCBASE)/../src
LINUX_VERSION=2_6_36
LINUX_KERNEL=2.6.36
export PLATFORM_ARCH LIBDIR USRLIBDIR LINUX_VERSION
export BCMSRC=src-rt-9.x/src
export OLD_SRC=$(SRCBASE)/../../src
export BUILD_MFG := 0
export EX7 := _9

include $(SRCBASE)/makefiles/WLAN_Common.mk
export BASEDIR := $(WLAN_TreeBaseA)
export LINUXDIR := $(SRCBASE)/linux/linux-2.6.36
export EXTRALDFLAGS = -lgcc_s
export EXTRALDFLAGS2 = -L$(TOP)/nvram$(BCMEX)$(EX7) -lnvram -L$(TOP)/shared -lshared
export LD_LIBRARY_PATH := $(SRCBASE)/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3/lib
export BUILD_MFG := 0
SUBMAKE_SETTINGS = SRCBASE=$(SRCBASE) BASEDIR=$(BASEDIR)
SUBMAKE_SETTINGS += ARCH=$(ARCH)
export CFLAGS += -O2
export OPTCFLAGS = -O2
WLCFGDIR=$(SRCBASE)/wl/config
CRAMFSDIR := cramfs

export MKSYM := $(shell which $(TOP)/misc/mksym.pl)

WLAN_ComponentsInUse := bcmwifi clm ppr olpc
KDIR=$(LINUXDIR)
KERNEL_HEADER_DIR=$(LINUXDIR)/include

export LINUX_INC_DIR := $(LINUXDIR)
export KDIR KERNEL_HEADER_DIR
ifeq ($(RTCONFIG_DHDAP),y)
export CONFIG_DHDAP=y
export CFLAGS += -D__CONFIG_DHDAP__

export DHDAP_USE_SEPARATE_CHECKOUTS := 1
export SRCBASE_DHD := $(SRCBASE)/../../dhd/src
export SRCBASE_FW  := $(SRCBASE)/../../43602/src
PCIEFD_TARGETS_LIST	:= 43602a1-roml
ifeq ($(WLTEST),1)
PCIEFD_TARGET_NAME	:= pcie-ag-splitrx-fdap-mbss-mfgtest-seqcmds-phydbg-txbf-pktctx-amsdutx-ampduretry-chkd2hdma
else
PCIEFD_TARGET_NAME	:= pcie-ag-splitrx-fdap-mbss-mfp-wl11k-wl11u-txbf-pktctx-amsdutx-ampduretry-chkd2hdma-proptxstatus
endif

PCIEFD_EMBED_HEADER_TEMPLATE := $(SRCBASE_DHD)/shared/rtecdc_router.h.in
PCIEFD_EMBED_HEADER	:= $(SRCBASE_DHD)/shared/rtecdc_router.h
obj-pciefd		:= $(patsubst %,%-obj,$(PCIEFD_TARGETS_LIST))
install-pciefd		:= $(patsubst %,%-install,$(PCIEFD_TARGETS_LIST))

endif


ifeq ($(RTCONFIG_WLEXE),y)
ifeq ($(RTCONFIG_BCM9),y)
export SRCBASE_SYS := $(SRCBASE)/../sys/src
export CONFIG_WLEXE
export RWL ?= 0
endif
endif

ifeq ($(RTCONFIG_LBR_AGGR), y)
export CONFIG_LBR_AGGR
export CFLAGS += -D__CONFIG_LBR_AGGR__
endif

ifeq ($(RTCONFIG_GMAC3),y)
export CFLAGS += -D__CONFIG_GMAC3__
endif

ifeq ($(RTCONFIG_BRCM_USBAP),y)
export CFLAGS += -D__CONFIG_USBAP__
endif

ifeq ($(RTCONFIG_TOAD),y)
export CFLAGS += -D__CONFIG_TOAD__
endif

ifeq ($(RTCONFIG_BCM_APPEVENTD),y)
export CFLAGS += -DBCM_APPEVENTD
endif

ifeq ($(RTCONFIG_BCMBSD),y)
export CFLAGS += -DBCM_BSD
endif

ifeq ($(RTCONFIG_LANTIQ),y)
export CFLAGS += -DLANTIQ_BSD
endif

ifeq ($(RTCONFIG_BCMSSD),y)
export CFLAGS += -DBCM_SSD
endif

ifeq ($(RTCONFIG_WLCLMLOAD),y)
export CFLAGS += -DWLCLMLOAD
export WLCLMLOAD := 1
endif

# BCA_HNDROUTER mfg flag
ifneq ($(BUILD_HND_MFG),)
export BUILD_MFG := 1
export WLTEST := 1
endif

ifeq ($(RTCONFIG_FBT),y)
export CFLAGS  += -DWLHOSTFBT
endif

ifeq ($(RTCONFIG_BCMASPMD),y)
export CFLAGS += -DBCM_ASPMD
endif

ifeq ($(RTCONFIG_WBD),y)
export CFLAGS += -DBCM_WBD
ifeq ($(RTCONFIG_PLCWBD), y)
export PLC_WBD := 1
endif # PLC_WBD
endif

ifeq ($(RTCONFIG_WBD),y)
export CFLAGS += -DBCM_WBD
ifeq ($(RTCONFIG_PLCWBD), y)
export PLC_WBD := 1
endif # PLC_WBD
endif # WBD

ifeq ($(RTCONFIG_BCMEVENTD),y)
export CFLAGS += -DBCM_EVENTD
endif

ifeq ($(RTCONFIG_BCMDCS),y)
export CFLAGS += -DBCM_DCS
endif

ifeq ($(RTCONFIG_EMF),y)
export CFLAGS += -D__CONFIG_EMF__
export CONFIG_EMF_ENABLED := $(RTCONFIG_EMF)
endif

ifeq ($(RTCONFIG_HSPOT),y)
export CONFIG_HSPOT=y
#export CFLAGS += -D__CONFIG_HSPOT__
export CFLAGS += -DNAS_GTK_PER_STA
ifeq ($(or $(RTCONFIG_BCM7),$(RTCONFIG_BCM_7114)),y)
export CFLAGS += -DHSPOT_OSEN
endif
ifeq ($(or $(RTCONFIG_BCM7114),$(RTCONFIG_HND_ROUTER)),y)
export ICONPATH := /www/hspot
export CFLAGS += -DICONPATH=\"$(ICONPATH)\"
endif
endif

ifeq ($(RTCONFIG_VISUALIZATION),y)
export CFLAGS += -D__CONFIG_VISUALIZATION__ -DCONFIG_VISUALIZATION_ENABLED
endif

ifeq ($(RTCONFIG_WPS),y)
ifeq ($(CONFIG_BCMWL5),y)
endif
export CFLAGS += -D__CONFIG_WPS__
# WFA WPS 2.0 Testbed extra caps
#export CFLAGS += -DWFA_WPS_20_TESTBED
endif

ifeq ($(RTCONFIG_NFC),y)
# WPS_NFC
export CFLAGS += -D__CONFIG_NFC__
endif

ifeq ($(RTCONFIG_NORTON),y)
export CFLAGS += -D__CONFIG_NORTON__
endif

ifeq ($(RTCONFIG_JFFS_NVRAM),y)
export CFLAGS += -DJFFS_NVRAM
endif

ifeq ($(RTCONFIG_DEBUG),y)
export CFLAGS += -g
endif

ifeq ($(strip $(BRCM_USER_SSP)),y)
export CFLAGS += $(SSP_MIN_COMPILER_OPTS)
export EXTRA_LDFLAGS += $(SSP_LIBS)
endif

ifneq (,$(filter y,$(RTCONFIG_SFP) $(RTCONFIG_4M_SFP)))
export MUVER := _1.4
endif

export NONOPT_CFLAGS := $(shell echo $(CFLAGS)| sed 's/-O2//g')
ifeq ($(HND_ROUTER),y)
export CFLAGS := $(shell echo $(CFLAGS)| sed 's/-fno-common//g')
endif

ifeq ($(RTCONFIG_NOTIFICATION_CENTER),y)
KERNEL_PTHREAD_ONE = $(if $(or $(findstring linux-3.4.x,$(LINUXDIR)),$(findstring linux-4.1,$(LINUXDIR)),$(findstring linux-3.10,$(LINUXDIR)),$(findstring linux-3.14.x,$(LINUXDIR))),y)
export CONFIG_KERNEL_PTHREAD_ONE = $(KERNEL_PTHREAD_ONE)
endif
#
#
#
SEP=echo "\033[41;1m   $@   \033[0m"


export BUSYBOX ?= busybox-1.17.4
export BUSYBOX_DIR := $(BUSYBOX)
obj-y += $(BUSYBOX)
obj-y += shared
obj-y += nvram$(BCMEX)$(EX7)
obj-y += nvram_arm

obj-$(RTCONFIG_LIBASUSLOG) += libasuslog
obj-$(RTCONFIG_SW_HW_AUTH) += sw-hw-auth
ifeq ($(RTCONFIG_TUNNEL),y)
obj-$(RTCONFIG_NOTIFICATION_CENTER) += wb
endif
obj-$(RTCONFIG_NOTIFICATION_CENTER) += json-c
obj-$(RTCONFIG_NOTIFICATION_CENTER) += sqlite
obj-$(RTCONFIG_NOTIFICATION_CENTER) += nt_center
obj-$(RTCONFIG_NOTIFICATION_CENTER) += email-3.1.3
obj-$(RTCONFIG_NOTIFICATION_CENTER) += wlc_nt
obj-$(RTCONFIG_PROTECTION_SERVER) += protect_srv
obj-$(RTCONFIG_CFGSYNC) += openssl libevent-2.0.21 cfg_mnt

obj-$(RTCONFIG_QTN) += libqcsapi_client
obj-$(RTCONFIG_QTN) += qtnimage
obj-$(RTCONFIG_QSR10G) += libqcsapi_client_10g
obj-$(RTCONFIG_DMALLOC) += dmalloc
obj-$(RTCONFIG_BCMARM) += ctf_arm
obj-y += ctf
obj-$(RTCONFIG_DHDAP) += dhd $(if $(RTCONFIG_BCM7),pciefd)
obj-$(RTCONFIG_DPSTA) += dpsta

obj-$(RTCONFIG_CLOUDSYNC) += neon
obj-$(RTCONFIG_I2CTOOLS) += i2c-tools-3.1.2
obj-$(RTCONFIG_RGBLED) += aura_sw

IPTABLES := iptables-1.4.x
IPTC_LIBDIR := $(TOP)/$(IPTABLES)/libiptc/.libs
IPTC_LIBS := -lip4tc $(if $(RTCONFIG_IPV6),-lip6tc,) -liptc
obj-y += iptables-1.4.x
obj-y += iproute2-3.x
obj-$(RTCONFIG_PERMISSION_MANAGEMENT) += sqlite
obj-$(RTCONFIG_PERMISSION_MANAGEMENT) += sqlCipher
obj-$(RTCONFIG_PERMISSION_MANAGEMENT) += PMS_DBapis

obj-$(RTCONFIG_SPEEDTEST) += curl-7.21.7

obj-$(RTCONFIG_BWDPI) += sqlite
obj-$(RTCONFIG_BWDPI) += bwdpi_source
obj-$(RTCONFIG_TRAFFIC_LIMITER) += sqlite
obj-$(RTCONFIG_TRAFFIC_LIMITER) += traffic_limiter
obj-y += sysstate
obj-y += rc
obj-y += rom
obj-y += others
obj-y += libpasswd
obj-y += httpd json-c
obj-y += www
obj-y += bridge
obj-y += dnsmasq
obj-y += etc
obj-y += ntpclient
obj-y += rstats

# !!TB - updated Broadcom Wireless driver
obj-y += utils$(BCMEX)$(EX7)
obj-$(RTCONFIG_EMF) += emf$(BCMEX)$(EX7)
obj-$(RTCONFIG_EMF) += igs$(BCMEX)$(EX7)
obj-y += wlconf$(BCMEX)$(EX7)
obj-y += nas$(BCMEX)$(EX7)
obj-$(RTCONFIG_HSPOT) += hspot_ap$(BCMEX)$(EX7)
obj-y += eapd$(BCMEX)$(EX7)
obj-$(RTCONFIG_WPS) += wps$(BCMEX)$(EX7)
obj-$(RTCONFIG_WLEXE) += wlexe
obj-$(CONFIG_LIBBCM) += libbcm
obj-$(CONFIG_LIBUPNP) += libupnp$(BCMEX)$(EX7)
obj-y += acsd$(BCMEX)$(EX7) wl$(BCMEX)$(EX7) et_arm$(EX7)

.PHONY: emf$(BCMEX)$(EX7) igs$(BCMEX)$(EX7) hspot_ap$(BCMEX)$(EX7) wps$(BCMEX)$(EX7)

obj-$(RTCONFIG_BCMEVENTD) += eventd
obj-$(RTCONFIG_BCMASPMD) += aspmd
obj-$(RTCONFIG_WBD) += json-c wbd
obj-$(RTCONFIG_WLCLMLOAD) += clmb
obj-y += libbcmcrypto
obj-$(RTCONFIG_HTTPS) += mssl
obj-y += scsi-idle
obj-y += libusb10
obj-y += libusb
obj-y += libusb-0.1.12
obj-y += hub-ctrl
obj-$(RTCONFIG_USB_PRINTER) += u2ec
obj-$(RTCONFIG_USB_PRINTER) += LPRng
obj-$(RTCONFIG_USB_MODEM) += sdparm-1.02
obj-$(RTCONFIG_USB_MODEM) += comgt-0.32
obj-$(RTCONFIG_USB_MODEM) += json-c libubox uqmi
obj-$(RTCONFIG_USB_MODEM) += usbmode
obj-$(RTCONFIG_USB_MODEM) += usb-modeswitch
obj-$(RTCONFIG_USB_MULTIMODEM) += usb-modeswitch
# temporary
RTCONFIG_EXT4FS := n
obj-$(RTCONFIG_E2FSPROGS) += e2fsprogs # including libuuid
obj-$(RTCONFIG_EXT4FS) += e2fsprogs
obj-y += libdisk
obj-$(RTCONFIG_FTP) += vsftpd

ifeq ($(CONFIG_LINUX26),y)
ifeq ($(RTCONFIG_SAMBASRV),y)
NEED_EX_NLS = y
endif
ifeq ($(RTCONFIG_USB_EXTRAS),y)
NEED_EX_USB = y
endif
endif


export RTCONFIG_IPV6 := y
obj-y += samba-3.0.33

obj-$(RTCONFIG_OPEN_NTFS3G) += ntfs-3g
obj-$(RTCONFIG_PARAGON_NTFS) += ufsd
obj-$(RTCONFIG_TUXERA_NTFS) += tuxera
obj-$(RTCONFIG_PARAGON_HFS) += ufsd
obj-$(RTCONFIG_TUXERA_HFS) += tuxera
obj-$(RTCONFIG_KERNEL_HFSPLUS) += diskdev_cmds-332.14
obj-$(RTCONFIG_TFAT) += tuxera

obj-$(RTCONFIG_EBTABLES) += ebtables
obj-$(RTCONFIG_IPV6) += odhcp6c
obj-$(RTCONFIG_6RELAYD) += 6relayd
#obj-$(RTCONFIG_IPV6) += ecmh

obj-$(RTCONFIG_MEDIA_SERVER) += zlib
obj-$(RTCONFIG_MEDIA_SERVER) += sqlite
obj-$(RTCONFIG_MEDIA_SERVER) += ffmpeg
obj-$(RTCONFIG_MEDIA_SERVER) += libogg
obj-$(RTCONFIG_MEDIA_SERVER) += flac
obj-$(RTCONFIG_MEDIA_SERVER) += jpeg
obj-$(RTCONFIG_MEDIA_SERVER) += libexif
obj-$(RTCONFIG_MEDIA_SERVER) += libid3tag
obj-$(RTCONFIG_MEDIA_SERVER) += libvorbis
obj-$(RTCONFIG_MEDIA_SERVER) += minidlna
obj-$(RTCONFIG_MEDIA_SERVER) += libgdbm
ifneq ($(RTCONFIG_NO_DAAPD),y)
obj-$(RTCONFIG_MEDIA_SERVER) += mt-daapd
#obj-$(RTCONFIG_MEDIA_SERVER) += mt-daapd-svn-1696
endif

#MEDIA_SERVER_STATIC=y

#add by gauss for cloudsync
obj-$(RTCONFIG_CLOUDSYNC) += openssl
obj-$(RTCONFIG_CLOUDSYNC) += libxml2
obj-$(RTCONFIG_CLOUDSYNC) += curl-7.21.7
obj-$(RTCONFIG_CLOUDSYNC) += smartsync_api
obj-$(RTCONFIG_CLOUDSYNC) += asuswebstorage
obj-$(RTCONFIG_CLOUDSYNC) += inotify

obj-$(RTCONFIG_CLOUDSYNC) += zlib # for neon
obj-$(RTCONFIG_CLOUDSYNC) += neon
obj-$(RTCONFIG_CLOUDSYNC) += webdav_client
obj-$(RTCONFIG_DROPBOXCLIENT) += dropbox_client
obj-$(RTCONFIG_GOOGLECLIENT) += google_client

obj-$(RTCONFIG_FTPCLIENT) += libiconv-1.14
obj-$(RTCONFIG_FTPCLIENT) += ftpclient
obj-$(RTCONFIG_SAMBACLIENT) += sambaclient
obj-$(RTCONFIG_USBCLIENT) += usbclient

#aaews,asusnatnl related
obj-$(RTCONFIG_TUNNEL) += libxml2
obj-$(RTCONFIG_TUNNEL) += curl-7.21.7
obj-$(RTCONFIG_TUNNEL) += wb
obj-$(RTCONFIG_TUNNEL) += aaews
obj-$(RTCONFIG_TUNNEL) += mastiff
obj-$(RTCONFIG_TUNNEL) += asusnatnl

#For timemachine
obj-$(RTCONFIG_TIMEMACHINE) += openssl
obj-$(RTCONFIG_TIMEMACHINE) += libgpg-error-1.10
obj-$(RTCONFIG_TIMEMACHINE) += libgcrypt-1.5.1
obj-$(RTCONFIG_TIMEMACHINE) += db-4.8.30
obj-$(RTCONFIG_TIMEMACHINE) += netatalk-3.0.5
ifeq ($(or $(RTCONFIG_TIMEMACHINE),$(RTCONFIG_MDNS)),y)
obj-y += libdaemon
obj-y += expat-2.0.1
obj-y += avahi-0.6.31
else
endif

#add for snmpd
SNMPD_CFLAGS += -D$(BUILD_NAME)
obj-$(RTCONFIG_SNMPD) += openssl
obj-$(RTCONFIG_SNMPD) += libnmp
obj-$(RTCONFIG_SNMPD) += net-snmp-5.7.2
ifeq ($(RTCONFIG_SNMPD),y)
export MIB_MODULE_PASSPOINT =
endif

#for chillispot
obj-$(RTCONFIG_COOVACHILLI) += coovachilli
obj-$(RTCONFIG_FREERADIUS) += sqlite pcre-8.31
obj-$(RTCONFIG_FREERADIUS) += talloc-2.1.1
obj-$(RTCONFIG_FREERADIUS) += freeradius-server-3.0.0
obj-$(RTCONFIG_CAPTIVE_PORTAL) += sqlite libxml2 pcre-8.31 lighttpd-1.4.39 libexif curl-7.21.7
obj-$(RTCONFIG_CAPTIVE_PORTAL) += samba-3.5.8

obj-$(RTCONFIG_FBWIFI) += fb_wifi
obj-$(RTCONFIG_FBWIFI) += httpd_uam

#
# configurable packages
#
RTCONFIG_PPP_BASE = y
obj-$(RTCONFIG_PPP_BASE) += pppd rp-pppoe
obj-$(RTCONFIG_L2TP) += rp-l2tp
obj-$(RTCONFIG_PPTP) += accel-pptp
obj-$(RTCONFIG_EAPOL) += wpa_supplicant
obj-$(RTCONFIG_HTTPS) += openssl
obj-$(RTCONFIG_HTTPS) += wget
obj-$(RTCONFIG_HTTPS) += zlib
obj-$(RTCONFIG_SSH) += dropbear
obj-$(RTCONFIG_WTFAST) += wtfast
#obj-$(RTCONFIG_ZEBRA) += zebra
obj-$(RTCONFIG_QUAGGA) += quagga
#obj-$(RTCONFIG_IPP2P) += ipp2p


obj-$(CONFIG_LINUX26) += hotplug2
obj-$(CONFIG_LINUX26) += udev

obj-$(RTCONFIG_ACCEL_PPTPD) += accel-pptpd
obj-$(RTCONFIG_PPTPD) += pptpd

# Add for ASUS Components
obj-$(RTCONFIG_UPNPC) += miniupnpc
obj-y += miniupnpd$(MUVER)
obj-y += igmpproxy
obj-y += snooper
obj-y += udpxy
obj-y += lltd.arm
obj-y += taskset
obj-$(RTCONFIG_COMA) += comad
obj-$(RTCONFIG_JFFS2USERICON) += lltdc
obj-$(RTCONFIG_BCM_APPEVENTD) += appeventd
obj-$(RTCONFIG_BCMSSD) += ssd
ifeq ($(RTCONFIG_WLCEVENTD),y)
obj-$(RTCONFIG_WLCEVENTD) += wlceventd
endif
ifeq ($(RTCONFIG_HAPDEVENT),y)
obj-$(RTCONFIG_HAPDEVENT) += hapdevent
endif
obj-y += networkmap
obj-y += infosvr
obj-y += ez-ipupdate
obj-y += phddns
obj-$(RTCONFIG_LLDP) += openlldp

obj-n += lsof
obj-$(RTCONFIG_IPERF) += iperf

obj-$(RTCONFIG_PUSH_EMAIL) += openssl
obj-$(RTCONFIG_PUSH_EMAIL) += email-3.1.3
ifeq ($(RTCONFIG_PUSH_EMAIL),y)
obj-$(RTCONFIG_DBLOG) += dblog
endif

obj-$(RTCONFIG_NORTON) += norton${BCMEX}

obj-$(UBI) += mtd-utils
obj-$(UBIFS) += mtd-utils
obj-$(UBIFS) += e2fsprogs lzo zlib
obj-$(RTCONFIG_LACP) += lacp
obj-$(RTCONFIG_QUICKSEC) += quicksec-7.0
obj-$(RTCONFIG_STRONGSWAN) += strongswan-5.2.1
obj-y += netstat-nat
obj-$(RTCONFIG_TCPDUMP) += libpcap
obj-$(RTCONFIG_TCPDUMP) += tcpdump-4.4.0
obj-$(RTCONFIG_TRACEROUTE) += traceroute-2.1.0
obj-$(RTCONFIG_BLINK_LED) += bled
obj-$(RTCONFIG_BONDING) += ifenslave
obj-$(RTCONFIG_GEOIP) += GeoIP-1.6.2
obj-$(RTCONFIG_TRANSMISSION) += Transmission curl-7.21.7 libevent-2.0.21

ifeq ($(RTCONFIG_TOR),y)
obj-y += openssl
obj-y += zlib
obj-y += libevent-2.0.21
obj-y += tor-0.2.5.10
endif
#For TR-069 agent
obj-$(RTCONFIG_TR069) += openssl
obj-$(RTCONFIG_TR069) += tr069
obj-$(RTCONFIG_CLOUDCHECK) += cloudcheck
obj-$(RTCONFIG_GETREALIP) += ministun
CFGSYNC_PKG := openssl libevent-2.0.21 cfg_mnt
obj-$(RTCONFIG_CFGSYNC) += $(CFGSYNC_PKG)
obj-prelibs =$(filter busybox% nvram$(BCMEX)$(EX7) libbcmcrypto shared netconf libupnp$(BCMEX)$(EX7) libz libbcm pciefd, $(obj-y))
obj-postlibs := $(filter-out $(obj-prelibs), $(obj-y))

obj-$(RTCONFIG_HD_SPINDOWN) += sd-idle
obj-clean := $(foreach obj, $(obj-y) $(obj-n) $(obj-), $(obj)-clean)
obj-install := $(foreach obj,$(obj-y),$(obj)-install)

MKSQUASHFS_TARGET = mksquashfs
MKSQUASHFS = $(MKSQUASHFS_TARGET)

LINUX_ARCH_ASM_INCL_DIR = $(if ($KPATH_3X),$(LINUXDIR)/arch/mips/include/asm,$(LINUXDIR)/include/asm-mips)
define CMAKE_CrossOptions
	( \
		echo "SET(CMAKE_CROSSCOMPILING \"TRUE\")" >>$(1); \
		echo "SET(TOP $(TOP))" >>$(1); \
		echo "SET(CMAKE_SYSTEM_NAME Linux)" >>$(1); \
		echo "SET(CMAKE_SYSTEM_VERSION $(LINUX_KERNEL))" >>$(1); \
		echo "SET(CMAKE_SYSTEM $(PLATFORM))" >>$(1); \
		echo "SET(CMAKE_SYSTEM_PROCESSOR $(ARCH))" >>$(1); \
		echo "SET(CMAKE_C_COMPILER $(CROSS_COMPILE)gcc)" >>$(1); \
		echo "SET(CMAKE_CXX_COMPILER $(CROSS_COMPILE)g++)" >>$(1); \
		echo "SET(CMAKE_AR $(CROSS_COMPILE)ar)" >>$(1); \
		echo "SET(CMAKE_LINKER $(CROSS_COMPILE)ld)" >>$(1); \
		echo "SET(CMAKE_NM $(CROSS_COMPILE)nm)" >>$(1); \
		echo "SET(CMAKE_OBJCOPY $(CROSS_COMPILE)objcopy)" >>$(1); \
		echo "SET(CMAKE_OBJDUMP $(CROSS_COMPILE)objdump)" >>$(1); \
		echo "SET(CMAKE_RANLIB $(CROSS_COMPILE)ranlib)" >>$(1); \
		echo "SET(CMAKE_STRIP $(CROSS_COMPILE)strip)" >>$(1); \
		echo "SET(CMAKE_FIND_ROOT_PATH $(TOOLS))" >>$(1); \
		echo "SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)" >>$(1); \
		echo "SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)" >>$(1); \
		echo "SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)" >>$(1); \
	)
endef
#
# Basic rules
#

all: clean-build kernel_header libc version obj_prelibs kernel $(obj-postlibs)

version: $(SRCBASE)/include/epivers.h

$(SRCBASE)/include/epivers.h:
	@$(MAKE) -C $(SRCBASE)/include
	@+$(MAKE) $(MAKE_ARGS) post_preplibs

list_objs:
	@echo obj-y:
	@( \
	for i in ${obj-y}; do \
		echo $${i}; \
	done; \
	);
list_obj_prelibs:
	@echo obj-prelibs:
	@( \
	for i in ${obj-prelibs}; do \
		echo $${i}; \
	done; \
	);

list_obj_postlibs:
	@echo obj-postlibs:
	@( \
	for i in ${obj-postlibs}; do \
		echo $${i}; \
	done; \
	);

obj_prelibs: list_obj_prelibs
	+$(MAKE) parallel=true $(MAKE_ARGS) $(obj-prelibs)

obj_postlibs: list_obj_postlibs
	+$(MAKE) parallel=true $(MAKE_ARGS) $(obj-postlibs)

post_preplibs: obj_postlibs


kernel_header: $(LINUXDIR)/.config

kernel: $(LINUXDIR)/.config
	@$(SEP)
	@(echo '.NOTPARALLEL:' ; cat ${LINUXDIR}/Makefile) | $(MAKE) -C ${LINUXDIR} -f - $(SUBMAKE_SETTINGS) zImage
	@+$(MAKE) CONFIG_SQUASHFS=$(CONFIG_SQUASHFS) -C $(SRCBASE)/router/compressed ARCH=$(ARCH)

	@$(if $(shell grep "CONFIG_MODULES=y" ${LINUXDIR}/.config), \
	(echo '.NOTPARALLEL:' ; cat ${LINUXDIR}/Makefile) | $(MAKE) -C ${LINUXDIR} -f - $(SUBMAKE_SETTINGS) MFG_WAR=1 zImage ; \
	(echo '.NOTPARALLEL:' ; cat ${LINUXDIR}/Makefile) | $(MAKE) -C ${LINUXDIR} -f - ARCH=$(ARCH) modules)
	@echo "----------- strip ---------------"
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/vmlinux)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/net/wl/wl.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/net/et/et.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/net/ctf/ctf.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/net/dhd/dhd.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/net/dhd/dhd24.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/net/bcm57xx/bcm57xx.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/net/emf/emf.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/net/igs/igs.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/net/dpsta/dpsta.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/connector/cn.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/scsi/scsi_wait_scan.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/usb/host/xhci-hcd.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/usb/host/ehci-hcd.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/drivers/usb/host/ohci-hcd.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/lib/libcrc32c.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/net/sched/sch_tbf.ko)
	@$(call STRIP_DEBUG_SYMBOLS,$(LINUXDIR)/net/sched/sch_hfsc.ko)

kmod: dummy
	$(MAKE) -C $(LINUXDIR) modules CC=$(KERNELCC)

testfind:
	cd $(TARGETDIR)/lib/modules/* && find -name "*.o" -exec mv -i {} . \; || true
	cd $(TARGETDIR)/lib/modules/* && find -type d -delete || true

install package: $(obj-install) $(LINUXDIR)/.config gen_target gen_gpl_excludes_router

gen_target:
	@$(SEP)
	[ -d $(TARGETDIR) ] || install -d $(TARGETDIR)
# kernel modules
	$(MAKE) -C $(LINUXDIR) modules_install DEPMOD=/bin/true INSTALL_MOD_PATH=$(TARGETDIR)
##!!TB	find $(TARGETDIR)/lib/modules -name *.o -exec mipsel-linux-strip --strip-unneeded {} \;
	find $(TARGETDIR)/lib/modules -name *.o -exec $(STRIP) --strip-debug -x -R .comment -R .pdr -R .mdebug.abi32 -R .note.gnu.build-id -R .gnu.attributes -R .reginfo {} \;
	find $(TARGETDIR)/lib/modules -name *.ko -exec $(STRIP) --strip-debug -x -R .comment -R .pdr -R .mdebug.abi32 -R .note.gnu.build-id -R .gnu.attributes -R .reginfo {} \;
#	-cd $(TARGETDIR)/lib/modules/*/kernel/drivers/net && mv diag/* . && rm -rf diag
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/net && mv et.4702/* . && rm -rf et.4702 || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/net && mv et/* . && rm -rf et || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/net && mv wl/wl.ko . && rm -rf wl || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv cifs/* . && rm -rf cifs || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv jffs2/* . && rm -rf jffs2 || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv jffs/* . && rm -rf jffs || true
	cd $(TARGETDIR)/lib/modules/*/kernel/lib && mv zlib_inflate/* . && rm -rf zlib_inflate || true
	cd $(TARGETDIR)/lib/modules/*/kernel/lib && mv zlib_deflate/* . && rm -rf zlib_deflate || true
	cd $(TARGETDIR)/lib/modules/*/kernel/lib && mv lzo/* . && rm -rf lzo || true
	rm -rf $(TARGETDIR)/lib/modules/*/pcmcia
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv ext2/* . && rm -rf ext2 || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv ext3/* . && rm -rf ext3 || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv jbd/* . && rm -rf jbd || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv fat/* . && rm -rf fat || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv vfat/* . && rm -rf vfat || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv msdos/* . && rm -rf msdos || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv fuse/* . && rm -rf fuse || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv ntfs/* . && rm -rf ntfs || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv smbfs/* . && rm -rf smbfs || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv reiserfs/* . && rm -rf reiserfs || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv hfsplus/* . && rm -rf hfsplus || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv lockd/* . && rm -rf lockd || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv nfsd/* . && rm -rf nfsd || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv nfs/* . && rm -rf nfs || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv xfs/* . && rm -rf xfs || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv nls/* . && rm -rf nls || true
	cd $(TARGETDIR)/lib/modules/*/kernel/fs && mv exportfs/* . && rm -rf exportfs || true
	cd $(TARGETDIR)/lib/modules/*/kernel/net && mv sunrpc/* . && rm -rf sunrpc || true
	cd $(TARGETDIR)/lib/modules/*/kernel/net && mv auth_gss/* . && rm -rf auth_gss || true
	cd $(TARGETDIR)/lib/modules/*/kernel/sound/core && mv oss/* . && rm -rf oss || true
	cd $(TARGETDIR)/lib/modules/*/kernel/sound/core && mv seq/* . && rm -rf seq || true
	cd $(TARGETDIR)/lib/modules/*/kernel/sound && mv core/* . && rm -rf core || true
	cd $(TARGETDIR)/lib/modules/*/kernel/sound && mv usb/* . && rm -rf usb || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/usb && mv hcd/* . && rm -rf hcd || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/usb && mv host/* . && rm -rf host || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/usb && mv storage/* . && rm -rf storage || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/usb && mv serial/* . && rm -rf serial || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/usb && mv core/* . && rm -rf core || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/usb && mv class/* . && rm -rf class || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/usb && mv misc/* . && rm -rf misc || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/hid && mv usbhid/* . && rm -rf usbhid || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/input && mv joystick/* . && rm -rf joystick || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/input && mv keyboard/* . && rm -rf keyboard || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/input && mv misc/* . && rm -rf misc || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/input && mv mouse/* . && rm -rf mouse || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/media/video && mv uvc/* . && rm -rf uvc || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/media && mv video/* . && rm -rf video || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/net && mv bcm57xx/* . && rm -rf bcm57xx || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/net && mv emf/* . && rm -rf emf || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/net && mv igs/* . && rm -rf igs || true
	cd $(TARGETDIR)/lib/modules/*/kernel/drivers/net && mv ctf/* . && rm -rf ctf || true
	cd $(TARGETDIR)/lib/modules && rm -f */source || true
	cd $(TARGETDIR)/lib/modules && rm -f */build || true

# misc
	for dir in $(wildcard $(patsubst %,$(INSTALLDIR)/%,$(obj-y))) ; do \
		(cd $${dir} && tar cpf - .) | (cd $(TARGETDIR) && tar xpf -) \
	done
	install $(LIBDIR)/ld-uClibc.so.0 $(TARGETDIR)/lib/
	install $(LIBDIR)/libcrypt.so.0 $(TARGETDIR)/lib/
	install $(LIBDIR)/libpthread.so.0 $(TARGETDIR)/lib/
	install $(LIBDIR)/libgcc_s.so.1 $(TARGETDIR)/lib/
	$(STRIP) $(TARGETDIR)/lib/libgcc_s.so.1
	install $(LIBDIR)/libc.so.0 $(TARGETDIR)/lib/
	install $(LIBDIR)/libdl.so.0 $(TARGETDIR)/lib/
	install $(LIBDIR)/libm.so.0 $(TARGETDIR)/lib/
	install $(LIBDIR)/libnsl.so.0 $(TARGETDIR)/lib/
	install $(LIBDIR)/libutil.so.0 $(TARGETDIR)/lib/
	@cd $(TARGETDIR) && $(TOP)/others/rootprep${BCMEX}.sh
	@chmod 0555 $(TARGETDIR)/lib/*.so*
	@chmod 0555 $(TARGETDIR)/usr/lib/*.so*

# !!TB - moved to run after libfoo.pl - to make sure shared libs include all symbols needed by extras
# separated/copied extra stuff
	@rm -rf $(PLATFORMDIR)/extras
	@mkdir $(PLATFORMDIR)/extras
	@mv $(TARGETDIR)/lib/modules/*/kernel/net/ipv4/ip_gre.*o $(PLATFORMDIR)/extras/ || true

	$(if $(RTCONFIG_OPENVPN),@cp -f,$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv)) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/tun.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_EBTABLES),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/net/bridge/netfilter/ebt*.*o $(PLATFORMDIR)/extras/ || true

	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/net/ifb.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/net/sched/sch_red.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/fs/ntfs.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/fs/smbfs.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/fs/reiserfs.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/fs/hfsplus.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/fs/nfs.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/fs/nfsd.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/fs/lockd.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/fs/exportfs.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/net/sunrpc.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/net/auth_rpcgss.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/net/rpcsec_gss_krb5.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/fs/xfs.*o $(PLATFORMDIR)/extras/ || true
#	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/scsi/sr_mod.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/scanner.*o $(PLATFORMDIR)/extras/ || true

	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/usbserial.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/option.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/*acm.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/cdc-wdm.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/usb/usbnet.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/usb/asix.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/usb/cdc_ether.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/usb/rndis_host.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/usb/cdc_ncm.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/usb/qmi_wwan.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/usb/cdc_mbim.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -rf,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/usb/hso* $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/usb/ipheth.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/sierra.*o $(PLATFORMDIR)/extras/ || true

	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/usbkbd.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/usbmouse.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/hid*.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/ipw.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/audio.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/ov51*.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/pwc*.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/emi*.*o $(PLATFORMDIR)/extras/ || true
	@cp -f $(TARGETDIR)/lib/modules/*/kernel/drivers/net/mii.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/media/* $(PLATFORMDIR)/extras/ || true
	@rm -rf $(TARGETDIR)/lib/modules/*/kernel/drivers/media || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/sound/* $(PLATFORMDIR)/extras/ || true
	@rm -rf $(TARGETDIR)/lib/modules/*/kernel/drivers/sound || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/sound/* $(PLATFORMDIR)/extras/ || true
	@rm -rf $(TARGETDIR)/lib/modules/*/kernel/sound || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/input/* $(PLATFORMDIR)/extras/ || true
	@rm -rf $(TARGETDIR)/lib/modules/*/kernel/drivers/input || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/hid/* $(PLATFORMDIR)/extras/ || true
	@rm -rf $(TARGETDIR)/lib/modules/*/kernel/drivers/hid || true
	@cp -f $(TARGETDIR)/lib/modules/*/kernel/drivers/net/bcm57*.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_PPTP),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/pptp.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_L2TP),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/net/pppol2tp.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/drivers/net/ppp_deflate.*o $(PLATFORMDIR)/extras/ || true
	@mv $(TARGETDIR)/lib/modules/*/kernel/crypto/* $(PLATFORMDIR)/extras/ || true
	@rm -rf $(TARGETDIR)/lib/modules/*/kernel/crypto || true

	$(if $(NEED_EX_NLS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/nls_cp9*.*o $(PLATFORMDIR)/extras/ || true
	$(if $(NEED_EX_NLS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/nls_cp1251.*o $(PLATFORMDIR)/extras/ || true
	$(if $(NEED_EX_NLS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/nls_euc-jp.*o $(PLATFORMDIR)/extras/ || true
	$(if $(NEED_EX_NLS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/nls_sjis.*o $(PLATFORMDIR)/extras/ || true
	$(if $(NEED_EX_NLS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/nls_gb2312.*o $(PLATFORMDIR)/extras/ || true
	$(if $(NEED_EX_NLS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/nls_euc-kr.*o $(PLATFORMDIR)/extras/ || true
	$(if $(NEED_EX_NLS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/nls_big5.*o $(PLATFORMDIR)/extras/ || true

	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/nls_*.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/usb/*.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/cdrom/*.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/scsi/*.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/ext2.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/ext3.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/jbd.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/mbcache.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/fat.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/vfat.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/msdos.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/fuse.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_EXTRAS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/connector/cn.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_USB_EXTRAS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/drivers/block/loop.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_CIFS),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/cifs.*o $(PLATFORMDIR)/extras/ || true
	$(if $(or $(RTCONFIG_BRCM_NAND_JFFS2),$(RTCONFIG_JFFS2)),$(if $(RTCONFIG_JFFSV1),@mv,@cp -f),@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/jffs2.*o $(PLATFORMDIR)/extras/ || true
	$(if $(or $(RTCONFIG_BRCM_NAND_JFFS2),$(RTCONFIG_JFFS2)),$(if $(RTCONFIG_JFFSV1),@mv,@cp -f),@mv) $(TARGETDIR)/lib/modules/*/kernel/lib/zlib_*.*o $(PLATFORMDIR)/extras/ || true
	$(if $(or $(RTCONFIG_BRCM_NAND_JFFS2),$(RTCONFIG_JFFS2)),$(if $(RTCONFIG_JFFSV1),@cp -f,@mv),@mv) $(TARGETDIR)/lib/modules/*/kernel/fs/jffs.*o $(PLATFORMDIR)/extras/ || true
	[ ! -f $(TARGETDIR)/lib/modules/*/kernel/lib/* ] && rm -rf $(TARGETDIR)/lib/modules/*/kernel/lib || true
	$(if $(RTCONFIG_L7),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/net/ipv4/netfilter/ipt_layer7.*o $(PLATFORMDIR)/extras/ || true
	$(if $(RTCONFIG_L7),@cp -f,@mv) $(TARGETDIR)/lib/modules/*/kernel/net/netfilter/xt_layer7.*o $(PLATFORMDIR)/extras/ || true

	@mkdir -p $(TARGETDIR)/asus_jffs
	@mkdir -p $(PLATFORMDIR)/extras/apps
	@mkdir -p $(PLATFORMDIR)/extras/lib

	@mv $(TARGETDIR)/usr/sbin/ttcp $(PLATFORMDIR)/extras/apps/ || true
	@cp -f $(TARGETDIR)/usr/sbin/mii-tool $(PLATFORMDIR)/extras/apps/ || true
	$(if $(RTCONFIG_RALINK),@mv,@cp -f) $(TARGETDIR)/usr/sbin/robocfg $(PLATFORMDIR)/extras/apps/ || true

	$(if $(NEED_EX_USB),@cp -f,@mv) $(TARGETDIR)/usr/lib/libusb* $(PLATFORMDIR)/extras/lib/ || true
	$(if $(RTCONFIG_USB_MODEM),@cp -f,@mv) $(TARGETDIR)/usr/sbin/chat $(PLATFORMDIR)/extras/apps/ || true

	@mkdir -p $(TARGETDIR)/rom/etc/l7-protocols
	$(BUSYBOX_DIR)/examples/depmod.pl -k $(LINUXDIR)/vmlinux -b $(TARGETDIR)/lib/modules/*/
	@rm -f $(TARGETDIR)/lib/modules/*/build

gen_gpl_excludes_router:
	@[ ! -d ../../../buildtools/ ] || ../../../buildtools/gpl_excludes_router.sh $(SRCBASE) "$(obj-y) $(released_dir)"

image:
	@rm -f $(PLATFORMDIR)/target.image
	@$(SRCBASE)/ctools/mksquashfs $(TARGETDIR) $(PLATFORMDIR)/target.image -all-root -noappend

libc: $(LIBDIR)/ld-uClibc.so.0


clean: clean-build $(obj-clean)
	rm -rf layer7/squished
	make -C config clean

clean-build: dummy
	rm -rf $(TARGETDIR)
	rm -rf $(INSTALLDIR)
	rm -f $(PLATFORMDIR)/linux.trx $(PLATFORMDIR)/vmlinuz $(PLATFORMDIR)/target.image
	rm -rf $(PLATFORMDIR)/extras
	rm -rf kernel_header

distclean: clean
ifneq ($(INSIDE_MAK),1)
	$(MAKE) -C $(SRCBASE) $@ INSIDE_MAK=1
endif

CONFIG_IN := config/config.in

config/conf config/mconf:
	$(MAKE) -C config

rconf: config/conf
	config/conf $(CONFIG_IN)

rmconf: config/mconf
	config/mconf $(CONFIG_IN)

roldconf: config/conf
	config/conf -o $(CONFIG_IN)
	$(MAKE) shared-clean libdisk-clean rc-clean nvram$(BCMEX)$(EX7)-clean httpd-clean prebuilt-clean libbcmcrypto-clean
#	@$(MAKE) iptables-clean ebtables-clean pppd-clean zebra-clean openssl-clean mssl-clean pppd-clean
	$(MAKE) dnsmasq-clean iproute2-clean networkmap-clean
	$(MAKE) compressed-clean

kconf:
	$(MAKE) -C $(LINUXDIR) config

kmconf:
	$(MAKE) -C $(LINUXDIR) menuconfig

koldconf:
	$(MAKE) -C $(LINUXDIR) include/linux/version.h

bboldconf:
	$(MAKE) -C $(BUSYBOX_DIR) oldconfig

config conf: rconf kconf

menuconfig mconf: rmconf kmconf

oldconfig oldconf: koldconf roldconf bboldconf


define makeBusybox
	@$(MAKE) -C $(BUSYBOX_DIR) $(1) \
		EXTRA_CFLAGS="-fPIC $(EXTRACFLAGS) -I$(STAGEDIR)/usr/include -idirafter $(KDIR)/include \
			$(if $(RTCONFIG_PROTECTION_SERVER),-DSECURITY_NOTIFY,)" \
		EXTRA_LDFLAGS="-L$(STAGEDIR)/usr/lib" \
		EXTRA_LDLIBS="$(if $(RTCONFIG_PROTECTION_SERVER),ptcsrv,)"
endef

busybox busybox-1.17.4 busybox-1.24.1: dummy $(if $(RTCONFIG_PROTECTION_SERVER),protect_srv-stage,)
	$(call makeBusybox)

busybox-install: dummy $(if $(RTCONFIG_PROTECTION_SERVER),protect_srv-stage,)
	$(call makeBusybox,install CONFIG_PREFIX=$(INSTALLDIR)/$(BUSYBOX))
	chmod 4755 $(INSTALLDIR)/$(BUSYBOX)/bin/busybox

busybox-%-install: dummy $(if $(RTCONFIG_PROTECTION_SERVER),protect_srv-stage,)
	$(call makeBusybox,install CONFIG_PREFIX=$(INSTALLDIR)/$(BUSYBOX))
	chmod 4755 $(INSTALLDIR)/$(BUSYBOX)/bin/busybox

busybox-clean:
	$(MAKE) -C $(BUSYBOX_DIR) distclean

busybox-%-clean:
	$(MAKE) -C $(BUSYBOX_DIR) distclean

busybox-config:
	$(MAKE) -C $(BUSYBOX_DIR) menuconfig

busybox-%-config:
	$(MAKE) -C $(BUSYBOX_DIR) menuconfig

infosvr: shared nvram${BCMEX}$(EX7)

infosvr-install:
	$(MAKE) -C infosvr INSTALLDIR=$(INSTALLDIR)/infosvr install

#libdisk: shared nvram$(BCMEX)$(EX7)

httpd: shared nvram$(BCMEX)$(EX7) libdisk $(if $(RTCONFIG_HTTPS),mssl) $(if $(RTCONFIG_PUSH_EMAIL),push_log) $(if $(RTCONFIG_BWDPI),bwdpi_source) json-c $(if $(RTCONFIG_CFGSYNC), $(CFGSYNC_PKG))
	@$(SEP)
	$(MAKE) -C httpd

httpd-install:
	$(MAKE) -C httpd INSTALLDIR=$(INSTALLDIR)/httpd install

www-install:
ifeq ($(HND_ROUTER),y)
	-mkdir $(SRCBASE)/image
endif
	@$(MAKE) -C www install INSTALLDIR=$(INSTALLDIR)/www TOMATO_EXPERIMENTAL=$(TOMATO_EXPERIMENTAL)

ifeq ($(RTCONFIG_OPENVPN),y)
OPENSSL_CIPHERS:=enable-rc5
else
#OPENSSL_CIPHERS:=no-dh no-idea no-rc2 no-rc5 no-aes no-aes192 no-cast no-des no-modes no-tls1 no-tlsext
OPENSSL_CIPHERS:=
endif

#OPENSSL_CIPHERS:=enable-aes enable-tls1 enable-tlsext
openssl/Makefile:
	cd openssl && \
	./Configure $(HOSTCONFIG) --prefix=/usr --openssldir=/etc --cross-compile-prefix=' ' \
	-ffunction-sections -fdata-sections -Wl,--gc-sections \
	shared $(OPENSSL_CIPHERS)
	-@$(MAKE) -C openssl clean
	@touch $@

fsbuild:
	-mkdir -p $(BCM_FSBUILD_DIR)/public/lib
	-mkdir -p $(BCM_FSBUILD_DIR)/public/bin
	-mkdir -p $(BCM_FSBUILD_DIR)/public/sbin
	-mkdir -p $(BCM_FSBUILD_DIR)/usr/lib
	-mkdir -p $(BCM_FSBUILD_DIR)/usr/sbin
	-mkdir -p $(BCM_FSBUILD_DIR)/public/include/openssl
	-cp -u openssl/include/openssl/* $(BCM_FSBUILD_DIR)/public/include/openssl
	-mkdir -p $(INSTALL_DIR)/bin
	-mkdir -p $(INSTALL_DIR)/rom/rom
	#-mkdir -p $(INSTALL_DIR)/etc
	-mkdir -p $(INSTALL_DIR)/lib/public
	-mkdir -p $(INSTALL_DIR)/lib/private
	-mkdir -p $(INSTALL_DIR)/lib/aarch64
	-mkdir -p $(INSTALL_DIR)/opt
	-mkdir -p $(INSTALL_DIR)/sbin
	-mkdir -p $(INSTALL_DIR)/usr
	-mkdir -p $(INSTALL_DIR)/var
	-mkdir -p $(INSTALL_DIR)/mnt
	-mkdir -p $(INSTALL_DIR)/tmp/etc
	-mkdir -p $(INSTALL_DIR)/www
	#-cp $(TOOLCHAIN)/arm-buildroot-linux-gnueabi/lib/libgcc_s* $(INSTALL_DIR)/lib/public
	#-cd $(INSTALL_DIR)/lib/public && rm -f libgcc_s.so && ln -sf libgcc_s.so.1 libgcc_s.so

openssl: openssl/Makefile
	$(MAKE) -j 8 -C openssl && $(MAKE) $@-stage

openssl-clean:
	[ ! -f openssl/Makefile ] || $(MAKE) -C openssl clean
	@rm -f openssl/Makefile

INSTALLSUBDIR=/openssl
openssl-install:
	[ ! -f openssl/Makefile ] || install -D openssl/libcrypto.so.1.0.0 $(INSTALLDIR)$(INSTALLSUBDIR)/usr/lib/libcrypto.so.1.0.0
	[ ! -f openssl/Makefile ] || $(STRIP) $(INSTALLDIR)$(INSTALLSUBDIR)/usr/lib/libcrypto.so.1.0.0
	[ ! -f openssl/Makefile ] || cd $(INSTALLDIR)$(INSTALLSUBDIR)/usr/lib && rm -f libcrypto.so && ln -sf libcrypto.so.1.0.0 libcrypto.so

	[ ! -f openssl/Makefile ] || install -D openssl/apps/openssl $(INSTALLDIR)$(INSTALLSUBDIR)/usr/sbin/openssl
	[ ! -f openssl/Makefile ] || $(STRIP) $(INSTALLDIR)$(INSTALLSUBDIR)/usr/sbin/openssl
	[ ! -f openssl/Makefile ] || chmod 0500 $(INSTALLDIR)$(INSTALLSUBDIR)/usr/sbin/openssl

ifeq ($(or $(RTCONFIG_WEBDAV),$(RTCONFIG_FTP_SSL),$(RTCONFIG_OPENVPN),$(RTCONFIG_HTTPS)),y)
	[ ! -f openssl/Makefile ] || install -D openssl/libssl.so.1.0.0 $(INSTALLDIR)$(INSTALLSUBDIR)/usr/lib/libssl.so.1.0.0
	[ ! -f openssl/Makefile ] || $(STRIP) $(INSTALLDIR)$(INSTALLSUBDIR)/usr/lib/libssl.so.1.0.0
	[ ! -f openssl/Makefile ] || cd $(INSTALLDIR)$(INSTALLSUBDIR)/usr/lib && rm -f libssl.so && ln -sf libssl.so.1.0.0 libssl.so
endif
	[ ! -f openssl/Makefile ] || install -D -m 0500 httpd/gencert.sh $(INSTALLDIR)$(INSTALLSUBDIR)/usr/sbin/gencert.sh

openssl-stage:
	$(MAKE) -C openssl install_sw INSTALL_PREFIX=$(STAGEDIR)

mssl: openssl

mssl-install:
	$(MAKE) -C mssl INSTALLDIR=$(INSTALLDIR)/mssl install

wb: json-c openssl libxml2 curl-7.21.7

wb-install:
	$(MAKE) -C wb INSTALLDIR=$(INSTALLDIR)/wb install

push_log: wb

rc: shared nvram$(BCMEX)$(EX7) libbcmcrypto libdisk $(if $(RTCONFIG_FBWIFI),fb_wifi) $(if $(RTCONFIG_QTN),libqcsapi_client) $(if $(CONFIG_LIBBCM),libbcm) $(if $(RTCONFIG_BWDPI),bwdpi_source) $(if $(RTCONFIG_USB_SMS_MODEM),smspdu) $(if $(RTCONFIG_HND_ROUTER),bcm_flashutil bcm_util bcm_boardctl) $(if $(RTCONFIG_OPENVPN),libvpn) $(if $(RTCONFIG_LANTIQ),libfapi-0.1) $(if $(RTCONFIG_CFGSYNC), $(CFGSYNC_PKG) $(if $(RTCONFIG_AMAS), amas-utils) $(if $(RTCONFIG_LANTIQ),hostapd-2.6))

rc-install:
	$(MAKE) -C rc INSTALLDIR=$(INSTALLDIR)/rc install

networkmap: shared json-c

networkmap-install:
	$(MAKE) -C networkmap INSTALLDIR=$(INSTALLDIR)/networkmap install

bridge/stamp-h1:
	cd bridge && CFLAGS="-Os -g $(EXTRACFLAGS)" \
	$(CONFIGURE) --prefix="" --with-linux-headers=$(KDIR)/include
	touch $@

bridge: bridge/stamp-h1
	@$(SEP)
	@$(MAKE) -C bridge

bridge-clean:
	-@$(MAKE) -C bridge clean
	@rm -f bridge/stamp-h1

bridge-install:
	install -D bridge/brctl/brctl $(INSTALLDIR)/bridge/usr/sbin/brctl
	$(STRIP) $(INSTALLDIR)/bridge/usr/sbin/brctl

dmalloc: dmalloc/Makefile dmalloc/dmalloc.h.2 dmalloc/settings.h
	$(MAKE) -C dmalloc all shlib cxx && $(MAKE) $@-stage

dmalloc/Makefile dmalloc/dmalloc.h.2 dmalloc/settings.h:
	$(MAKE) dmalloc-configure

dmalloc-configure:
	( cd dmalloc ; \
		$(CONFIGURE) \
		--prefix=/usr \
		--bindir=/usr/sbin \
		--libdir=/usr/lib \
		--enable-cxx --enable-threads --enable-shlib --with-pagesize=12 \
	)

dmalloc-install: dmalloc
	install -D $(STAGEDIR)/usr/sbin/dmalloc $(INSTALLDIR)/dmalloc/usr/sbin/dmalloc
	install -d $(INSTALLDIR)/dmalloc/usr/lib
	install -D $(STAGEDIR)/usr/lib/libdmalloc*.so* $(INSTALLDIR)/dmalloc/usr/lib
	$(STRIP) $(INSTALLDIR)/dmalloc/usr/sbin/dmalloc
	$(STRIP) $(INSTALLDIR)/dmalloc/usr/lib/*.so*

dmalloc-clean:
	[ ! -f dmalloc/Makefile ] || $(MAKE) -C dmalloc clean
	@rm -f dmalloc/{conf.h,dmalloc.h,dmalloc.h.2,settings.h,Makefile}

dnsmasq:
	@$(SEP)
	@$(MAKE) -C dnsmasq \
	COPTS="-DHAVE_BROKEN_RTC -DHAVE_LEASEFILE_EXPIRE -DNO_ID -DNO_AUTH -DNO_IPSET -DNO_LOOP -DNO_INOTIFY \
		$(if $(RTCONFIG_IPV6),-DUSE_IPV6,-DNO_IPV6) \
		$(if $(RTCONFIG_USB_EXTRAS)||$(RTCONFIG_TR069),,-DNO_SCRIPT) \
		$(if $(RTCONFIG_USB_EXTRAS),,-DNO_TFTP)" \
	CFLAGS="-Os -ffunction-sections -fdata-sections $(EXTRACFLAGS)" \
	LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections $(EXTRALDFLAGS)"

dnsmasq-install:
	install -D dnsmasq/src/dnsmasq $(INSTALLDIR)/dnsmasq/usr/sbin/dnsmasq
	$(STRIP) $(INSTALLDIR)/dnsmasq/usr/sbin/dnsmasq

iptables-1.4.x/configure:
	cd iptables-1.4.x && ./autogen.sh

iptables-1.4.x/Makefile: iptables-1.4.x/configure
	cd iptables-1.4.x && $(CONFIGURE) \
		--prefix=/usr \
		--bindir=/usr/sbin \
		--libdir=/usr/lib \
		--with-kernel=$(LINUXDIR) \
		$(if $(RTCONFIG_IPV6),--enable-ipv6,--disable-ipv6) \
		CFLAGS="-Os $(EXTRACFLAGS) -U CONFIG_NVRAM_SIZE"

iptables-1.4.x: iptables-1.4.x/Makefile
	@$(SEP)
	$(MAKE) -C $@ KERNEL_DIR=$(LINUX_INC_DIR) COPT_FLAGS="-Os $(EXTRACFLAGS) -U CONFIG_NVRAM_SIZE"

iptables-1.4.x-install: iptables-1.4.x
	install -D iptables-1.4.x/iptables/.libs/xtables-multi $(INSTALLDIR)/iptables-1.4.x/usr/sbin/xtables-multi
	cd $(INSTALLDIR)/iptables-1.4.x/usr/sbin && \
		ln -sf xtables-multi iptables-restore && \
		ln -sf xtables-multi iptables-save && \
		ln -sf xtables-multi iptables
	install -d $(INSTALLDIR)/iptables-1.4.x/usr/lib/xtables
	install -D iptables-1.4.x/libiptc/.libs/libiptc.so $(INSTALLDIR)/iptables-1.4.x/usr/lib/libiptc.so
	install -D iptables-1.4.x/libiptc/.libs/libip4tc.so $(INSTALLDIR)/iptables-1.4.x/usr/lib/libip4tc.so
	cd $(INSTALLDIR)/iptables-1.4.x/usr/lib && \
		ln -sf libiptc.so libiptc.so.0 && \
		ln -sf libiptc.so libiptc.so.0.0.0 && \
		ln -sf libip4tc.so libip4tc.so.0 && \
		ln -sf libip4tc.so libip4tc.so.0.0.0
	install -D iptables-1.4.x/libxtables/.libs/lib*.so $(INSTALLDIR)/iptables-1.4.x/usr/lib/
	cd $(INSTALLDIR)/iptables-1.4.x/usr/lib && \
		ln -sf libxtables.so libxtables.so.7 && \
		ln -sf libxtables.so libxtables.so.7.0.0
	install -D iptables-1.4.x/extensions/*.so $(INSTALLDIR)/iptables-1.4.x/usr/lib/xtables

ifeq ($(RTCONFIG_IPV6),y)
	cd $(INSTALLDIR)/iptables-1.4.x/usr/sbin && \
		ln -sf xtables-multi ip6tables-restore && \
		ln -sf xtables-multi ip6tables
	install -D iptables-1.4.x/libiptc/.libs/libip6tc.so $(INSTALLDIR)/iptables-1.4.x/usr/lib/libip6tc.so
	cd $(INSTALLDIR)/iptables-1.4.x/usr/lib && \
		ln -sf libip6tc.so libip6tc.so.0 && \
		ln -sf libip6tc.so libip6tc.so.0.0.0
endif
	$(STRIP) $(INSTALLDIR)/iptables-1.4.x/usr/sbin/xtables-multi
	$(STRIP) $(INSTALLDIR)/iptables-1.4.x/usr/lib/*.so*
	$(STRIP) $(INSTALLDIR)/iptables-1.4.x/usr/lib/xtables/*.so*

iptables-1.4.x-clean:
	[ ! -f iptables-1.4.x/Makefile ] || $(MAKE) -C iptables-1.4.x KERNEL_DIR=$(LINUX_INC_DIR) distclean
	@rm -f iptables-1.4.x/Makefile

miniupnpd/config.h: shared/version.h
	cd miniupnpd && ./genconfig.sh --vendorcfg --leasefile

miniupnpd: $(IPTABLES) miniupnpd/config.h
	@$(SEP)
	PKG_CONFIG=false ARCH=$(PLATFORM_ARCH) \
	$(MAKE) -C $@ -f Makefile.asus \
		IPTABLESPATH=$(TOP)/$(IPTABLES) \
		EXTRACFLAGS="-Os $(EXTRACFLAGS) -idirafter$(KERNEL_HEADER_DIR) -ffunction-sections -fdata-sections" \
		LDFLAGS="$(EXTRALDFLAGS) -ffunction-sections -fdata-sections -Wl,--gc-sections -L$(IPTC_LIBDIR)" \
		LDLIBS="-Wl,--as-needed $(IPTC_LIBS)"

miniupnpd-clean:
	-@$(MAKE) -C miniupnpd -f Makefile.asus clean
	-@rm miniupnpd/config.h

miniupnpd$(MUVER)-install: miniupnpd$(MUVER)
	install -D miniupnpd$(MUVER)/miniupnpd $(INSTALLDIR)/miniupnpd$(MUVER)/usr/sbin/miniupnpd
	$(STRIP) $(INSTALLDIR)/miniupnpd$(MUVER)/usr/sbin/miniupnpd
# !!TB
#shared:
shared: openssl json-c
	$(MAKE) -C shared

shared-install:
	$(MAKE) -C shared INSTALLDIR=$(INSTALLDIR)/shared install

vsftpd: nvram$(BCMEX)$(EX7) shared libdisk openssl
	@$(SEP)
	$(MAKE) -C vsftpd

vsftpd-install:
	install -D vsftpd/vsftpd $(INSTALLDIR)/vsftpd/usr/sbin/vsftpd
	$(STRIP) -s $(INSTALLDIR)/vsftpd/usr/sbin/vsftpd

ntfs-3g/stamp-h1:
	cd ntfs-3g && \
	CC=$(CC) CFLAGS="-Os -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections" \
		LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections -fPIC -ldl" \
		$(CONFIGURE) --enable-shared=no --enable-static=no \
		--disable-library --disable-ldconfig --disable-mount-helper --with-fuse=internal \
		--disable-posix-acls --disable-nfconv --disable-dependency-tracking
	touch $@

ntfs-3g: ntfs-3g/stamp-h1
	@$(MAKE) -C ntfs-3g

ntfs-3g-clean:
	-@$(MAKE) -C ntfs-3g clean
	@rm -f ntfs-3g/stamp-h1

ntfs-3g-install: ntfs-3g
	install -D ntfs-3g/src/ntfs-3g $(INSTALLDIR)/ntfs-3g/bin/ntfs-3g
	$(STRIP) -s $(INSTALLDIR)/ntfs-3g/bin/ntfs-3g
	install -d $(INSTALLDIR)/ntfs-3g/sbin && cd $(INSTALLDIR)/ntfs-3g/sbin && \
		ln -sf ../bin/ntfs-3g mount.ntfs-3g && \
		ln -sf ../bin/ntfs-3g mount.ntfs
libusb-0.1.12/stamp-h1:
	cd libusb-0.1.12 && CFLAGS="-Os -Wall $(EXTRACFLAGS)" LIBS="-lpthread -ldl" \
	$(CONFIGURE) --prefix=/usr --disable-build-docs --disable-dependency-tracking
	-@$(MAKE) -C libusb-0.1.12 clean
	touch $@

libusb-0.1.12: libusb-0.1.12/stamp-h1
	$(MAKE) -C $@

libusb-0.1.12-install: libusb-0.1.12
#	install -D libusb-0.1.12/.libs/libusb-0.1.so.4.4.4 $(INSTALLDIR)/libusb-0.1.12/usr/lib/libusb-0.1.so.4.4.4
#	$(STRIP) $(INSTALLDIR)/libusb-0.1.12/usr/lib/*.so.*
#	cd $(INSTALLDIR)/libusb-0.1.12/usr/lib && \
#	ln -sf libusb-0.1.so.4.4.4 libusb-0.1.so.4 && \
#	ln -sf libusb-0.1.so.4.4.4 libusb.so
	@echo "do nothing"

libusb-0.1.12-clean:
	-@$(MAKE) -C libusb-0.1.12 clean
	@rm -f libusb-0.1.12/stamp-h1
	
libusb10/stamp-h1:
	cd libusb10 && CFLAGS="-Os -Wall $(EXTRACFLAGS)" LIBS="-lpthread -ldl -lc $(EXTRALDFLAGS)" \
	$(CONFIGURE) --enable-shared --prefix=/usr ac_cv_lib_rt_clock_gettime=no
	-@$(MAKE) -C libusb10 clean
	touch $@

libusb10: libusb10/stamp-h1
	$(MAKE) -C $@

libusb10-install: libusb10
	install -D libusb10/libusb/.libs/libusb-1.0.so.0.0.0 $(INSTALLDIR)/libusb10/usr/lib/libusb-1.0.so.0
	$(STRIP) $(INSTALLDIR)/libusb10/usr/lib/*.so.*
	cd $(INSTALLDIR)/libusb10/usr/lib && \
		ln -sf libusb-1.0.so.0 libusb-1.0.so.0.0.0 && \
		ln -sf libusb-1.0.so.0 libusb-1.0.so

libusb10-clean:
	-@$(MAKE) -C libusb10 clean
	@rm -f libusb10/stamp-h1

libusb/stamp-h1:
	cd libusb && CFLAGS="-Wall -Os $(EXTRACFLAGS)" LDFLAGS="$(EXTRALDFLAGS)" \
	$(CONFIGURE) --prefix=/usr \
		LIBUSB_1_0_CFLAGS="-I$(TOP)/libusb10/libusb" \
		LIBUSB_1_0_LIBS="-L$(TOP)/libusb10/libusb/.libs -lusb-1.0 -lpthread -ldl $(EXTRALDFLAGS)\
		-Wl,-R/lib:/usr/lib:/opt/usr/lib:/usr/local/share"
	-@$(MAKE) -C libusb clean
	touch $@

libusb: libusb10 libusb/stamp-h1
	$(MAKE) -C $@

libusb-install: libusb
	install -D libusb/libusb/.libs/libusb-0.1.so.4.4.4 $(INSTALLDIR)/libusb/usr/lib/libusb-0.1.so.4
	$(STRIP) $(INSTALLDIR)/libusb/usr/lib/*.so.*
	cd $(INSTALLDIR)/libusb/usr/lib && \
		ln -sf libusb-0.1.so.4 libusb-0.1.so.4.4.4 && \
		ln -sf libusb-0.1.so.4 libusb.so

libusb-clean:
	-@$(MAKE) -C libusb clean
	@rm -f libusb/stamp-h1

usb-modeswitch: libusb10
	$(MAKE) -C $@ CC=$(CC) CFLAGS="-Os $(EXTRACFLAGS) -I$(TOP)/libusb10/libusb" LIBS="\
		-Wl,-R/lib:/usr/lib:/opt/usr/lib:/usr/local/share -lpthread -ldl \
		-L$(TOP)/libusb10/libusb/.libs -lusb-1.0"

usb-modeswitch-install: usb-modeswitch
	install -D usb-modeswitch/usb_modeswitch $(INSTALLDIR)/usb-modeswitch/usr/sbin/usb_modeswitch
	$(STRIP) -s $(INSTALLDIR)/usb-modeswitch/usr/sbin/usb_modeswitch
	@mkdir -p $(TARGETDIR)/rom/$(EX_ROM)/etc
	@sed 's/#.*//g;s/[ \t]\+/ /g;s/^[ \t]*//;s/[ \t]*$$//;/^$$/d' < $(TOP)/usb-modeswitch/usb_modeswitch.conf > $(TARGETDIR)/rom/$(EX_ROM)/etc/usb_modeswitch.conf

usbmode/stamp-h1:
	@rm -f usbmode/crosscompiled.cmake
	$(call CMAKE_CrossOptions, usbmode/crosscompiled.cmake)
	cd usbmode && cmake -DCMAKE_TOOLCHAIN_FILE=crosscompiled.cmake .
	touch $@

usbmode: json-c libubox usbmode/stamp-h1
	$(MAKE) -C $@ EXTRACFLAGS="$(EXTRACFLAGS) -I$(TOP)/libubox"

usbmode-install: usbmode
	install -D $</$< $(INSTALLDIR)/$</usr/sbin/$<
	$(STRIP) $(INSTALLDIR)/$</usr/sbin/$<

usbmode-clean:
	[ ! -f usbmode/Makefile ] || $(MAKE) -C usbmode clean
	cd usbmode && rm -rf CMakeCache.txt CMakeFiles cmake_install.cmake crosscompiled.cmake Makefile stamp-h1

libubox: json-c
	$(MAKE) -C $@ EXTRACFLAGS="$(EXTRACFLAGS)" JSONC=$(TOP)/json-c

libubox-install: libubox
	install -D $</libubox.so $(INSTALLDIR)/$</usr/lib/libubox.so
	install -D $</libblobmsg_json.so $(INSTALLDIR)/$</usr/lib/libblobmsg_json.so
	$(STRIP) $(INSTALLDIR)/$</usr/lib/*

uqmi: json-c libubox
	$(MAKE) -C $@ EXTRACFLAGS="$(EXTRACFLAGS)" LIBUBOX=$(TOP)/libubox JSONC=$(TOP)/json-c

uqmi-install: uqmi
	install -D $</$< $(INSTALLDIR)/$</usr/sbin/$<
	$(STRIP) $(INSTALLDIR)/$</usr/sbin/$<

libdaemon/stamp-h1:
	cd libdaemon && autoreconf -i -f && $(CONFIGURE) --prefix=/usr \
	--disable-dependency-tracking \
	ac_cv_func_setpgrp_void=yes
	touch $@

libdaemon: libdaemon/stamp-h1
	$(MAKE) -C $@ && $(MAKE) $@-stage

libdaemon-install: libdaemon
	install -D libdaemon/libdaemon/.libs/libdaemon.so.0.5.0 $(INSTALLDIR)/libdaemon/usr/lib/libdaemon.so.0.5.0
	$(STRIP) $(INSTALLDIR)/libdaemon/usr/lib/*.so.*
	cd $(INSTALLDIR)/libdaemon/usr/lib && \
		ln -sf libdaemon.so.0.5.0 libdaemon.so && \
		ln -sf libdaemon.so.0.5.0 libdaemon.so.0

libdaemon-clean:
	-@$(MAKE) -C libdaemon distclean
	@rm -f libdaemon/stamp-h1


odhcp6c: odhcp6c/Makefile
	@EXT_CFLAGS="-Os -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections -fPIC" \
	EXT_LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections" \
	PREFIX="/usr" \
	$(MAKE) -C odhcp6c

odhcp6c-install: odhcp6c
	install -D odhcp6c/src/odhcp6c $(INSTALLDIR)/odhcp6c/usr/sbin/odhcp6c
	$(STRIP) $(INSTALLDIR)/odhcp6c/usr/sbin/odhcp6c

odhcp6c-clean:
	-@$(MAKE) -C odhcp6c clean

6relayd: 6relayd/Makefile
	@EXT_CFLAGS="-Os -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections -fPIC" \
	EXT_LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections" \
	PREFIX="/usr" \
	$(MAKE) -C 6relayd

6relayd-install: 6relayd
	install -D 6relayd/src/6relayd $(INSTALLDIR)/6relayd/usr/sbin/6relayd
	$(STRIP) $(INSTALLDIR)/6relayd/usr/sbin/6relayd

6relayd-clean:
	-@$(MAKE) -C 6relayd clean

e2fsprogs: e2fsprogs/Makefile
	$(MAKE) -C e2fsprogs && $(MAKE) $@-stage

e2fsprogs/Makefile:
	$(MAKE) e2fsprogs-configure

e2fsprogs-configure: e2fsprogs/Makefile.in
	cd e2fsprogs && \
	CFLAGS="-Os -ffunction-sections -fdata-sections $(EXTRACFLAGS)" \
	LDFLAGS="-Wl,--gc-sections $(EXTRALDFLAGS)" \
	$(CONFIGURE) --prefix=/usr --sysconfdir=/etc --enable-elf-shlibs \
		--disable-rpath --disable-nls --disable-tls \
		--disable-jbd-debug --disable-blkid-debug --disable-testio-debug \
		--enable-libuuid --enable-libblkid \
		--disable-backtrace --disable-debugfs \
		--disable-imager --disable-resizer --disable-defrag \
		--disable-e2initrd-helper --disable-uuidd \
		$(if $(RTCONFIG_BCMARM),ac_cv_lib_pthread_sem_init=no,) \
		ac_cv_lib_dl_dlopen=no \
		ac_cv_have_decl_fgets_unlocked=yes

e2fsprogs-stage:
	$(MAKE) -C e2fsprogs/lib/uuid DESTDIR=$(STAGEDIR) LDCONFIG=true install

e2fsprogs-install:
# libs
	install -D e2fsprogs/lib/libuuid.so.1.2 $(INSTALLDIR)/e2fsprogs/usr/lib/libuuid.so.1.2
	cd $(INSTALLDIR)/e2fsprogs/usr/lib && \
		ln -sf libuuid.so.1.2 libuuid.so.1 && ln -sf libuuid.so.1.2 libuuid.so
ifneq (,$(filter y,$(RTCONFIG_E2FSPROGS) $(RTCONFIG_EXT4FS)))
	install -D e2fsprogs/lib/libblkid.so.1.0 $(INSTALLDIR)/e2fsprogs/usr/lib/libblkid.so.1.0
	install -D e2fsprogs/lib/libcom_err.so.2.1 $(INSTALLDIR)/e2fsprogs/usr/lib/libcom_err.so.2.1
	install -D e2fsprogs/lib/libe2p.so.2.3 $(INSTALLDIR)/e2fsprogs/usr/lib/libe2p.so.2.3
	install -D e2fsprogs/lib/libext2fs.so.2.4 $(INSTALLDIR)/e2fsprogs/usr/lib/libext2fs.so.2.4
	cd $(INSTALLDIR)/e2fsprogs/usr/lib && \
		ln -sf libblkid.so.1.0 libblkid.so.1 && ln -sf libblkid.so.1.0 libblkid.so && \
		ln -sf libcom_err.so.2.1 libcom_err.so.2 && ln -sf libcom_err.so.2.1 libcom_err.so && \
		ln -sf libe2p.so.2.3 libe2p.so.2 && ln -sf libe2p.so.2.3 libe2p.so && \
		ln -sf libext2fs.so.2.4 libext2fs.so.2 && ln -sf libext2fs.so.2.4 libext2fs.so
endif
	$(STRIP) $(INSTALLDIR)/e2fsprogs/usr/lib/*.so.*
# apps
ifneq (,$(filter y,$(RTCONFIG_E2FSPROGS) $(RTCONFIG_EXT4FS)))
ifeq ($(RTCONFIG_E2FSPROGS),y)
	install -D e2fsprogs/e2fsck/e2fsck $(INSTALLDIR)/e2fsprogs/usr/sbin/e2fsck
	ln -sf e2fsck $(INSTALLDIR)/e2fsprogs/usr/sbin/fsck.ext2
	ln -sf e2fsck $(INSTALLDIR)/e2fsprogs/usr/sbin/fsck.ext3
ifeq ($(RTCONFIG_EXT4FS),y)
	ln -sf e2fsck $(INSTALLDIR)/e2fsprogs/usr/sbin/fsck.ext4
endif
ifneq ($(NO_MKTOOLS),y)
	install -D e2fsprogs/misc/mke2fs $(INSTALLDIR)/e2fsprogs/usr/sbin/mke2fs
	ln -sf mke2fs $(INSTALLDIR)/e2fsprogs/usr/sbin/mkfs.ext2
	ln -sf mke2fs $(INSTALLDIR)/e2fsprogs/usr/sbin/mkfs.ext3
ifeq ($(RTCONFIG_EXT4FS),y)
	ln -sf mke2fs $(INSTALLDIR)/e2fsprogs/usr/sbin/mkfs.ext4
endif
endif
else ifeq ($(RTCONFIG_EXT4FS),y)
	install -D e2fsprogs/e2fsck/e2fsck $(INSTALLDIR)/e2fsprogs/usr/sbin/fsck.ext4
ifneq ($(NO_MKTOOLS),y)
	install -D e2fsprogs/misc/mke2fs $(INSTALLDIR)/e2fsprogs/usr/sbin/mkfs.ext4
endif
endif
	$(STRIP) $(INSTALLDIR)/e2fsprogs/usr/sbin/*
	install -D -m 0644 e2fsprogs/e2fsck/e2fsck.conf $(INSTALLDIR)/e2fsprogs/rom/etc/e2fsck.conf
endif

e2fsprogs-clean:
	[ ! -f e2fsprogs/Makefile ] || $(MAKE) -C e2fsprogs clean
	@rm -f e2fsprogs/Makefile

ecmh/stamp-h1:
	@touch ecmh/src/stamp-h1

ecmh: ecmh/stamp-h1
	@$(MAKE) -C ecmh CC=$(CC) AR=$(AR) RANLIB=$(RANLIB) LD=$(LD)

ecmh-clean:
	-@$(MAKE) -C ecmh clean
	@rm -f ecmh/src/stamp-h1

ecmh-install: ecmh
	install -D ecmh/src/ecmh $(INSTALLDIR)/ecmh/bin/ecmh
	$(STRIP) $(INSTALLDIR)/ecmh/bin/ecmh

p910nd:
samba:
nvram$(BCMEX)$(EX7): shared

nvram$(BCMEX)$(EX7)-install:
	$(MAKE) -C nvram$(BCMEX)$(EX7) INSTALLDIR=$(INSTALLDIR)/nvram$(BCMEX)$(EX7) install

prebuilt: shared

vlan:
	@$(SEP)
	@$(MAKE) -C vlan CROSS=$(CROSS_COMPILE)	# STRIPTOOL=$(STRIP)

vlan-install:
	$(MAKE) -C vlan CROSS=$(CROSS_COMPILE) INSTALLDIR=$(INSTALLDIR)/vlan install	# STRIPTOOL=$(STRIP)
	$(STRIP) $(INSTALLDIR)/vlan/usr/sbin/vconfig

accel-pptpd: kernel_header pppd accel-pptpd/pptpd-1.3.3/Makefile
	@$(MAKE) -C accel-pptpd server

accel-pptpd/pptpd-1.3.3/Makefile:
	$(MAKE) accel-pptpd-configure

accel-pptpd-configure:
	( cd accel-pptpd/pptpd-1.3.3 && CFLAGS="$(CFLAGS) -g -O2 $(EXTRACFLAGS) -idirafter $(KDIR)/include" \
		$(CONFIGURE) --prefix=/usr --bindir=/usr/sbin --libdir=/usr/lib \
			--enable-bcrelay KDIR=$(KDIR) PPPDIR=$(TOP)/pppd \
	)

accel-pptpd-clean:
	[ ! -f accel-pptpd/pptpd-1.3.3/Makefile ] || $(MAKE) -C accel-pptpd distclean
	@rm -f accel-pptpd/pptpd-1.3.3/Makefile

accel-pptpd-install: accel-pptpd
	$(MAKE) -C accel-pptpd server_install

pptpd/stamp-h1:
	cd $(TOP)/pptpd && $(CONFIGURE) --prefix=/usr --enable-bcrelay CC=$(CC) STRIP=$(STRIP) AR=$(AR) LD=$(LD) NM=$(NM) RANLIB=$(RANLIB)
	touch $@

pptpd: pptpd/stamp-h1

pptpd-install: pptpd
	@echo pptpd
	@install -D pptpd/pptpd $(INSTALLDIR)/pptpd/usr/sbin/pptpd
	@install -D pptpd/bcrelay $(INSTALLDIR)/pptpd/usr/sbin/bcrelay
	@install -D pptpd/pptpctrl $(INSTALLDIR)/pptpd/usr/sbin/pptpctrl
	@$(STRIP) $(INSTALLDIR)/pptpd/usr/sbin/pptpd
	@$(STRIP) $(INSTALLDIR)/pptpd/usr/sbin/bcrelay
	@$(STRIP) $(INSTALLDIR)/pptpd/usr/sbin/pptpctrl

pptpd-clean:
	-@make -C pptpd clean
	@rm -f pptpd/stamp-h1

rp-pppoe/src/stamp-h1:
ifeq ($(HND_ROUTER),y)
	cd rp-pppoe/src && CFLAGS="-g -O2 -I $(TOP)/pppd -idirafter $(KDIR)/include" \
	$(CONFIGURE) --prefix=/usr --enable-plugin=$(TOP)/pppd \
	ac_cv_linux_kernel_pppoe=yes rpppoe_cv_pack_bitfields=rev \
	PPPD_INCDIR=$(TOOLCHAIN)/include \
	ac_cv_header_linux_if_pppox_h=yes \
	ac_cv_pluginpath=$(TOOLCHAIN)/include
	touch $@
else
	cd rp-pppoe/src && CFLAGS="-g -O2 $(EXTRACFLAGS) -idirafter $(KDIR)/include" \
	$(CONFIGURE) --prefix=/usr --enable-plugin=$(TOP)/pppd \
	ac_cv_linux_kernel_pppoe=yes rpppoe_cv_pack_bitfields=rev --disable-debugging
	touch $@
endif

rp-pppoe: pppd rp-pppoe/src/stamp-h1
	@$(MAKE) -C rp-pppoe/src pppoe-relay rp-pppoe.so

rp-pppoe-clean:
	-@$(MAKE) -C rp-pppoe/src clean
	@rm -f rp-pppoe/src/stamp-h1

rp-pppoe-install: rp-pppoe
	install -D rp-pppoe/src/rp-pppoe.so $(INSTALLDIR)/rp-pppoe/usr/lib/pppd/rp-pppoe.so
	$(STRIP) $(INSTALLDIR)/rp-pppoe/usr/lib/pppd/*.so
	install -D rp-pppoe/src/pppoe-relay $(INSTALLDIR)/rp-pppoe/usr/sbin/pppoe-relay
	$(STRIP) $(INSTALLDIR)/rp-pppoe/usr/sbin/pppoe-relay

rp-l2tp/stamp-h1: kernel_header
	cd rp-l2tp && CFLAGS="-O2 -Wall $(EXTRACFLAGS) -idirafter $(KDIR)/include $(if $(RTCONFIG_VPNC), -DRTCONFIG_VPNC,)" \
	$(CONFIGURE) --prefix=/usr --sysconfdir=/tmp
	touch $@

rp-l2tp: pppd rp-l2tp/stamp-h1
	$(MAKE) -C rp-l2tp

rp-l2tp-clean:
	-@$(MAKE) -C rp-l2tp distclean
	@rm -f rp-l2tp/stamp-h1

rp-l2tp-install:
	install -d $(INSTALLDIR)/rp-l2tp/usr/lib/l2tp
	install rp-l2tp/handlers/*.so $(INSTALLDIR)/rp-l2tp/usr/lib/l2tp
	$(STRIP) $(INSTALLDIR)/rp-l2tp/usr/lib/l2tp/*.so
	install -D rp-l2tp/handlers/l2tp-control $(INSTALLDIR)/rp-l2tp/usr/sbin/l2tp-control
	$(STRIP) $(INSTALLDIR)/rp-l2tp/usr/sbin/l2tp-control
	install -D rp-l2tp/l2tpd $(INSTALLDIR)/rp-l2tp/usr/sbin/l2tpd
	$(STRIP) $(INSTALLDIR)/rp-l2tp/usr/sbin/l2tpd

xl2tpd: pppd
	CFLAGS="-g $(EXTRACFLAGS)" $(MAKE) -C $@ PREFIX=/usr xl2tpd

xl2tpd-install: xl2tpd
	install -D xl2tpd/xl2tpd $(INSTALLDIR)/xl2tpd/usr/sbin/xl2tpd
	$(STRIP) $(INSTALLDIR)/xl2tpd/usr/sbin/xl2tpd

pptp-client-install:
	install -D pptp-client/pptp $(INSTALLDIR)/pptp-client/usr/sbin/pptp
	$(STRIP) $(INSTALLDIR)/pptp-client/usr/sbin/pptp

ifeq ($(RTCONFIG_REALTEK),y)
accel-pptp/linux/version.h:
	$(MAKE) -C $(LINUXDIR) include/linux/version.h
endif

ifeq ($(RTCONFIG_REALTEK),y)
accel-pptp/stamp-h1: kernel_header $(if $(RTCONFIG_REALTEK), accel-pptp/linux/version.h, $(LINUXDIR)/include/linux/version.h)
else
ifeq ($(RTCONFIG_ALPINE)$(RTCONFIG_LANTIQ),y)
accel-pptp/stamp-h1: kernel_header $(LINUXDIR)/include/generated/uapi/linux/version.h
else
accel-pptp/stamp-h1: kernel_header $(LINUX_INC_DIR)/include/linux/version.h
endif
endif
	cd accel-pptp && CFLAGS="-g -O2 $(EXTRACFLAGS) -idirafter $(KDIR)/include $(if $(RTCONFIG_VPNC), -DRTCONFIG_VPNC,)" \
	$(CONFIGURE) --prefix=/usr --build=i686-linux KDIR=$(KDIR) PPPDIR=$(TOP)/pppd 
	touch $@

accel-pptp: pppd accel-pptp/stamp-h1
	@$(MAKE) -C accel-pptp

accel-pptp-clean:
	-@$(MAKE) -C accel-pptp clean
	@rm -f accel-pptp/stamp-h1

accel-pptp-install: accel-pptp
	install -D accel-pptp/src/.libs/pptp.so $(INSTALLDIR)/accel-pptp/usr/lib/pppd/pptp.so
	$(STRIP) $(INSTALLDIR)/accel-pptp/usr/lib/pppd/pptp.so

# for vpn server usage now
pppd_245:
	@$(MAKE) -C pppd_245

pppd_245-install: pppd
	install -D pppd_245/ppp/pppoe/pppd $(INSTALLDIR)/pppd_245/usr/sbin/pppd_245

pppd/stamp-h1: kernel_header
	cd pppd && $(CONFIGURE) --prefix=/usr --sysconfdir=/tmp
	touch $@

pppd: pppd/stamp-h1
	@$(SEP)
	@$(MAKE) -C pppd MFLAGS='$(if $(RTCONFIG_IPV6),HAVE_INET6=y,) \
	EXTRACFLAGS="$(EXTRACFLAGS) -idirafter $(KDIR)/include $(if $(RTCONFIG_VPNC),-DRTCONFIG_VPNC,)"'

pppd-clean:
	-@$(MAKE) -C pppd clean
	@rm -f pppd/stamp-h1

pppd-install: pppd
	install -D pppd/pppd/pppd $(INSTALLDIR)/pppd/usr/sbin/pppd
	$(STRIP) $(INSTALLDIR)/pppd/usr/sbin/pppd
	install -D pppd/chat/chat $(INSTALLDIR)/pppd/usr/sbin/chat
	$(STRIP) $(INSTALLDIR)/pppd/usr/sbin/chat
ifeq ($(RTCONFIG_L2TP),y)
	install -D pppd/pppd/plugins/pppol2tp/pppol2tp.so $(INSTALLDIR)/pppd/usr/lib/pppd/pppol2tp.so
	$(STRIP) $(INSTALLDIR)/pppd/usr/lib/pppd/*.so
endif

ez-ipupdate-install:
	install -D ez-ipupdate/ez-ipupdate $(INSTALLDIR)/ez-ipupdate/usr/sbin/ez-ipupdate
	$(STRIP) $(INSTALLDIR)/ez-ipupdate/usr/sbin/ez-ipupdate

quagga/stamp-h1:
	@cd quagga && \
	CC=$(CC) AR=$(AR) RANLIB=$(RANLIB) LD=$(LD) \
	CFLAGS="$(CFLAGS) -Os -Wall -ffunction-sections -fdata-sections -fPIC" \
	LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections" \
	$(CONFIGURE) --enable-shared=lib --disable-ripngd --disable-ospfd --disable-doc --disable-ospfclient \
	--disable-ospf6d --disable-bgpd --disable-bgp-announce --disable-babeld \
	--disable-silent-rules \
	--disable-isisd
	@touch $@

quagga: quagga/stamp-h1
	@$(MAKE) -C quagga CC=$(CC) AR=$(AR) RANLIB=$(RANLIB) LD=$(LD)

quagga-clean:
	-@$(MAKE) -C quagga clean
	@rm -f quagga/stamp-h1

quagga-install:
	install -d $(INSTALLDIR)/quagga/usr/lib
	libtool --mode=install install -c quagga/lib/libzebra.la $(INSTALLDIR)/quagga/usr/lib
	libtool --finish $(INSTALLDIR)/quagga/usr/lib
ifneq ($(HND_ROUTER),y)
	rm -f $(INSTALLDIR)/quagga/usr/lib/libzebra.a
	rm -f $(INSTALLDIR)/quagga/usr/lib/libzebra.la
endif
	install -d $(INSTALLDIR)/quagga/usr/sbin
	install -d $(INSTALLDIR)/quagga/usr/local/etc
	libtool --mode=install install -c quagga/zebra/zebra $(INSTALLDIR)/quagga/usr/sbin
	install -c -m 777 quagga/zebra/zebra.conf.sample $(INSTALLDIR)/quagga/usr/local/etc/zebra.conf
	libtool --mode=install install -c quagga/ripd/ripd $(INSTALLDIR)/quagga/usr/sbin
	install -c -m 777 quagga/ripd/ripd.conf.sample $(INSTALLDIR)/quagga/usr/local/etc/ripd.conf
	libtool --mode=install install -c quagga/watchquagga/watchquagga $(INSTALLDIR)/quagga/usr/sbin
	$(STRIP) $(INSTALLDIR)/quagga/usr/sbin/zebra
	$(STRIP) $(INSTALLDIR)/quagga/usr/sbin/ripd
	$(STRIP) $(INSTALLDIR)/quagga/usr/sbin/watchquagga
	install -D $(shell dirname $(shell which $(CXX)))/../lib/librt.so.0 $(TARGETDIR)/lib/librt.so.0

zebra/stamp-h1:
	@cd zebra && rm -f config.cache && \
	CC=$(CC) AR=$(AR) RANLIB=$(RANLIB) LD=$(LD) \
	CFLAGS="-Os -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections" \
	LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections -fPIC" \
	$(CONFIGURE) --sysconfdir=/etc \
	--enable-netlink $(if $(RTCONFIG_IPV6),--enable-ipv6,--disable-ipv6) --disable-ripngd --disable-ospfd --disable-doc \
	--disable-ospf6d --disable-bgpd --disable-bgpd-announce
	@touch $@

zebra: zebra/stamp-h1
	@$(MAKE) -C zebra CC=$(CC) AR=$(AR) RANLIB=$(RANLIB) LD=$(LD)

zebra-clean:
	-@$(MAKE) -C zebra clean
	@rm -f zebra/stamp-h1

zebra-install: zebra
	install -D zebra/zebra/zebra $(INSTALLDIR)/zebra/usr/sbin/zebra
	install -D zebra/ripd/ripd $(INSTALLDIR)/zebra/usr/sbin/ripd
	install -D zebra/lib/libzebra.so $(INSTALLDIR)/zebra/usr/lib/libzebra.so
	$(STRIP) $(INSTALLDIR)/zebra/usr/sbin/zebra
	$(STRIP) $(INSTALLDIR)/zebra/usr/sbin/ripd
	$(STRIP) $(INSTALLDIR)/zebra/usr/lib/libzebra.so

bpalogin-install:
	install -D bpalogin/bpalogin $(INSTALLDIR)/bpalogin/usr/sbin/bpalogin
	$(STRIP) $(INSTALLDIR)/bpalogin/usr/sbin/bpalogin

wpa_supplicant-0.7.3/stamp-h1:
	touch $@

wpa_supplicant-0.7.3: $@/stamp-h1
	$(MAKE) -C $@/src/eap_peer

wpa_supplicant-0.7.3-install: wpa_supplicant-0.7.3
	install -D wpa_supplicant-0.7.3/src/eap_peer/libeap.so.0.0.0 $(INSTALLDIR)/wpa_supplicant-0.7.3/usr/lib/libeap.so.0.0.0
	$(STRIP) $(INSTALLDIR)/wpa_supplicant-0.7.3/usr/lib/libeap.so.0.0.0
	cd $(INSTALLDIR)/wpa_supplicant-0.7.3/usr/lib && \
	ln -sf libeap.so.0.0.0 $(INSTALLDIR)/wpa_supplicant-0.7.3/usr/lib/libeap.so.0
	ln -sf libeap.so.0.0.0 $(INSTALLDIR)/wpa_supplicant-0.7.3/usr/lib/libeap.so

wpa_supplicant-0.7.3-clean:
	-@$(MAKE) -C wpa_supplicant-0.7.3/src/eap_peer clean
	@rm -f wpa_supplicant-0.7.3/stamp-h1

gctwimax-0.0.3rc4/stamp-h1:
	touch $@

gctwimax-0.0.3rc4: $@/stamp-h1
	$(MAKE) -C $@

gctwimax-0.0.3rc4-install: gctwimax-0.0.3rc4
	install -D gctwimax-0.0.3rc4/gctwimax $(INSTALLDIR)/gctwimax-0.0.3rc4/usr/sbin/gctwimax
	$(STRIP) $(INSTALLDIR)/gctwimax-0.0.3rc4/usr/sbin/gctwimax
	#install -D gctwimax-0.0.3rc4/src/event.sh $(INSTALLDIR)/gctwimax-0.0.3rc4/usr/share/event.sh
	#install -D gctwimax-0.0.3rc4/src/gctwimax.conf $(INSTALLDIR)/gctwimax-0.0.3rc4/usr/share/gctwimax.conf

gctwimax-0.0.3rc4-clean:
	-@$(MAKE) -C gctwimax-0.0.3rc4 clean
	@rm -f gctwimax-0.0.3rc4/stamp-h1

wpa_supplicant:
	$(MAKE) -C $@/wpa_supplicant EXTRACFLAGS="-Os $(EXTRACFLAGS)"

wpa_supplicant-install: wpa_supplicant
	install -D wpa_supplicant/wpa_supplicant/wpa_supplicant $(INSTALLDIR)/wpa_supplicant/usr/sbin/wpa_supplicant
	install -D wpa_supplicant/wpa_supplicant/wpa_cli $(INSTALLDIR)/wpa_supplicant/usr/sbin/wpa_cli
	$(STRIP) $(INSTALLDIR)/wpa_supplicant/usr/sbin/*

wpa_supplicant-clean:
	-@$(MAKE) -C wpa_supplicant/wpa_supplicant clean

tr069:
	cp tr069/Makefile.ASUSWRT tr069/Makefile
	$(MAKE) -C $@
	$(MAKE) -C $@/test

tr069-clean:
	[ ! -f tr069/Makefile ] || $(MAKE) -C tr069 clean
	[ ! -f tr069/test/Makefile ] || $(MAKE) -C tr069/test clean

tr069-install: tr069
	install -D tr069/build/bin/tr $(INSTALLDIR)/tr069/sbin/tr069
	install -D tr069/test/sendtocli $(INSTALLDIR)/tr069/sbin/sendtocli
	install -D tr069/test/notify $(INSTALLDIR)/tr069/sbin/notify
	install -D tr069/test/udpclient $(INSTALLDIR)/tr069/sbin/udpclient
ifeq ($(RTCONFIG_TR181),y)
ifeq ($(RTCONFIG_DSL),y)
	install -D tr069/conf/ASUSWRT/tr_181.xml.dsl $(INSTALLDIR)/tr069/usr/tr/tr.xml
else
	install -D tr069/conf/ASUSWRT/tr_181.xml $(INSTALLDIR)/tr069/usr/tr/tr.xml
endif
else
ifeq ($(RTCONFIG_DSL),y)
	install -D tr069/conf/ASUSWRT/tr_98.xml.dsl $(INSTALLDIR)/tr069/usr/tr/tr.xml
else
	install -D tr069/conf/ASUSWRT/tr_98.xml $(INSTALLDIR)/tr069/usr/tr/tr.xml
endif
endif

nt_center/stamp-h1:
	touch $@

nt_center: nt_center/stamp-h1
	$(MAKE) -C nt_center


nt_center-install: nt_center
	install -d $(INSTALLDIR)/nt_center/usr/lib/
	install -d $(INSTALLDIR)/nt_center/usr/sbin/
	install -D nt_center/lib/libnt.so $(INSTALLDIR)/nt_center/usr/lib/libnt.so
	install -D nt_center/nt_center $(INSTALLDIR)/nt_center/usr/sbin/nt_center
	install -D nt_center/nt_monitor $(INSTALLDIR)/nt_center/usr/sbin/nt_monitor
	install -D nt_center/actMail/nt_actMail $(INSTALLDIR)/nt_center/usr/sbin/nt_actMail
	install -D nt_center/Notify_Event2NC $(INSTALLDIR)/nt_center/usr/sbin/Notify_Event2NC
	install -D nt_center/lib/nt_db $(INSTALLDIR)/nt_center/usr/sbin/nt_db
	#install -D nt_center/lib/nt_db_test $(INSTALLDIR)/nt_center/usr/sbin/nt_db_test
	$(STRIP) $(INSTALLDIR)/nt_center/usr/lib/libnt.so
	$(STRIP) $(INSTALLDIR)/nt_center/usr/sbin/nt_center
	$(STRIP) $(INSTALLDIR)/nt_center/usr/sbin/nt_monitor
	$(STRIP) $(INSTALLDIR)/nt_center/usr/sbin/nt_actMail
	$(STRIP) $(INSTALLDIR)/nt_center/usr/sbin/Notify_Event2NC
	$(STRIP) $(INSTALLDIR)/nt_center/usr/sbin/nt_db
	#$(STRIP) $(INSTALLDIR)/nt_center/usr/sbin/nt_db_test

nt_center-clean:
	-$(MAKE) -C nt_center clean
	@rm -f nt_center/stamp-h1

protect_srv/stamp-h1:
	touch $@

protect_srv-stage:
	$(MAKE) -C protect_srv/lib
	install -D protect_srv/lib/libptcsrv.so $(STAGEDIR)/usr/lib/libptcsrv.so
	install -D -m 644 -p protect_srv/include/protect_srv.h $(STAGEDIR)/usr/include/protect_srv.h
	install -D -m 644 -p protect_srv/include/libptcsrv.h $(STAGEDIR)/usr/include/libptcsrv.h

protect_srv: protect_srv/stamp-h1
	$(MAKE) -C $@ && $(MAKE) $@-stage

protect_srv-install: protect_srv
	install -d $(INSTALLDIR)/protect_srv/usr/lib/
	install -d $(INSTALLDIR)/protect_srv/usr/sbin/
	install -D protect_srv/lib/libptcsrv.so $(INSTALLDIR)/protect_srv/usr/lib/libptcsrv.so
	install -D protect_srv/protect_srv $(INSTALLDIR)/protect_srv/usr/sbin/protect_srv
	install -D protect_srv/Send_Event2ptcsrv $(INSTALLDIR)/protect_srv/usr/sbin/Send_Event2ptcsrv
	$(STRIP) $(INSTALLDIR)/protect_srv/usr/lib/libptcsrv.so
	$(STRIP) $(INSTALLDIR)/protect_srv/usr/sbin/protect_srv

protect_srv-clean:
	-$(MAKE) -C protect_srv clean
	@rm -f protect_srv/stamp-h1

#	$(STRIP) $(INSTALLDIR)/tr/sbin/*

#	libnet:
#		@$(SEP)
#		@-mkdir -p libnet/lib
#		@$(MAKE) -C libnet CC=$(CC) AR=$(AR) RANLIB=$(RANLIB)
tcpdump-4.4.0/stamp-h1:
	cd tcpdump-4.4.0 && $(CONFIGURE) ac_cv_linux_vers=2
	touch $@

tcpdump-4.4.0: libpcap tcpdump-4.4.0/stamp-h1
	@$(SEP)
	@$(MAKE) -C tcpdump-4.4.0 CC=$(CC) AR=$(AR) RANLIB=$(RANLIB)

tcpdump-4.4.0-install: tcpdump-4.4.0
	install -D tcpdump-4.4.0/tcpdump $(INSTALLDIR)/tcpdump-4.4.0/usr/sbin/tcpdump
	$(STRIP) $(INSTALLDIR)/tcpdump-4.4.0/usr/sbin/tcpdump

tcpdump-4.4.0-clean:
	[ ! -f tcpdump-4.4.0/Makefile ] || $(MAKE) -C tcpdump-4.4.0 clean
	@rm -f tcpdump-4.4.0/stamp-h1

traceroute-2.1.0/stamp-h1: 
	touch $@

traceroute-2.1.0: traceroute-2.1.0/stamp-h1
	$(MAKE) -C traceroute-2.1.0


traceroute-2.1.0-install: traceroute-2.1.0
	install -d $(INSTALLDIR)/traceroute-2.1.0/usr/sbin/
	install -D traceroute-2.1.0/traceroute/traceroute $(INSTALLDIR)/traceroute-2.1.0/usr/sbin/traceroute
	$(STRIP) $(INSTALLDIR)/traceroute-2.1.0/usr/sbin/traceroute

traceroute-2.1.0-clean:
	-$(MAKE) -C traceroute-2.1.0 clean
	@rm -f traceroute-2.1.0/stamp-h1

libbcm:
	@[ ! -f libbcm/Makefile ] || $(MAKE) -C libbcm

libbcm-install:
	install -D libbcm/libbcm.so $(INSTALLDIR)/libbcm/usr/lib/libbcm.so
	$(STRIP) $(INSTALLDIR)/libbcm/usr/lib/libbcm.so

iperf: iperf/Makefile
	@$(SEP)
	$(MAKE) -C $@

iperf/Makefile:
	# libstdc++.so.6 is required if you want to remove CFLAGS=-static below.
	( cd iperf ; CFLAGS=-static $(CONFIGURE) ac_cv_func_malloc_0_nonnull=yes )

iperf-install:
	install -D iperf/src/iperf $(INSTALLDIR)/iperf/usr/bin/iperf
	$(STRIP) $(INSTALLDIR)/iperf/usr/bin/iperf

iperf-clean:
	[ ! -f iperf/Makefile ] || $(MAKE) -C iperf distclean
	@rm -f iperf/Makefile

tor-0.2.5.10: openssl zlib libevent-2.0.21 tor-0.2.5.10/Makefile
	@$(SEP)
	$(MAKE) -C $@

tor-0.2.5.10/Makefile:
	(cd tor-0.2.5.10 ; $(CONFIGURE) --enable-static-libevent --with-libevent-dir=$(TOP)/libevent \
					--enable-static-openssl --with-openssl-dir=$(TOP)/openssl \
					--enable-static-zlib --with-zlib-dir=$(TOP)/zlib)

tor-0.2.5.10-install:
	if [ -f tor-0.2.5.10/Makefile ] ; then \
		install -D tor-0.2.5.10/src/or/tor $(INSTALLDIR)/tor-0.2.5.10/usr/sbin/Tor ; \
		$(STRIP) $(INSTALLDIR)/tor-0.2.5.10/usr/sbin/Tor ; \
	fi

tor-0.2.5.10-clean:
	[ ! -f tor-0.2.5.10/Makefile ] || $(MAKE) -C tor-0.2.5.10 clean
	@rm -f tor-0.2.5.10/Makefile

iproute2-3.x: kernel_header iptables-1.4.x
	@$(SEP)
	@$(MAKE) -C $@ IPTABLES_DIR=$(TOP)/iptables-1.4.x KERNEL_INCLUDE=$(TOP)/kernel_header/include EXTRACFLAGS="$(EXTRACFLAGS) $(if $(RTCONFIG_IPV6),-DUSE_IPV6,-DNO_IPV6)" && $(MAKE) -C $@ stage

iproute2-3.x-install: iproute2-3.x
	install -D iproute2-3.x/tc/tc $(INSTALLDIR)/iproute2-3.x/usr/sbin/tc
	$(STRIP) $(INSTALLDIR)/iproute2-3.x/usr/sbin/tc
	install -D iproute2-3.x/ip/ip $(INSTALLDIR)/iproute2-3.x/usr/sbin/ip
	$(STRIP) $(INSTALLDIR)/iproute2-3.x/usr/sbin/ip
	@if [ -e iproute2-3.x/tc/m_xt.so ] ; then \
		install -D iproute2-3.x/tc/m_xt.so $(INSTALLDIR)/iproute2-3.x/usr/lib/tc/m_xt.so ; \
		ln -sf m_xt.so $(INSTALLDIR)/iproute2-3.x/usr/lib/tc/m_ipt.so ; \
		$(STRIP) $(INSTALLDIR)/iproute2-3.x/usr/lib/tc/*.so ; \
	fi

iproute2-3.x-clean:
	-@$(MAKE) -C iproute2-3.x clean
	-rm -f iproute2-3.x/Config

ntpclient: nvram$(BCMEX)$(EX7) shared

ntpclient-install:
	$(MAKE) -C ntpclient INSTALLDIR=$(INSTALLDIR)/ntpclient install

rstats: nvram$(BCMEX)$(EX7) shared

rstats-install:
	$(MAKE) -C rstats INSTALLDIR=$(INSTALLDIR)/rstats install

dropbear/config.h.in: $(if $(RTCONFIG_PROTECTION_SERVER),protect_srv-stage,)

dropbear/config.h: dropbear/config.h.in
	cd dropbear && \
		CPPFLAGS="-Os -Wall $(EXTRACFLAGS) -DARGTYPE=3 -ffunction-sections -fdata-sections -I$(STAGEDIR)/usr/include \
			$(if $(RTCONFIG_PROTECTION_SERVER),-DSECURITY_NOTIFY,)" \
		LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections -L$(STAGEDIR)/usr/lib" \
		LIBS="$(if $(RTCONFIG_PROTECTION_SERVER),-lptcsrv)" \
		$(CONFIGURE) --disable-zlib --disable-pam \
		--enable-openpty --enable-syslog --enable-shadow --enable-bundled-libtom \
		--disable-lastlog \
		--disable-utmp --disable-utmpx \
		--disable-wtmp --disable-wtmpx \
		--disable-loginfunc \
		--disable-pututline --disable-pututxline

dropbear: dropbear/config.h
	@$(SEP)
	@$(MAKE) -j 8 -C $@ PROGRAMS="dropbear dbclient dropbearkey scp" MULTI=1

dropbear-install:
	install -D dropbear/dropbearmulti $(INSTALLDIR)/dropbear/usr/bin/dropbearmulti
	$(STRIP) $(INSTALLDIR)/dropbear/usr/bin/dropbearmulti
	cd $(INSTALLDIR)/dropbear/usr/bin && \
	ln -sf dropbearmulti dropbearkey && \
	ln -sf dropbearmulti dbclient && \
	ln -sf dropbearmulti ssh && \
	ln -sf dropbearmulti scp
	install -d $(INSTALLDIR)/dropbear/usr/sbin
	cd $(INSTALLDIR)/dropbear/usr/sbin && \
	ln -sf ../bin/dropbearmulti dropbear

dropbear-clean:
	-@$(MAKE) -C dropbear clean
	@rm -f dropbear/config.h

# Media libraries
sqlite/stamp-h1:
	cd sqlite && \
	CC=$(CC) CFLAGS="-Os $(EXTRACFLAGS) -ffunction-sections -fdata-sections -fPIC" \
		LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections -lpthread -ldl" \
		$(CONFIGURE) --prefix=/usr --enable-shared --enable-static \
		--disable-readline --disable-dynamic-extensions --enable-threadsafe \
		--disable-dependency-tracking
	touch $@

sqlite: sqlite/stamp-h1
	@$(MAKE) -C sqlite all

sqlite-clean:
	-@$(MAKE) -C sqlite clean
	@rm -f sqlite/stamp-h1

sqlite-install: sqlite
	@$(SEP)
	install -D sqlite/.libs/libsqlite3.so.0 $(INSTALLDIR)/sqlite/usr/lib/libsqlite3.so.0
	$(STRIP) $(INSTALLDIR)/sqlite/usr/lib/libsqlite3.so.0

FFMPEG_FILTER_CONFIG= $(foreach c, $(2), --$(1)="$(c)")
FFMPEG_DECODERS:=aac ac3 atrac3 h264 jpegls mp3 mpeg1video mpeg2video mpeg4 mpeg4aac mpegvideo png wmav1 wmav2
FFMPEG_CONFIGURE_DECODERS:=$(call FFMPEG_FILTER_CONFIG,enable-decoder,$(FFMPEG_DECODERS))
FFMPEG_PARSERS:=aac ac3 h264 mpeg4video mpegaudio mpegvideo
FFMPEG_CONFIGURE_PARSERS:=$(call FFMPEG_FILTER_CONFIG,enable-parser,$(FFMPEG_PARSERS))
FFMPEG_PROTOCOLS:=file
FFMPEG_CONFIGURE_PROTOCOLS:=$(call FFMPEG_FILTER_CONFIG,enable-protocol,$(FFMPEG_PROTOCOLS))
FFMPEG_DISABLED_DEMUXERS:=amr apc ape ass bethsoftvid bfi c93 daud dnxhd dsicin dxa ffm gsm gxf idcin iff image2 image2pipe ingenient ipmovie lmlm4 mm mmf msnwc_tcp mtv mxf nsv nut oma pva rawvideo rl2 roq rpl segafilm shorten siff smacker sol str thp tiertexseq tta txd vmd voc wc3 wsaud wsvqa xa yuv4mpegpipe
FFMPEG_CONFIGURE_DEMUXERS:=$(call FFMPEG_FILTER_CONFIG,disable-demuxer,$(FFMPEG_DISABLED_DEMUXERS))
ffmpeg/stamp-h1: zlib
	cd ffmpeg && symver_asm_label=no symver_gnu_asm=no symver=no CC=$(CC) LDFLAGS="-ldl"\
		./configure --enable-cross-compile --arch=$(ARCH) --target_os=linux \
		--cross-prefix=$(CROSS_COMPILE) --enable-shared --enable-gpl --disable-doc \
		--enable-pthreads --enable-small --disable-encoders --disable-filters \
		--disable-muxers --disable-devices --disable-ffmpeg --disable-ffplay \
		--disable-ffserver --disable-ffprobe --disable-avdevice --disable-swscale \
		--disable-hwaccels --disable-network --disable-bsfs --disable-mpegaudio-hp \
		--enable-demuxers $(FFMPEG_CONFIGURE_DEMUXERS) \
		--disable-decoders $(FFMPEG_CONFIGURE_DECODERS) \
		--disable-parsers $(FFMPEG_CONFIGURE_PARSERS) \
		--disable-protocols $(FFMPEG_CONFIGURE_PROTOCOLS) \
		--extra-cflags="-Os $(EXTRACFLAGSx) -ffunction-sections -fdata-sections -fPIC -I$(TOP)/zlib" \
		--extra-ldflags="-ffunction-sections -fdata-sections -Wl,--gc-sections -fPIC" \
		--extra-libs="-L$(TOP)/zlib -lz" \
		--enable-zlib --disable-debug --prefix=''
	touch $@

ffmpeg: ffmpeg/stamp-h1 zlib
	$(MAKE) -C ffmpeg all

ffmpeg-clean:
	-@$(MAKE) -C ffmpeg clean
	@rm -f ffmpeg/stamp-h1 ffmpeg/config.h ffmpeg/config.mak

ffmpeg-install: ffmpeg
	@$(SEP)
ifneq ($(MEDIA_SERVER_STATIC),y)
	install -D ffmpeg/libavformat/libavformat.so.52 $(INSTALLDIR)/ffmpeg/usr/lib/libavformat.so.52
	install -D ffmpeg/libavcodec/libavcodec.so.52 $(INSTALLDIR)/ffmpeg/usr/lib/libavcodec.so.52
	install -D ffmpeg/libavutil/libavutil.so.50 $(INSTALLDIR)/ffmpeg/usr/lib/libavutil.so.50
	$(STRIP) $(INSTALLDIR)/ffmpeg/usr/lib/libavformat.so.52
	$(STRIP) $(INSTALLDIR)/ffmpeg/usr/lib/libavcodec.so.52
	$(STRIP) $(INSTALLDIR)/ffmpeg/usr/lib/libavutil.so.50
endif
.PHONY: ffmpeg

libogg/stamp-h1:
	cd libogg && \
	CFLAGS="-Os $(EXTRACFLAGS) -fPIC -ffunction-sections -fdata-sections" \
	LDFLAGS="-fPIC -ffunction-sections -fdata-sections -Wl,--gc-sections" \
	$(CONFIGURE) --enable-shared --enable-static --prefix=''
	touch $@

libogg: libogg/stamp-h1
	@$(MAKE) -C libogg all

libogg-clean:
	-@$(MAKE) -C libogg clean
	@rm -f libogg/stamp-h1

libogg-install: libogg
	@$(SEP)
ifneq ($(MEDIA_SERVER_STATIC),y)
	install -D libogg/src/.libs/libogg.so.0 $(INSTALLDIR)/libogg/usr/lib/libogg.so.0
	$(STRIP) $(INSTALLDIR)/libogg/usr/lib/libogg.so.0
endif

flac/stamp-h1: libogg
	cd flac && \
	CFLAGS="-Os $(EXTRACFLAGS) -fPIC -ffunction-sections -fdata-sections" \
	CPPFLAGS="-I$(TOP)/libogg/include" \
	LDFLAGS="-L$(TOP)/libogg/src/.libs -fPIC -ffunction-sections -fdata-sections -Wl,--gc-sections" \
	$(CONFIGURE) --enable-shared --enable-static --prefix='' --disable-rpath \
		--disable-doxygen-docs --disable-xmms-plugin --disable-cpplibs \
		--without-libiconv-prefix --disable-altivec --disable-3dnow --disable-sse
	touch $@

flac: flac/stamp-h1 libogg
	@$(MAKE) -C flac/src/libFLAC all

flac-clean:
	-@$(MAKE) -C flac clean
	@rm -f flac/stamp-h1

flac-install: flac
	@$(SEP)
ifneq ($(MEDIA_SERVER_STATIC),y)
	install -D flac/src/libFLAC/.libs/libFLAC.so.8 $(INSTALLDIR)/flac/usr/lib/libFLAC.so.8
	$(STRIP) $(INSTALLDIR)/flac/usr/lib/libFLAC.so.8
endif

jpeg/stamp-h1:
	cd jpeg && \
	CFLAGS="-Os $(EXTRACFLAGS) -fPIC" CC=$(CC) AR2="touch" $(CONFIGURE) --enable-maxmem=1 --enable-shared --enable-static --prefix=''
	touch $@

jpeg: jpeg/stamp-h1
	@$(MAKE) -C jpeg LIBTOOL="" O=o A=a CC=$(CC) AR2="touch" libjpeg.a libjpeg.so

jpeg-clean:
	-@$(MAKE) -C jpeg clean
	@rm -f jpeg/stamp-h1

jpeg-install: jpeg
	@$(SEP)
ifneq ($(MEDIA_SERVER_STATIC),y)
	install -D jpeg/libjpeg.so $(INSTALLDIR)/jpeg/usr/lib/libjpeg.so
	$(STRIP) $(INSTALLDIR)/jpeg/usr/lib/libjpeg.so
endif

libexif/stamp-h1:
	cd libexif && CFLAGS="-Os -Wall $(EXTRACFLAGS) -fPIC -ffunction-sections -fdata-sections" \
	LDFLAGS="-fPIC -ffunction-sections -fdata-sections -Wl,--gc-sections" \
	$(CONFIGURE) --enable-shared --enable-static --prefix='' \
		--disable-docs --disable-rpath --disable-nls --without-libiconv-prefix --without-libintl-prefix
	touch $@

libexif: libexif/stamp-h1
	@$(MAKE) -C libexif all

libexif-clean:
	-@$(MAKE) -C libexif clean
	@rm -f libexif/stamp-h1

libexif-install: libexif
	@$(SEP)
ifneq ($(MEDIA_SERVER_STATIC),y)
	install -D libexif/libexif/.libs/libexif.so.12 $(INSTALLDIR)/libexif/usr/lib/libexif.so.12
	$(STRIP) $(INSTALLDIR)/libexif/usr/lib/libexif.so.12
endif

zlib/stamp-h1:
	cd zlib && \
	CC=$(CC) AR="ar rc" RANLIB=$(RANLIB) LD=$(LD) CFLAGS="-Os -Wall $(EXTRACFLAGS) -fPIC" LDSHAREDLIBC="$(EXTRALDFLAGS)" \
	./configure --shared --prefix=/usr --libdir=/usr/lib
	touch $@

zlib: zlib/stamp-h1
	@$(MAKE) -C zlib CC=$(CC) AR="ar rc" RANLIB=$(RANLIB) LD=$(LD) all && $(MAKE) $@-stage

zlib-clean:
	-@$(MAKE) -C zlib clean
	@rm -f zlib/stamp-h1

zlib-install: zlib
	@$(SEP)
# commented out for mt-daapd-svn-1696
ifneq ($(MEDIA_SERVER_STATIC),y)
	install -d $(INSTALLDIR)/zlib/usr/lib
	install -D zlib/libz.so.1 $(INSTALLDIR)/zlib/usr/lib/
	$(STRIP) $(INSTALLDIR)/zlib/usr/lib/libz.so.1
endif
ifeq ($(or $(RTCONFIG_USB_BECEEM),$(RTCONFIG_MEDIA_SERVER),$(RTCONFIG_CLOUDSYNC),$(RTCONFIG_PUSH_EMAIL)),y)
	install -d $(INSTALLDIR)/zlib/usr/lib
	install -D zlib/libz.so.1 $(INSTALLDIR)/zlib/usr/lib/
	$(STRIP) $(INSTALLDIR)/zlib/usr/lib/libz.so.1
endif

libid3tag/stamp-h1: zlib
	cd libid3tag && \
	touch NEWS && touch AUTHORS && touch ChangeLog && autoreconf -i -f && \
	CFLAGS="-Os -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections" CPPFLAGS="-I$(TOP)/zlib" \
	LDFLAGS="-L$(TOP)/zlib -fPIC -ffunction-sections -fdata-sections -Wl,--gc-sections" \
	$(CONFIGURE) --enable-shared --enable-static --prefix='' \
		--disable-debugging --disable-profiling --disable-dependency-tracking
	touch $@

libid3tag: libid3tag/stamp-h1 zlib
	@$(MAKE) -C libid3tag all

libid3tag-clean:
	-@$(MAKE) -C libid3tag clean
	@rm -f libid3tag/stamp-h1

libid3tag-install: libid3tag
	@$(SEP)
#commented out for mt-daapd-svn-1696
ifneq ($(MEDIA_SERVER_STATIC),y)
	install -D libid3tag/.libs/libid3tag.so.0 $(INSTALLDIR)/libid3tag/usr/lib/libid3tag.so.0
	$(STRIP) $(INSTALLDIR)/libid3tag/usr/lib/libid3tag.so.0
endif

libvorbis/stamp-h1: libogg
	cd libvorbis && \
	CFLAGS="-Os -Wall $(EXTRACFLAGS) -fPIC -ffunction-sections -fdata-sections" \
	CPPFLAGS="-I$(TOP)/libogg/include" \
	LDFLAGS="-L$(TOP)/libogg/src/.libs -fPIC -ffunction-sections -fdata-sections -Wl,--gc-sections -ldl" \
	$(CONFIGURE) --enable-shared --enable-static --prefix='' --disable-oggtest \
		--with-ogg-includes="$(TOP)/libogg/include" \
		--with-ogg-libraries="$(TOP)/libogg/src/.libs"
	touch $@
	touch libvorbis/aclocal.m4

libvorbis: libvorbis/stamp-h1
	@$(MAKE) -C libvorbis/lib all

libvorbis-clean:
	-@$(MAKE) -C libvorbis clean
	@rm -f libvorbis/stamp-h1

libvorbis-install: libvorbis
	@$(SEP)
ifneq ($(MEDIA_SERVER_STATIC),y)
	install -D libvorbis/lib/.libs/libvorbis.so.0 $(INSTALLDIR)/libvorbis/usr/lib/libvorbis.so.0
	$(STRIP) $(INSTALLDIR)/libvorbis/usr/lib/libvorbis.so.0
endif

minidlna: zlib sqlite ffmpeg libogg flac jpeg libexif libid3tag libvorbis
	@$(SEP)
	@cd minidlna && ./genosver.sh
	$(MAKE) -C minidlna CC=$(CC) $(if $(MEDIA_SERVER_STATIC),STATIC=1) $(if $(RTCONFIG_MEDIASERVER_LIMIT),MS_LIMIT=1) minidlna

libgdbm/stamp-h1:
	cd libgdbm && \
	CFLAGS="-Os -Wall $(EXTRACFLAGS) -fPIC -ffunction-sections -fdata-sections" \
	CPPFLAGS="-I$(TOP)/zlib" \
	LDFLAGS="-fPIC -ffunction-sections -fdata-sections -Wl,--gc-sections" \
	$(CONFIGURE) --enable-shared --enable-static --prefix=''
	touch $@

libgdbm: libgdbm/stamp-h1
	@$(MAKE) -C libgdbm

libgdbm-clean:
	-@$(MAKE) -C libgdbm clean
	@rm -f libgdbm/stamp-h1

libgdbm-install: libgdbm
	@$(SEP)
ifneq ($(MEDIA_SERVER_STATIC),y)
	install -D libgdbm/.libs/libgdbm.so.3.0.0 $(INSTALLDIR)/libgdbm/usr/lib/libgdbm.so.3.0.0
	$(STRIP) $(INSTALLDIR)/libgdbm/usr/lib/libgdbm.so.3.0.0
	cd $(INSTALLDIR)/libgdbm/usr/lib && \
		ln -sf libgdbm.so.3.0.0 libgdbm.so.3 && \
		ln -sf libgdbm.so.3.0.0 libgdbm.so
endif

mt-daapd: zlib libid3tag libgdbm
	@$(SEP)
	@$(MAKE) -C mt-daapd CC=$(CC) $(if $(MEDIA_SERVER_STATIC),STATIC=1) all

igmpproxy/Makefile:
	cd igmpproxy && autoreconf -i -f && CFLAGS="-O2 -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections" \
	LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections" \
	$(CONFIGURE) --prefix=/usr --disable-dependency-tracking

igmpproxy: igmpproxy/Makefile
	@$(SEP)
	@$(MAKE) -C igmpproxy/src

igmpproxy-install: igmpproxy
	install -D igmpproxy/src/igmpproxy $(INSTALLDIR)/igmpproxy/usr/sbin/igmpproxy
	$(STRIP) $(INSTALLDIR)/igmpproxy/usr/sbin/igmpproxy

igmpproxy-clean:
	[ ! -f igmpproxy/Makefile ] || $(MAKE) -C igmpproxy distclean
	@rm -f igmpproxy/Makefile

snooper:
	$(MAKE) -C snooper EXTRACFLAGS="-I$(SRCBASE)/include $(EXTRACFLAGS)" \
		SWITCH=$(if $(RTCONFIG_RALINK),ralink,broadcom)

snooper-install:
	install -D snooper/snooper $(INSTALLDIR)/snooper/usr/sbin/snooper
	$(STRIP) $(INSTALLDIR)/snooper/usr/sbin/snooper

snooper-clean:
	$(MAKE) -C snooper clean

udpxy:
	$(MAKE) -C $@ release NO_UDPXREC=yes \
	CDEFS="-O2 -ffunction-sections -fdata-sections $(if $(RTCONFIG_REALTEK),-fno-strict-aliasing,) $(EXTRACFLAGS)" \
	LDFLAGS="-Wl,--gc-sections"

udpxy-install:
	install -D udpxy/udpxy $(INSTALLDIR)/udpxy/usr/sbin/udpxy
	$(STRIP) $(INSTALLDIR)/udpxy/usr/sbin/udpxy

wps$(BCMEX)$(EX7): nvram$(BCMEX)$(EX7) shared libupnp$(BCMEX)$(EX7)
ifeq ($(RTCONFIG_WPS),y)
	-rm -rf $(OLD_SRC)/wps
	-ln -s $(SRCBASE)/wps $(OLD_SRC)/wps
	[ ! -f wps$(BCMEX)$(EX7)/Makefile ] || $(MAKE) -C wps$(BCMEX)$(EX7) EXTRA_LDFLAGS=$(EXTRALDFLAGS)
else
	# Prevent to use generic rules"
	@true
endif

wps$(BCMEX)$(EX7)-install:
ifeq ($(RTCONFIG_WPS),y)
	[ ! -f wps$(BCMEX)$(EX7)/Makefile ] || $(MAKE) -C wps$(BCMEX)$(EX7) INSTALLDIR=$(INSTALLDIR) install
else
	# Prevent to use generic rules"
	@true
endif

wps$(BCMEX)$(EX7)-clean:
ifeq ($(RTCONFIG_WPS),y)
	[ ! -f wps$(BCMEX)$(EX7)/Makefile ] || $(MAKE) -C wps$(BCMEX)$(EX7) clean
else
	# Prevent to use generic rules"
	@true
endif

sysstate:
	@$(SEP)
	echo "build sysstate"
	$(MAKE) -C sysstate

sysstate-clean:
	echo "$(RTCONFIG_SYSSTATE)"
	echo "clean sysstate"
	$(MAKE) -C sysstate clean

sysstate-install:
	echo "install sysstate"
	$(MAKE) -C sysstate install

SRC_WLEXE = $(SRCBASE_SYS)/wl/exe
SRC_PRE_WLEXE = $(SRCBASE)/wl/exe

.PHONY: wlexe

$(SRC_WLEXE)/../../include/epivers.h :
ifneq ($(wildcard $(SRC_WLEXE)/GNUmakefile),)
	$(MAKE) -C $(SRC_WLEXE)/../../include
endif

wlexe: $(SRC_WLEXE)/../../include/epivers.h
ifeq ($(RTCONFIG_WLEXE),y)
ifneq ($(wildcard $(SRC_WLEXE)/*.c),)

ifneq ($(wildcard $(SRC_WLEXE)/GNUmakefile),)
ifeq ($(ARCH),arm)
	$(MAKE) TARGETARCH=arm_le ARCH_SFX="" TARGET_PREFIX=$(CROSS_COMPILE) -C $(SRC_WLEXE)
else
	$(MAKE) TARGETARCH=mips ARCH_SFX="" TARGET_PREFIX=$(CROSS_COMPILE) -C $(SRC_WLEXE)
endif
	[ -d wlexe ] || install -d wlexe
	install $(SRC_WLEXE)/wl wlexe

ifeq ($(ARCH),arm)
	install $(SRC_WLEXE)/socket_noasd/arm_le/wl_server_socket wlexe
else
	install $(SRC_WLEXE)/socket_noasd/mips/wl_server_socket wlexe
endif
endif

else
	[ -d wlexe ] || install -d wlexe
	install $(SRC_PRE_WLEXE)/prebuilt/wl wlexe

endif
endif
	@true

.PHONY: wlexe-clean
wlexe-clean:
ifneq ($(wildcard $(SRC_WLEXE)/GNUmakefile),)
	$(MAKE) TARGETARCH=arm_le TARGET_PREFIX=$(CROSS_COMPILE) -C $(SRC_WLEXE) clean
	$(RM) wlexe/wl
	$(RM) wlexe/wl_server_socket
endif

.PHONY: wlexe-install
wlexe-install:
ifeq ($(RTCONFIG_WLEXE),y)
ifneq ($(wildcard $(SRC_WLEXE)/GNUmakefile),)
	[ ! -d wlexe ] || install -D -m 755 wlexe/wl $(INSTALLDIR)/wlexe/usr/sbin/wl
	[ ! -d wlexe ] || install -D -m 755 wlexe/wl_server_socket $(INSTALLDIR)/wlexe/usr/sbin/wl_server_socket
	[ ! -d wlexe ] || $(STRIP) $(INSTALLDIR)/wlexe/usr/sbin/wl
	[ ! -d wlexe ] || $(STRIP) $(INSTALLDIR)/wlexe/usr/sbin/wl_server_socket
endif
endif

udev:
	$(MAKE) -C $@ CROSS_COMPILE=$(CROSS_COMPILE) EXTRACFLAGS="$(EXTRACFLAGS)" \
		PROGRAMS=udevtrigger

udev-install: udev
	install -d $(INSTALLDIR)
	install -d $(TARGETDIR)
	$(MAKE) -C udev DESTDIR=$(INSTALLDIR) prefix=/udev install-udevtrigger

hotplug2:
	$(MAKE) -C $@ CROSS_COMPILE=$(CROSS_COMPILE) EXTRACFLAGS="$(EXTRACFLAGS)"

hotplug2-install: hotplug2
	$(MAKE) -C hotplug2 install PREFIX=$(INSTALLDIR)/hotplug2 SUBDIRS=""
	$(MAKE) -C hotplug2/examples install PREFIX=$(INSTALLDIR)/hotplug2/rom KERNELVER=$(LINUX_KERNEL)


emf$(BCMEX)$(EX7):
	$(MAKE) -C emf$(BCMEX)$(EX7)/emfconf CROSS=$(CROSS_COMPILE)

emf$(BCMEX)$(EX7)-install:
ifeq ($(RTCONFIG_EMF),y)
	install -d $(TARGETDIR)
	$(MAKE) -C emf$(BCMEX)$(EX7)/emfconf CROSS=$(CROSS_COMPILE) INSTALLDIR=$(INSTALLDIR) install
endif

emf$(BCMEX)$(EX7)-clean:
	-@$(MAKE) -C emf$(BCMEX)$(EX7)/emfconf clean

igs$(BCMEX)$(EX7):
	$(MAKE) -C emf$(BCMEX)$(EX7)/igsconf CROSS=$(CROSS_COMPILE)

igs$(BCMEX)$(EX7)-install:
ifeq ($(RTCONFIG_EMF),y)
	install -d $(TARGETDIR)
	$(MAKE) -C emf$(BCMEX)$(EX7)/igsconf CROSS=$(CROSS_COMPILE) INSTALLDIR=$(INSTALLDIR) install
endif

igs$(BCMEX)$(EX7)-clean:
	-@$(MAKE) -C emf$(BCMEX)$(EX7)/igsconf clean

ifeq ($(HND_ROUTER),y)
EBK_INC=$(TOOL_SYS_INCLUDE_64)
else
EBK_INC=$(TOP)/kernel_header/include
endif

ebtables: kernel_header dummy
	$(MAKE) -C ebtables $(if $(RTCONFIG_HND_ROUTER),CC=$(CROSS_COMPILE_64)gcc LD=$(CROSS_COMPILE_64)ld CURRENT_ARCH=aarch64,CC=$(CC) LD=$(LD)) \
	CFLAGS="-Os -Wall -Wunused $(if $(RTCONFIG_HND_ROUTER),-DHND_ROUTER,)" \
	BINDIR="/usr/sbin" LIBDIR="/usr/lib/ebtables" KERNEL_INCLUDES=$(EBK_INC) $(if $(RTCONFIG_IPV6),DO_IPV6=1,) $(if $(OLD_QCA),USE_ARPNAT=1,)

ebtables-install: ebtables
	install -D ebtables/ebtables $(INSTALLDIR)/ebtables/usr/sbin/ebtables

	install -d $(INSTALLDIR)/ebtables/usr/lib
	install -d $(INSTALLDIR)/ebtables/usr/lib/ebtables
	install -D ebtables/*.so $(INSTALLDIR)/ebtables/usr/lib/
	install -D ebtables/extensions/*.so $(INSTALLDIR)/ebtables/usr/lib/ebtables/
	$(STRIP) $(INSTALLDIR)/ebtables/usr/sbin/ebtables
	$(STRIP) $(INSTALLDIR)/ebtables/usr/lib/ebtables/*.so
	$(STRIP) $(INSTALLDIR)/ebtables/usr/lib/libebt*.so

ebtables-clean:
	-@make -C ebtables clean

sdparm-1.02: sdparm-1.02/Makefile
	$(MAKE) -C $@

sdparm-1.02/Makefile: sdparm-1.02/configure
	cd sdparm-1.02 && \
	CFLAGS="-Os -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections" \
	LDFLAGS="$(EXTRALDFLAGS) -ffunction-sections -fdata-sections -Wl,--gc-sections" \
	$(CONFIGURE) \
		--prefix=/usr \
		--bindir=/usr/bin \
		--libdir=/usr/lib

sdparm-1.02/configure:
	cd sdparm-1.02 && ./autogen.sh

sdparm-1.02-install: sdparm-1.02
	@[ ! -d sdparm-1.02 ] || install -D sdparm-1.02/src/sdparm $(INSTALLDIR)/sdparm-1.02/usr/bin/sdparm
	@$(STRIP) $(INSTALLDIR)/sdparm-1.02/usr/bin/sdparm

sdparm-1.02-clean:
	[ ! -f sdparm-1.02/Makefile ] || $(MAKE) -C sdparm-1.02 distclean
	@rm -f sdparm-1.02/Makefile

nas$(BCMEX)$(EX7): nvram$(BCMEX)$(EX7)

wlconf$(BCMEX)$(EX7): nvram$(BCMEX)$(EX7)

hspot_ap$(BCMEX)$(EX7): shared nvram$(BCMEX)$(EX7)
	@echo "do nothing"

hspot_ap$(BCMEX)$(EX7)-install:
	@echo "do nothing"

eapd$(BCMEX)$(EX7):
	make -C eapd$(BCMEX)$(EX7)/linux

eapd$(BCMEX)$(EX7)-install:
	make -C eapd$(BCMEX)$(EX7)/linux install INSTALLDIR=$(INSTALLDIR)/eapd$(BCMEX)$(EX7)

eapd$(BCMEX)$(EX7)-clean:
	-@cd eapd$(BCMEX)$(EX7)/linux && make clean

libdisk: $(if $(RTCONFIG_PERMISSION_MANAGEMENT),PMS_DBapis)



#add by gauss
#add install libcurl
curl-7.21.7: curl-7.21.7/Makefile
	@$(MAKE) -C $@ && $(MAKE) $@-stage && sed 's|/usr/lib|$(STAGEDIR)/usr/lib|g' -i $(STAGEDIR)/usr/lib/libcurl.la

curl-7.21.7/Makefile: curl-7.21.7/configure
	@cd curl-7.21.7 && $(CONFIGURE) CC=$(CC) \
		--prefix=/usr --bindir=/usr/sbin --libdir=/usr/lib \
		--enable-http --with-ssl=$(TOP)/openssl LDFLAGS="-ldl $(EXTRALDFLAGS)" \
		--with-ca-bundle=/etc/ssl/certs/ca-certificates.crt

curl-7.21.7-install: curl-7.21.7
	@$(SEP)
	install -D curl-7.21.7/lib/.libs/libcurl.so.4.2.0 $(INSTALLDIR)/curl-7.21.7/usr/lib/libcurl.so.4.2.0
	$(STRIP) $(INSTALLDIR)/curl-7.21.7/usr/lib/libcurl.so.4.2.0
	cd $(INSTALLDIR)/curl-7.21.7/usr/lib && ln -sf libcurl.so.4.2.0 libcurl.so && ln -sf libcurl.so.4.2.0 libcurl.so.4
ifeq ($(RTCONFIG_SPEEDTEST),y)
	# for speedtest
	install -D curl-7.21.7/src/.libs/curl $(INSTALLDIR)/curl-7.21.7/usr/sbin/curl
	$(STRIP) $(INSTALLDIR)/curl-7.21.7/usr/sbin/curl
endif

curl-7.21.7-clean:
	[ ! -f curl-7.21.7/Makefile ] || $(MAKE) -C curl-7.21.7 clean
	@rm -f curl-7.21.7/Makefile

#dropbox_client
dropbox_client/stamp-h1:
	touch $@

dropbox_client: dropbox_client/stamp-h1
	@$(MAKE) -C dropbox_client

dropbox_client-install: dropbox_client
	@$(SEP)
	install -D dropbox_client/dropbox_client $(INSTALLDIR)/dropbox_client/usr/sbin/dropbox_client
	$(STRIP) $(INSTALLDIR)/dropbox_client/usr/sbin/dropbox_client

dropbox_client-clean:
	-@$(MAKE) -C dropbox_client clean
	rm -rf dropbox_client/stamp-h1

wl$(BCMEX)$(EX7):
	-@$(MAKE) -C wl$(BCMEX)$(EX7)

wl$(BCMEX)$(EX7)-install:
	@$(SEP)

hndck:
	echo $(obj-y)
expat-2.0.1/stamp-h1:
	cd $(TOP)/expat-2.0.1 && \
	$(CONFIGURE) --build=i686-linux --prefix=/usr
	touch $@

expat-2.0.1: expat-2.0.1/stamp-h1
	@$(SEP)
	@$(MAKE) -C expat-2.0.1 && $(MAKE) $@-stage
	sed 's|/usr/lib|$(STAGEDIR)/usr/lib|g' -i $(STAGEDIR)/usr/lib/libexpat.la

expat-2.0.1-install: expat-2.0.1
	install -D expat-2.0.1/.libs/libexpat.so.1.5.2 $(INSTALLDIR)/expat-2.0.1/usr/lib/libexpat.so.1.5.2
	$(STRIP) $(INSTALLDIR)/expat-2.0.1/usr/lib/libexpat.so.1.5.2
	cd $(INSTALLDIR)/expat-2.0.1/usr/lib && ln -sf libexpat.so.1.5.2 libexpat.so.1

expat-2.0.1-clean:
	-@$(MAKE) -C expat-2.0.1 clean
	@rm -f expat-2.0.1/stamp-h1

#avahi-0.6.31
avahi-0.6.31: shared nvram$(BCMEX)$(EX7) expat-2.0.1 libdaemon avahi-0.6.31/Makefile
	@$(SEP)
	@$(MAKE) -j 8 -C avahi-0.6.31

avahi-0.6.31/Makefile:
	( cd avahi-0.6.31 ; $(CONFIGURE) LDFLAGS="$(LDFLAGS) -L$(STAGEDIR)/usr/lib -ldl -lpthread $(EXTRA_LDFLAGS)" \
		CFLAGS="$(CFLAGS) -I$(STAGEDIR)/usr/include -I$(TOP)/shared -I$(SRCBASE)/include" \
		--prefix=/usr --with-distro=archlinux \
		--disable-glib --disable-gobject --disable-qt3 --disable-qt4 --disable-gtk \
		--disable-dbus --disable-gdbm --disable-python \
		--disable-pygtk --disable-python-dbus --disable-mono --disable-monodoc \
		--disable-gtk3 --with-xml=expat \
		--disable-silent-rules \
		LIBDAEMON_LIBS="-L$(STAGEDIR)/usr/lib -ldaemon -L$(TOP)/nvram$(BCMEX)${EX7} ${EXTRA_NV_LDFLAGS} -lnvram -L$(TOP)/shared -lshared $(if $(RTCONFIG_QTN),-L$(TOP)/libqcsapi_client -lqcsapi_client) $(if $(RTCONFIG_AMAS),-L$(TOP)/json-c -ljson-c)" \
		LIBDAEMON_CFLAGS="-I$(STAGEDIR)/usr/include" --disable-autoipd --disable-stack-protector --with-avahi-user="admin" --with-avahi-group="root" \
	)
	touch $@

avahi-0.6.31-install:
	if [ -f avahi-0.6.31/Makefile ] ; then \
		install -D avahi-0.6.31/avahi-daemon/.libs/avahi-daemon $(INSTALLDIR)/avahi-0.6.31/usr/sbin/avahi-daemon ; \
		install -D avahi-0.6.31/avahi-common/.libs/libavahi-common.so.3.5.3 $(INSTALLDIR)/avahi-0.6.31/usr/lib/libavahi-common.so.3.5.3 ; \
		install -D avahi-0.6.31/avahi-core/.libs/libavahi-core.so.7.0.2 $(INSTALLDIR)/avahi-0.6.31/usr/lib/libavahi-core.so.7.0.2 ; \
		$(STRIP) $(INSTALLDIR)/avahi-0.6.31/usr/sbin/avahi-daemon ; \
		$(STRIP) $(INSTALLDIR)/avahi-0.6.31/usr/lib/libavahi-common.so.3.5.3 ; \
		$(STRIP) $(INSTALLDIR)/avahi-0.6.31/usr/lib/libavahi-core.so.7.0.2 ; \
		cd $(INSTALLDIR)/avahi-0.6.31/usr/lib && ln -sf libavahi-common.so.3.5.3 libavahi-common.so.3 ; \
		cd $(INSTALLDIR)/avahi-0.6.31/usr/lib && ln -sf libavahi-core.so.7.0.2 libavahi-core.so.7 ; \
	fi

avahi-0.6.31-clean:
	[ ! -f avahi-0.6.31/Makefile ] || $(MAKE) -C avahi-0.6.31 clean
	@rm -f avahi-0.6.31/Makefile

tuxera:
	@echo "do nothing"

tuxera-install:
	@echo [tuxera-install]
	@[ ! -d tuxera ] || $(MAKE) -C tuxera install INSTALLDIR=$(INSTALLDIR)/tuxera

netstat-nat-clean:
	-@$(MAKE) -C netstat-nat clean
	@rm -f netstat-nat/Makefile
	@rm -f netstat-nat/stamp-h1

netstat-nat-install: netstat-nat
	install -D netstat-nat/netstat-nat $(INSTALLDIR)/netstat-nat/usr/sbin/netstat-nat
	$(STRIP) -s $(INSTALLDIR)/netstat-nat/usr/sbin/netstat-nat

netstat-nat/stamp-h1:
	cd netstat-nat && autoreconf -fi && \
	CC=$(CC) CFLAGS="-Os -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections" \
		LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections -fPIC" \
		$(CONFIGURE)
	@touch $@

netstat-nat: netstat-nat/stamp-h1
	$(MAKE) -C netstat-nat

sd-idle: sd-idle/sd-idle-2.6
	cd sd-idle && \
	CFLAGS="-Os -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections" \
	LDFLAGS="-ffunction-sections -fdata-sections -Wl,--gc-sections -fPIC" \
	$(CC) sd-idle-2.6.c -o sd-idle-2.6

sd-idle-install: sd-idle-2.6
	install -D sd-idle/sd-idle-2.6 $(INSTALLDIR)/sd-idle/usr/sbin/sd-idle-2.6
	$(STRIP) -s $(INSTALLDIR)/sd-idle/usr/sbin/sd-idle-2.6

sd-idle-clean:
	@rm -f sd-idle/sd-idle-2.6

traffic_limiter: sqlite
	cd traffic_limiter && CC=$(CC) && $(MAKE)

traffic_limiter-clean:
	cd traffic_limiter && $(MAKE) clean

traffic_limiter-install: traffic_limiter

NORTON_DIR := $(SRCBASE)/router/norton${BCMEX}
.PHONY: norton${BCMEX} norton${BCMEX}-install norton${BCMEX}-clean
norton${BCMEX}:
	+$(MAKE) -C $(NORTON_DIR)

norton${BCMEX}-install:
	+$(MAKE) -C $(NORTON_DIR) install INSTALLDIR=$(INSTALLDIR)/norton${BCMEX}

norton${BCMEX}-clean:
	[ ! -f $(NORTEON_DIR)/Makefile ] || -@$(MAKE) -C $(NORTON_DIR) clean

#diskdev_cmds-332.14
diskdev_cmds-332.14: openssl
	@$(SEP)
	cd $(TOP)/diskdev_cmds-332.14 && \
	make -f Makefile.lnx

diskdev_cmds-332.14-install: diskdev_cmds-332.14
	install -D diskdev_cmds-332.14/newfs_hfs.tproj/newfs_hfs $(INSTALLDIR)/diskdev_cmds-332.14/usr/sbin/mkfs.hfsplus
	install -D diskdev_cmds-332.14/fsck_hfs.tproj/fsck_hfs $(INSTALLDIR)/diskdev_cmds-332.14/usr/sbin/fsck.hfsplus
	$(STRIP) $(INSTALLDIR)/diskdev_cmds-332.14/usr/sbin/mkfs.hfsplus
	$(STRIP) $(INSTALLDIR)/diskdev_cmds-332.14/usr/sbin/fsck.hfsplus
	cd $(INSTALLDIR)/diskdev_cmds-332.14/usr/sbin && \
	rm -f mkfs.hfs && \
	rm -f fsck.hfs && \
	ln -s mkfs.hfsplus mkfs.hfs && \
	ln -s fsck.hfsplus fsck.hfs

diskdev_cmds-332.14-clean:
	cd $(TOP)/diskdev_cmds-332.14 && \
	make -f Makefile.lnx clean
	rm -f $(INSTALLDIR)/diskdev_cmds-332.14/usr/sbin/mkfs.hfs
	rm -f $(INSTALLDIR)/diskdev_cmds-332.14/usr/sbin/fsck.hfs

wget/Makefile.in: wget/Makefile.am
	cd wget && autoreconf -fi

wget/Makefile: wget/Makefile.in
	cd wget && $(CONFIGURE) \
		--with-ssl=openssl --with-libssl-prefix=$(TOP)/openssl \
		--disable-opie --disable-ntlm --disable-debug --disable-nls --disable-rpath \
		$(if $(RTCONFIG_IPV6),,--disable-ipv6) --disable-iri --without-included-regex  \
		--disable-dependency-tracking \
		CFLAGS="-Os -Wall $(EXTRACFLAGS) -ffunction-sections -fdata-sections -I$(TOP)/openssl/include -I$(TOP)/zlib" \
		LDFLAGS="$(EXTRALDFLAGS) -Wl,--gc-sections -L$(TOP)/openssl -lssl -lcrypto -L$(TOP)/zlib -lz"

wget: openssl zlib wget/Makefile
	$(MAKE) -C $@

wget-clean:
	[ ! -f wget/Makefile ] || $(MAKE) -C wget distclean
	@rm -f wget/Makefile

wget-install:
	install -D wget/src/wget $(INSTALLDIR)/wget/usr/sbin/wget
	$(STRIP) $(INSTALLDIR)/wget/usr/sbin/wget

ethtool-3.7/configure:
	cd ethtool-3.7 && ./autogen.sh

ethtool-3.7/Makefile: ethtool-3.7/configure
	cd ethtool-3.7 && $(CONFIGURE) \
		--with-kernel=$(LINUXDIR)

ethtool-3.7: ethtool-3.7/Makefile
	$(MAKE) -C $@ KERNEL_DIR=$(LINUXDIR)

ethtool-3.7-clean:
	$(MAKE) -C ethtool-3.7 distclean

ethtool-3.7-install: ethtool-3.7
	install -D ethtool-3.7/ethtool $(INSTALLDIR)/ethtool-3.7/usr/bin/ethtool
	$(STRIP) $(INSTALLDIR)/ethtool-3.7/usr/bin/ethtool

json-c/stamp-h1:
ifeq ($(RTCONFIG_LANTIQ),y)
	cd $(TOP)/json-c && \
	$(CONFIGURE) --enable-shared --disable-static \
	ac_cv_func_realloc_0_nonnull=yes ac_cv_func_malloc_0_nonnull=yes ac_cv_have_decl__isnan=no \
	CFLAGS="-Os -Wno-error $(EXTRACFLAGS)" \
	LDFLAGS="$(EXTRALDFLAGS) -Wl,--as-needed -lm"
	touch $@
else
	cd $(TOP)/json-c && \
	$(CONFIGURE) --enable-shared --disable-static \
	ac_cv_func_realloc_0_nonnull=yes ac_cv_func_malloc_0_nonnull=yes \
	CFLAGS="-Os -Wno-error $(EXTRACFLAGS)" \
	LDFLAGS="$(EXTRALDFLAGS) -Wl,--as-needed -lm"
	touch $@
endif

json-c: json-c/stamp-h1
	$(MAKE) -C $@

json-c-install: json-c
	install -D json-c/.libs/libjson-c.so.2.0.2 $(INSTALLDIR)/json-c/usr/lib/libjson-c.so.2.0.2
	$(STRIP) $(INSTALLDIR)/json-c/usr/lib/libjson-c.so.2.0.2
	cd $(INSTALLDIR)/json-c/usr/lib && \
		ln -sf libjson-c.so.2.0.2 libjson-c.so && \
		ln -sf libjson-c.so.2.0.2 libjson-c.so.2

json-c-clean:
	-@[ ! -f json-c/Makefile ] || $(MAKE) -C json-c clean
	-@rm -f json-c/stamp-h1

phddns/stamp-h1:
ifeq ($(HND_ROUTER),y)
	cd phddns && $(CONFIGURE) --prefix="" \
		CFLAGS="-Os -I$(SRCBASE)/include -I$(TOP)/shared $(EXTRACFLAGS)" \
		LDFLAGS="-L$(TOP)/nvram$(BCMEX)$(EX7) -L$(TOP)/wlcsm -L$(TOP)/shared $(if $(RTCONFIG_QTN),-L$(TOP)/libqcsapi_client) $(if $(RTCONFIG_AMAS),-L$(TOP)/json-c/.libs -ljson-c) $(EXTRALDFLAGS)" \
		LIBS="-lnvram -lwlcsm -lshared $(if $(RTCONFIG_QTN),-lqcsapi_client) $(if $(RTCONFIG_AMAS),-ljson-c)"
	@touch $@
else
	cd phddns && $(CONFIGURE) --prefix="" \
		CFLAGS="-Os -I$(SRCBASE)/include -I$(TOP)/shared $(EXTRACFLAGS)" \
		LDFLAGS="-L$(TOP)/nvram$(BCMEX)$(EX7) -L$(TOP)/shared $(if $(RTCONFIG_QTN),-L$(TOP)/libqcsapi_client) $(if $(RTCONFIG_AMAS),-L$(TOP)/json-c/.libs -ljson-c) $(EXTRALDFLAGS)" \
		LIBS="-lnvram -lshared $(if $(RTCONFIG_QTN),-lqcsapi_client) $(if $(RTCONFIG_AMAS),-ljson-c)"
	@touch $@
endif

phddns: phddns/stamp-h1
	$(MAKE) -C phddns

phddns-install: phddns
	install -D phddns/src/phddns $(INSTALLDIR)/phddns/usr/sbin/phddns
	$(STRIP) $(INSTALLDIR)/phddns/usr/sbin/phddns

phddns-clean:
	@[ ! -f phddns/Makefile ] || $(MAKE) -C phddns clean
	@rm -f phddns/stamp-h1

wlceventd: $(if $(RTCONFIG_NOTIFICATION_CENTER),nt_center sqlite,)

#
# Generic rules
#
%:
	@[ ! -d $* ] || [ -f $*/Makefile ] || $(MAKE) $*-configure
	@[ ! -d $* ] || ( $(SEP); $(MAKE) -C $* )


%-clean:
	-@[ ! -d $* ] || $(MAKE) -C $* clean


%-install: %
	@echo $*
	@[ ! -d $* ] || $(MAKE) -C $* install INSTALLDIR=$(INSTALLDIR)/$*
ifeq ($(HND_ROUTER),y)
	@-mkdir -p $(BCM_FSBUILD_DIR)/public/lib$(BCM_INSTALL_SUFFIX_DIR)
	@-mkdir -p $(BCM_FSBUILD_DIR)/public/bin$(BCM_INSTALL_SUFFIX_DIR)
	@-mkdir -p $(BCM_FSBUILD_DIR)/public/sbin$(BCM_INSTALL_SUFFIX_DIR)
	@[ ! -d $* ] || $(MAKE) -C $* install INSTALLDIR=$(BCM_FSBUILD_DIR)/public
endif

%-stage:
	@echo $*
	@[ ! -d $* ] || $(MAKE) -C $* install DESTDIR=$(STAGEDIR) INSTALLDIR=$(INSTALLDIR)/$*

%-build:
	$(MAKE) $*-clean $*

%/Makefile:
	[ ! -d $* ] || $(MAKE) $*-configure

%-configure:
	@[ ! -d $* ] || ( cd $* ; \
		$(CONFIGURE) \
		--prefix=/usr \
		--bindir=/usr/sbin \
		--libdir=/usr/lib \
	)


$(obj-y) $(obj-n) $(obj-clean) $(obj-install): dummy

.PHONY: all clean distclean mrproper install package image
.PHONY: conf mconf oldconf kconf kmconf config menuconfig oldconfig
.PHONY: dummy libnet libpcap
