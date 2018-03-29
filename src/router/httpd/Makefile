include ../common.mak

CFLAGS += -Os -Wall $(EXTRACFLAGS)
CFLAGS += $(PRIVATE_EXTRACFLAGS)
CFLAGS += -I$(SRCBASE) -I. -I$(SRCBASE)/include -I$(TOP)/shared -I$(TOP)/zlib -I$(TOP)/networkmap
CFLAGS += -I$(TOP)/push_log
CFLAGS += -DASUS_DDNS -DTRANSLATE_ON_FLY -DFLASH_EMULATOR -DLinux -DWSC 

ifeq ($(RTCONFIG_NETOOL),y)
CFLAGS += -I$(TOP)/rc
endif

ifeq ($(RTCONFIG_VPN_FUSION),y)
CFLAGS += -I$(TOP)/rc
endif

include $(SRCBASE)/.config


ifeq ($(RTCONFIG_DNSMASQ),y)
CFLAGS += -DDNSMASQ
endif

ifeq ($(RTCONFIG_TRAFFIC_LIMITER),y)
CFLAGS += -I$(TOP)/traffic_limiter
CFLAGS += -I$(TOP)/sqlite
endif

OBJS = httpd.o cgi.o ej.o 
OBJS += web.o common.o nvram_f.o 
OBJS += aspbw.o initial_web_hook.o
OBJS += apps.o
OBJS += web-broadcom.o

ifeq ($(RTCONFIG_HTTPS),y)
OBJS += $(if $(wildcard pwenc.c), pwenc.o, prebuild/pwenc.o)
endif

OBJS += $(if $(wildcard web_hook.c), web_hook.o, prebuild/web_hook.o)

LIBS = -L$(TOP)/nvram${BCMEX}$(EX7) -lnvram -L$(TOP)/shared -lshared
# for ceil()
LIBS += -lm


ifeq ($(RTCONFIG_BCMARM),y)
CFLAGS += -I$(SRCBASE)/shared/bcmwifi/include -DTYPEDEF_FLOAT_T
CFLAGS += -I$(SRCBASE)/common/include
LIBS += -lgcc_s
endif

ifeq ($(RTCONFIG_AMAS),y)
LDFLAGS += -L$(TOP)/json-c/.libs -ljson-c
endif

ifeq ($(RTCONFIG_USB),y)
CFLAGS += -I$(TOP)/libdisk	
LIBS += -L$(TOP)/libdisk -ldisk
endif

ifeq ($(RTCONFIG_HTTPS),y)
CFLAGS += -I$(TOP)/mssl
CFLAGS += -I$(TOP)/openssl/include
LIBS += -L$(TOP)/mssl -lmssl
LIBS += -L$(TOP)/openssl -lssl -lcrypto -ldl
endif

ifeq ($(RTCONFIG_OPENVPN),y)
OBJS += openvpn_options.o
CFLAGS += -I$(TOP)/libvpn
LIBS += -L$(TOP)/libvpn -lvpn
LIBS += -L$(TOP)/openssl -lssl -lcrypto -ldl
endif

CFLAGS += -I$(TOP)/json-c
LIBS += -L$(TOP)/json-c/.libs -ljson-c


ifeq ($(RTCONFIG_TRAFFIC_LIMITER),y)
LIBS += -L$(TOP)/traffic_limiter -ltraffic_limiter
LIBS += -L$(TOP)/sqlite/.libs -lsqlite3
endif



export CFLAGS
vpath %.c sysdeps


CFLAGS += -I$(TOP)/libpasswd
LIBS += -L$(TOP)/libpasswd -lpasswd

all: httpd #test_apps

#test_apps: apps.c
#	$(CC) -DAPPS $(CFLAGS) $(LIBS) $^ -o $@

httpd: $(OBJS)
	@echo " [httpd] CC $@"
	@$(CC) -o $@ $(OBJS) $(LIBS) $(EXTRALDFLAGS)

	$(SIZECHECK)
	$(CPTMP)


install: all
	@echo " [httpd] Installing to $(INSTALLDIR)"
	@install -D httpd $(INSTALLDIR)/usr/sbin/httpd
	@$(STRIP) $(INSTALLDIR)/usr/sbin/httpd
	@cd $(INSTALLDIR)/usr/sbin/; ln -sf httpd httpds
	@chmod 0500 $(INSTALLDIR)/usr/sbin/httpd
	#@install -m 0755 test_apps $(INSTALLDIR)/usr/sbin
	#@$(STRIP) $(INSTALLDIR)/usr/sbin/test_apps

clean:
	rm -f httpd *.o .*.depend test_apps

size: httpd
	mipsel-uclibc-nm --print-size --size-sort httpd

# handle prebuilt object here
ifneq ($(wildcard, ./prebuild),)
ifeq ($(RTCONFIG_HTTPS),y)
pwenc.o:
	@-cp -f ./prebuild/pwenc.o .
endif
web_hook.o:
	@-cp -f ./prebuild/web_hook.o .
endif

%.o: %.c .%.depend
	@echo " [httpd] CC $@"
	@$(CC) $(CFLAGS) -o $@ -c $<

.%.depend: %.c
	@$(CC) $(CFLAGS) -M $< > $@

-include $(OBJS:%.o=.%.depend)
