define RouterOptions
	@( \
	if [ "$(CONFIG_LINUX26)" = "y" ] ; then \
		if [ "$(SAMBA3)" = "3.6.x" ]; then \
			sed -i "/RTCONFIG_SAMBA36X/d" $(1); \
			echo "RTCONFIG_SAMBA36X=y" >>$(1); \
			sed -i "/RTCONFIG_SAMBA3\>/d" $(1); \
			echo "# RTCONFIG_SAMBA3 is not set" >>$(1); \
		else \
			sed -i "/RTCONFIG_SAMBA36X/d" $(1); \
			echo "# RTCONFIG_SAMBA36X is not set" >>$(1); \
			sed -i "/RTCONFIG_SAMBA3\>/d" $(1); \
			echo "RTCONFIG_SAMBA3=y" >>$(1); \
		fi; \
	fi; \
	if [ "$(CONFIG_BCMWL5)" = "y" ]; then \
		sed -i "/CONFIG_LIBBCM/d" $(1); \
		echo "CONFIG_LIBBCM=y" >>$(1); \
		sed -i "/CONFIG_LIBUPNP/d" $(1); \
		echo "CONFIG_LIBUPNP=y" >>$(1); \
	fi; \
	sed -i "/RTCONFIG_EMF/d" $(1); \
	if [ "$(CONFIG_LINUX26)" = "y" ]; then \
		if [ "$(SLIM)" = "y" ]; then \
			echo "# RTCONFIG_EMF is not set" >>$(1); \
		else \
			echo "RTCONFIG_EMF=y" >>$(1); \
		fi; \
	else \
		echo "# RTCONFIG_EMF is not set" >>$(1); \
	fi; \
	sed -i "/RTCONFIG_JFFSV1/d" $(1); \
	if [ "$(CONFIG_LINUX26)" = "y" ]; then \
		if [ "$(JFFSv1)" = "y" ]; then \
			echo "RTCONFIG_JFFSV1=y" >>$(1); \
		else \
			echo "# RTCONFIG_JFFSV1 is not set" >>$(1); \
		fi; \
	else \
		echo "RTCONFIG_JFFSV1=y" >>$(1); \
	fi; \
	if [ "$(YAFFS)" = "y" ]; then \
		sed -i "/RTCONFIG_YAFFS/d" $(1); \
		echo "RTCONFIG_YAFFS=y" >>$(1); \
		sed -i "/RTCONFIG_JFFS2/d" $(1); \
		echo "# RTCONFIG_JFFS2 is not set" >>$(1); \
		sed -i "/RTCONFIG_JFFSV1/d" $(1); \
		echo "# RTCONFIG_JFFSV1 is not set" >>$(1); \
	fi; \
	if [ "$(FANCTRL)" = "y" ]; then \
		sed -i "/RTCONFIG_FANCTRL/d" $(1); \
		echo "RTCONFIG_FANCTRL=y" >>$(1); \
	fi; \
	if [ "$(BCM5301X)" = "y" ]; then \
		sed -i "/RTCONFIG_5301X/d" $(1); \
		echo "RTCONFIG_5301X=y" >>$(1); \
	fi; \
	if [ "$(BCMWL6)" = "y" ]; then \
		sed -i "/RTCONFIG_BCMWL6/d" $(1); \
		echo "RTCONFIG_BCMWL6=y" >>$(1); \
		sed -i "/RTCONFIG_BCMDCS/d" $(1); \
		echo "RTCONFIG_BCMDCS=y" >>$(1); \
	fi; \
	if [ "$(BCMWL6A)" = "y" ]; then \
		sed -i "/RTCONFIG_BCMWL6A/d" $(1); \
		echo "RTCONFIG_BCMWL6A=y" >>$(1); \
	fi; \
	if [ "$(ARM)" = "y" ]; then \
		sed -i "/RTCONFIG_BCMARM/d" $(1); \
		echo "RTCONFIG_BCMARM=y" >>$(1); \
	fi; \
	if [ "$(ALPINE)" = "y" ]; then \
		sed -i "/RTCONFIG_ALPINE/d" $(1); \
		echo "RTCONFIG_ALPINE=y" >>$(1); \
	fi; \
	if [ "$(LANTIQ)" = "y" ]; then \
		sed -i "/RTCONFIG_LANTIQ/d" $(1); \
		echo "RTCONFIG_LANTIQ=y" >>$(1); \
	fi; \
	if [ "$(QSR10G)" = "y" ]; then \
		sed -i "/RTCONFIG_QSR10G/d" $(1); \
		echo "RTCONFIG_QSR10G=y" >>$(1); \
	fi; \
	if [ "$(NVRAM_FILE)" = "y" ]; then \
		sed -i "/RTCONFIG_NVRAM_FILE/d" $(1); \
		echo "RTCONFIG_NVRAM_FILE=y" >>$(1); \
	fi; \
	if [ "$(BCMSMP)" = "y" ]; then \
		sed -i "/RTCONFIG_BCMSMP/d" $(1); \
		echo "RTCONFIG_BCMSMP=y" >>$(1); \
	fi; \
	if [ "$(BCMFA)" = "y" ]; then \
		sed -i "/RTCONFIG_BCMFA/d" $(1); \
		echo "RTCONFIG_BCMFA=y" >>$(1); \
	fi; \
	if [ "$(RGMII_BCM_FA)" = "y" ]; then \
		sed -i "/RTCONFIG_RGMII_BCM_FA/d" $(1); \
		echo "RTCONFIG_RGMII_BCM_FA=y" >>$(1); \
	fi; \
	if [ "$(COMA)" = "y" ]; then \
		sed -i "/RTCONFIG_COMA/d" $(1); \
		echo "RTCONFIG_COMA=y" >>$(1); \
	fi; \
	if [ "$(WIRELESSWAN)" = "y" ]; then \
		sed -i "/RTCONFIG_WIRELESSWAN/d" $(1); \
		echo "RTCONFIG_WIRELESSWAN=y" >>$(1); \
	fi; \
	if [ "$(PARENTAL2)" = "y" -o "$(PARENTAL)" = "y" ]; then \
		sed -i "/RTCONFIG_PARENTALCTRL/d" $(1); \
		echo "RTCONFIG_PARENTALCTRL=y" >>$(1); \
	fi; \
	if [ "$(YANDEXDNS)" = "y" ]; then \
		sed -i "/RTCONFIG_YANDEXDNS/d" $(1); \
		echo "RTCONFIG_YANDEXDNS=y" >>$(1); \
	fi; \
	if [ "$(PPTPD)" = "y" ]; then \
		sed -i "/RTCONFIG_PPTPD/d" $(1); \
		echo "RTCONFIG_PPTPD=y" >>$(1); \
	fi; \
	if [ "$(REPEATER)" = "y" ]; then \
		sed -i "/RTCONFIG_WIRELESSREPEATER/d" $(1); \
		echo "RTCONFIG_WIRELESSREPEATER=y" >>$(1); \
		if [ "$(DISABLE_REPEATER_UI)" = "y" ] ; then \
			sed -i "/RTCONFIG_DISABLE_REPEATER_UI/d" $(1); \
			echo "RTCONFIG_DISABLE_REPEATER_UI=y" >>$(1); \
		fi; \
	fi; \
	if [ "$(PURE_REPEATER)" = "y" ]; then \
		sed -i "/RTCONFIG_REPEATER/d" $(1); \
		echo "RTCONFIG_REPEATER=y" >>$(1); \
		if [ "$(DISABLE_REPEATER_UI)" = "y" ] ; then \
			sed -i "/RTCONFIG_DISABLE_REPEATER_UI/d" $(1); \
			echo "RTCONFIG_DISABLE_REPEATER_UI=y" >>$(1); \
		fi; \
	fi; \
	if [ "$(PROXYSTA)" = "y" ]; then \
		sed -i "/RTCONFIG_PROXYSTA/d" $(1); \
		echo "RTCONFIG_PROXYSTA=y" >>$(1); \
	fi; \
	if [ "$(DISABLE_PROXYSTA_UI)" = "y" ] ; then \
		sed -i "/RTCONFIG_DISABLE_PROXYSTA_UI/d" $(1); \
		echo "RTCONFIG_DISABLE_PROXYSTA_UI=y" >>$(1); \
	fi; \
	if [ "$(PSR_GUEST)" = "y" ]; then \
		sed -i "/RTCONFIG_PSR_GUEST/d" $(1); \
		echo "RTCONFIG_PSR_GUEST=y" >>$(1); \
	fi; \
	if [ "$(CONCURRENTREPEATER)" = "y" ]; then \
		sed -i "/RTCONFIG_CONCURRENTREPEATER/d" $(1); \
		echo "RTCONFIG_CONCURRENTREPEATER=y" >>$(1); \
	fi; \
	if [ "$(IXIAEP)" = "y" ]; then \
		sed -i "/RTCONFIG_IXIAEP/d" $(1); \
		echo "RTCONFIG_IXIAEP=y" >>$(1); \
	fi; \
	if [ "$(IPERF)" = "y" ]; then \
		sed -i "/RTCONFIG_IPERF/d" $(1); \
		echo "RTCONFIG_IPERF=y" >>$(1); \
	fi; \
	if [ "$(RGBLED)" = "y" ]; then \
		sed -i "/RTCONFIG_RGBLED/d" $(1); \
		echo "RTCONFIG_RGBLED=y" >>$(1); \
	fi; \
	if [ "$(I2CTOOLS)" = "y" ]; then \
		sed -i "/RTCONFIG_I2CTOOLS/d" $(1); \
		echo "RTCONFIG_I2CTOOLS=y" >>$(1); \
	fi; \
	if [ "$(TCPDUMP)" = "y" ]; then \
		sed -i "/RTCONFIG_TCPDUMP/d" $(1); \
		echo "RTCONFIG_TCPDUMP=y" >>$(1); \
	fi; \
	if [ "$(TRACEROUTE)" = "y" ]; then \
		sed -i "/RTCONFIG_TRACEROUTE/d" $(1); \
		echo "RTCONFIG_TRACEROUTE=y" >>$(1); \
	fi; \
	if [ "$(NETOOL)" = "y" ]; then \
		sed -i "/RTCONFIG_NETOOL/d" $(1); \
		echo "RTCONFIG_NETOOL=y" >>$(1); \
	fi; \
	if [ "$(DISKTEST)" = "y" ]; then \
		sed -i "/RTCONFIG_DISKTEST/d" $(1); \
		echo "RTCONFIG_DISKTEST=y" >>$(1); \
	fi; \
	if [ "$(LOCALE2012)" = "y" ]; then \
		sed -i "/RTCONFIG_LOCALE2012/d" $(1); \
		echo "RTCONFIG_LOCALE2012=y" >>$(1); \
	fi; \
	if [ "$(ODMPID)" = "y" ]; then \
		sed -i "/RTCONFIG_ODMPID/d" $(1); \
		echo "RTCONFIG_ODMPID=y" >>$(1); \
	fi; \
	if [ "$(NONASUS)" = "y" ]; then \
		sed -i "/RTCONFIG_NONASUS/d" $(1); \
		echo "RTCONFIG_NONASUS=y" >>$(1); \
	fi; \
	if [ "$(MDNS)" = "y" ]; then \
		sed -i "/RTCONFIG_MDNS/d" $(1); \
		echo "RTCONFIG_MDNS=y" >>$(1); \
	fi; \
	if [ "$(REDIRECT_DNAME)" = "y" ]; then \
		sed -i "/RTCONFIG_REDIRECT_DNAME/d" $(1); \
		echo "RTCONFIG_REDIRECT_DNAME=y" >>$(1); \
	fi; \
	if [ "$(MTK_TW_AUTO_BAND4)" = "y" ]; then \
		sed -i "/RTCONFIG_MTK_TW_AUTO_BAND4/d" $(1); \
		echo "RTCONFIG_MTK_TW_AUTO_BAND4=y" >>$(1); \
	fi; \
	if [ "$(QCA_TW_AUTO_BAND4)" = "y" ]; then \
		sed -i "/RTCONFIG_QCA_TW_AUTO_BAND4/d" $(1); \
		echo "RTCONFIG_QCA_TW_AUTO_BAND4=y" >>$(1); \
	fi; \
	if [ "$(NEWSSID_REV2)" = "y" ]; then \
		sed -i "/RTCONFIG_NEWSSID_REV2/d" $(1); \
		echo "RTCONFIG_NEWSSID_REV2=y" >>$(1); \
	fi; \
	if [ "$(NEW_APP_ARM)" = "y" ]; then \
		sed -i "/RTCONFIG_NEW_APP_ARM/d" $(1); \
		echo "RTCONFIG_NEW_APP_ARM=y" >>$(1); \
	fi; \
	if [ "$(NEWSSID_REV2)" = "y" ]; then \
		sed -i "/RTCONFIG_NEWSSID_REV2/d" $(1); \
		echo "RTCONFIG_NEWSSID_REV2=y" >>$(1); \
	fi; \
	if [ "$(FINDASUS)" = "y" ]; then \
		sed -i "/RTCONFIG_FINDASUS/d" $(1); \
		echo "RTCONFIG_FINDASUS=y" >>$(1); \
		sed -i "/RTCONFIG_MDNS/d" $(1); \
		echo "RTCONFIG_MDNS=y" >>$(1); \
	fi; \
	if [ "$(TIMEMACHINE)" = "y" ]; then \
		sed -i "/RTCONFIG_TIMEMACHINE/d" $(1); \
		echo "RTCONFIG_TIMEMACHINE=y" >>$(1); \
		sed -i "/RTCONFIG_MDNS/d" $(1); \
		echo "RTCONFIG_MDNS=y" >>$(1); \
	fi; \
	if [ "$(LED_ALL)" = "y" ]; then \
		sed -i "/RTCONFIG_LED_ALL/d" $(1); \
		echo "RTCONFIG_LED_ALL=y" >>$(1); \
	fi; \
	if [ "$(N56U_SR2)" = "y" ]; then \
		sed -i "/RTCONFIG_N56U_SR2/d" $(1); \
		echo "RTCONFIG_N56U_SR2=y" >>$(1); \
	fi; \
	if [ "$(AP_CARRIER_DETECTION)" = "y" ]; then \
		sed -i "/RTCONFIG_AP_CARRIER_DETECTION/d" $(1); \
		echo "RTCONFIG_AP_CARRIER_DETECTION=y" >>$(1); \
	fi; \
	if [ "$(SFP)" = "y" ]; then \
		sed -i "/RTCONFIG_SFP/d" $(1); \
		echo "RTCONFIG_SFP=y" >>$(1); \
	fi; \
	if [ "$(SFP4M)" = "y" ]; then \
		sed -i "/RTCONFIG_SFP/d" $(1); \
		echo "RTCONFIG_SFP=y" >>$(1); \
		sed -i "/RTCONFIG_4M_SFP/d" $(1); \
		echo "RTCONFIG_4M_SFP=y" >>$(1); \
		sed -i "/RTCONFIG_UPNPC/d" $(1); \
		echo "# RTCONFIG_UPNPC is not set" >>$(1); \
		sed -i "/RTCONFIG_BONJOUR/d" $(1); \
		echo "# RTCONFIG_BONJOUR is not set" >>$(1); \
		sed -i "/RTCONFIG_SPEEDTEST/d" $(1); \
		echo "# RTCONFIG_SPEEDTEST is not set" >>$(1); \
	fi; \
	if [ "$(SFP8M)" = "y" ]; then \
		sed -i "/RTCONFIG_8M_SFP/d" $(1); \
		echo "RTCONFIG_8M_SFP=y" >>$(1); \
		sed -i "/RTCONFIG_UPNPC/d" $(1); \
		echo "# RTCONFIG_UPNPC is not set" >>$(1); \
		sed -i "/RTCONFIG_BONJOUR/d" $(1); \
		echo "# RTCONFIG_BONJOUR is not set" >>$(1); \
		sed -i "/RTCONFIG_SPEEDTEST/d" $(1); \
		echo "# RTCONFIG_SPEEDTEST is not set" >>$(1); \
	fi; \
	if [ "$(SFPRAM16M)" = "y" ]; then \
		sed -i "/RTCONFIG_16M_RAM_SFP/d" $(1); \
		echo "RTCONFIG_16M_RAM_SFP=y" >>$(1); \
	fi; \
	if [ "$(AUTODICT)" = "y" ]; then \
		sed -i "/RTCONFIG_AUTODICT/d" $(1); \
		echo "RTCONFIG_AUTODICT=y" >>$(1); \
	fi; \
	if [ "$(ZIPLIVEUPDATE)" = "y" ]; then \
		sed -i "/RTCONFIG_AUTOLIVEUPDATE_ZIP/d" $(1); \
		echo "RTCONFIG_AUTOLIVEUPDATE_ZIP=y" >>$(1); \
	fi; \
	if [ "$(LANWAN_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_LANWAN_LED/d" $(1); \
		echo "RTCONFIG_LANWAN_LED=y" >>$(1); \
	fi; \
	if [ "$(WLAN_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_WLAN_LED/d" $(1); \
		echo "RTCONFIG_WLAN_LED=y" >>$(1); \
	fi; \
	if [ "$(ETLAN_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_FAKE_ETLAN_LED/d" $(1); \
		echo "RTCONFIG_FAKE_ETLAN_LED=y" >>$(1); \
	fi; \
	if [ "$(EXT_LED_WPS)" = "y" ]; then \
		sed -i "/RTCONFIG_EXT_LED_WPS/d" $(1); \
		echo "RTCONFIG_EXT_LED_WPS=y" >>$(1); \
	fi; \
	if [ "$(LAN4WAN_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_LAN4WAN_LED/d" $(1); \
		echo "RTCONFIG_LAN4WAN_LED=y" >>$(1); \
	fi; \
	if [ "$(SWMODE_SWITCH)" = "y" ]; then \
		sed -i "/RTCONFIG_SWMODE_SWITCH/d" $(1); \
		echo "RTCONFIG_SWMODE_SWITCH=y" >>$(1); \
	fi; \
	if [ "$(WL_AUTO_CHANNEL)" = "y" ]; then \
		sed -i "/RTCONFIG_WL_AUTO_CHANNEL/d" $(1); \
		echo "RTCONFIG_WL_AUTO_CHANNEL=y" >>$(1); \
	fi; \
	if [ "$(SMALL_FW_UPDATE)" = "y" ]; then \
		sed -i "/RTCONFIG_SMALL_FW_UPDATE/d" $(1); \
		echo "RTCONFIG_SMALL_FW_UPDATE=y" >>$(1); \
	fi; \
	if [ "$(WIRELESS_SWITCH)" = "y" ]; then \
		sed -i "/RTCONFIG_WIRELESS_SWITCH/d" $(1); \
		echo "RTCONFIG_WIRELESS_SWITCH=y" >>$(1); \
	fi; \
	if [ "$(BTN_WIFITOG)" = "y" ]; then \
		sed -i "/RTCONFIG_WIFI_TOG_BTN/d" $(1); \
		echo "RTCONFIG_WIFI_TOG_BTN=y" >>$(1); \
	fi; \
	if [ "$(BTN_WPS_RST)" = "y" ]; then \
		sed -i "/RTCONFIG_WPS_RST_BTN/d" $(1); \
		echo "RTCONFIG_WPS_RST_BTN=y" >>$(1); \
	fi; \
	if [ "$(BTN_WPS_ALLLED)" = "y" ]; then \
		sed -i "/RTCONFIG_WPS_ALLLED_BTN/d" $(1); \
		echo "RTCONFIG_WPS_ALLLED_BTN=y" >>$(1); \
	fi; \
	if [ "$(LOGO_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_LOGO_LED/d" $(1); \
		echo "RTCONFIG_LOGO_LED=y" >>$(1); \
	fi; \
	if [ "$(LED_BTN)" = "y" ]; then \
		sed -i "/RTCONFIG_LED_BTN/d" $(1); \
		echo "RTCONFIG_LED_BTN=y" >>$(1); \
	fi; \
	if [ "$(USBEJECT)" = "y" ]; then \
		sed -i "/RTCONFIG_USBEJECT/d" $(1); \
		echo "RTCONFIG_USBEJECT=y" >>$(1); \
	fi; \
	if [ "$(BCM4352_5G)" = "y" ]; then \
		sed -i "/RTCONFIG_4352_5G/d" $(1); \
		echo "RTCONFIG_4352_5G=y" >>$(1); \
	fi; \
	if [ "$(ACCEL_PPTPD)" = "y" ]; then \
		sed -i "/RTCONFIG_ACCEL_PPTPD/d" $(1); \
		echo "RTCONFIG_ACCEL_PPTPD=y" >>$(1); \
	fi; \
	if [ "$(SNMPD)" = "y" ]; then \
		sed -i "/RTCONFIG_SNMPD/d" $(1); \
		echo "RTCONFIG_SNMPD=y" >>$(1); \
	fi; \
	if [ "$(SHP)" = "y" ]; then \
		sed -i "/RTCONFIG_SHP/d" $(1); \
		echo "RTCONFIG_SHP=y" >>$(1); \
	fi; \
	if [ "$(GRO)" = "y" ]; then \
		sed -i "/RTCONFIG_GROCTRL/d" $(1); \
		echo "RTCONFIG_GROCTRL=y" >>$(1); \
	fi; \
	if [ "$(DSL)" = "y" ]; then \
		sed -i "/RTCONFIG_DSL/d" $(1); \
		echo "RTCONFIG_DSL=y" >>$(1); \
		if [ "$(ANNEX_B)" = "y" ]; then \
			echo "RTCONFIG_DSL_ANNEX_B=y" >>$(1); \
		else \
			echo "# RTCONFIG_DSL_ANNEX_B is not set" >>$(1); \
		fi; \
		if [ "$(DSL_TCLINUX)" = "y" ]; then \
			sed -i "/RTCONFIG_DSL_TCLINUX/d" $(1); \
			echo "RTCONFIG_DSL_TCLINUX=y" >>$(1); \
		else \
			echo "# RTCONFIG_DSL_TCLINUX is not set" >>$(1); \
		fi; \
		if [ "$(VDSL)" = "y" ]; then \
			sed -i "/RTCONFIG_VDSL/d" $(1); \
			echo "RTCONFIG_VDSL=y" >>$(1); \
		else \
			echo "# RTCONFIG_VDSL is not set" >>$(1); \
		fi; \
	fi; \
	if [ "$(DUALWAN)" = "y" ]; then \
		sed -i "/RTCONFIG_DUALWAN/d" $(1); \
		echo "RTCONFIG_DUALWAN=y" >>$(1); \
	fi; \
	if [ "$(HW_DUALWAN)" = "y" ]; then \
		sed -i "/RTCONFIG_HW_DUALWAN/d" $(1); \
		echo "RTCONFIG_HW_DUALWAN=y" >>$(1); \
	fi; \
	if [ "$(EMAIL)" = "y" ]; then \
		sed -i "/RTCONFIG_PUSH_EMAIL/d" $(1); \
		echo "RTCONFIG_PUSH_EMAIL=y" >>$(1); \
	fi; \
	if [ "$(DBLOG)" = "y" ]; then \
		sed -i "/RTCONFIG_DBLOG/d" $(1); \
		echo "RTCONFIG_DBLOG=y" >>$(1); \
	fi; \
	if [ "$(SYSSTATE)" = "y" ]; then \
		sed -i "/RTCONFIG_SYSSTATE/d" $(1); \
		echo "RTCONFIG_SYSSTATE=y" >>$(1); \
	fi; \
	if [ "$(USER_LOW_RSSI)" = "y" ]; then \
		sed -i "/RTCONFIG_USER_LOW_RSSI/d" $(1); \
		echo "RTCONFIG_USER_LOW_RSSI=y" >>$(1); \
	fi; \
	if [ "$(ADV_RAST)" = "y" ]; then \
		sed -i "/RTCONFIG_ADV_RAST/d" $(1); \
		echo "RTCONFIG_ADV_RAST=y" >>$(1); \
	fi; \
	if [ "$(NEW_USER_LOW_RSSI)" = "y" ]; then \
		sed -i "/RTCONFIG_NEW_USER_LOW_RSSI/d" $(1); \
		echo "RTCONFIG_NEW_USER_LOW_RSSI=y" >>$(1); \
	fi; \
	if [ "$(USB)" = "USB" ]; then \
		sed -i "/RTCONFIG_USB\b/d" $(1); \
		echo "RTCONFIG_USB=y" >>$(1); \
		if [ "$(USBEXTRAS)" = "y" ]; then \
			sed -i "/RTCONFIG_USB_EXTRAS/d" $(1); \
			echo "RTCONFIG_USB_EXTRAS=y" >>$(1); \
		fi; \
		if [ "$(E2FSPROGS)" = "y" ]; then \
			sed -i "/RTCONFIG_E2FSPROGS/d" $(1); \
			echo "RTCONFIG_E2FSPROGS=y" >>$(1); \
		fi; \
		if [ "$(EXT4FS)" = "y" ]; then \
			sed -i "/RTCONFIG_EXT4FS/d" $(1); \
			echo "RTCONFIG_EXT4FS=y" >>$(1); \
		fi; \
		if [ "$(TFAT)" != "" ]; then \
			sed -i "/RTCONFIG_TFAT/d" $(1); \
			echo "RTCONFIG_TFAT=y" >>$(1); \
			if [ "$(findstring open, $(TFAT))" = "open" ]; then \
				sed -i "/RTCONFIG_OPENPLUS_TFAT/d" $(1); \
				echo "RTCONFIG_OPENPLUS_TFAT=y" >>$(1); \
			fi; \
		fi; \
		if [ "$(NTFS)" != "" ]; then \
			sed -i "/RTCONFIG_NTFS/d" $(1); \
			echo "RTCONFIG_NTFS=y" >>$(1); \
			if [ "$(findstring open, $(NTFS))" = "open" ]; then \
				sed -i "/RTCONFIG_OPEN_NTFS3G/d" $(1); \
				echo "RTCONFIG_OPEN_NTFS3G=y" >>$(1); \
				if [ "$(findstring paragon, $(NTFS))" = "paragon" ]; then \
					sed -i "/RTCONFIG_OPENPLUSPARAGON_NTFS/d" $(1); \
					echo "RTCONFIG_OPENPLUSPARAGON_NTFS=y" >>$(1); \
				elif [ "$(findstring tuxera, $(NTFS))" = "tuxera" ]; then \
					sed -i "/RTCONFIG_OPENPLUSTUXERA_NTFS/d" $(1); \
					echo "RTCONFIG_OPENPLUSTUXERA_NTFS=y" >>$(1); \
				fi; \
			fi; \
			if [ "$(findstring paragon, $(NTFS))" = "paragon" ]; then \
				sed -i "/RTCONFIG_PARAGON_NTFS/d" $(1); \
				echo "RTCONFIG_PARAGON_NTFS=y" >>$(1); \
			fi; \
			if [ "$(findstring tuxera, $(NTFS))" = "tuxera" ]; then \
				sed -i "/RTCONFIG_TUXERA_NTFS/d" $(1); \
				echo "RTCONFIG_TUXERA_NTFS=y" >>$(1); \
			fi; \
		fi; \
		if [ "$(HFS)" != "" ]; then \
			sed -i "/RTCONFIG_HFS/d" $(1); \
			echo "RTCONFIG_HFS=y" >>$(1); \
			if [ "$(findstring open, $(HFS))" = "open" ]; then \
				sed -i "/RTCONFIG_KERNEL_HFSPLUS/d" $(1); \
				echo "RTCONFIG_KERNEL_HFSPLUS=y" >>$(1); \
				if [ "$(findstring paragon, $(HFS))" = "paragon" ]; then \
					sed -i "/RTCONFIG_OPENPLUSPARAGON_HFS/d" $(1); \
					echo "RTCONFIG_OPENPLUSPARAGON_HFS=y" >>$(1); \
				elif [ "$(findstring tuxera, $(HFS))" = "tuxera" ]; then \
					sed -i "/RTCONFIG_OPENPLUSTUXERA_HFS/d" $(1); \
					echo "RTCONFIG_OPENPLUSTUXERA_HFS=y" >>$(1); \
				fi; \
			fi; \
			if [ "$(findstring paragon, $(HFS))" = "paragon" ]; then \
				sed -i "/RTCONFIG_PARAGON_HFS/d" $(1); \
				echo "RTCONFIG_PARAGON_HFS=y" >>$(1); \
			fi; \
			if [ "$(findstring tuxera, $(HFS))" = "tuxera" ]; then \
				sed -i "/RTCONFIG_TUXERA_HFS/d" $(1); \
				echo "RTCONFIG_TUXERA_HFS=y" >>$(1); \
			fi; \
		fi; \
		if [ "$(UFSDDEBUG)" = "y" ]; then \
			sed -i "/RTCONFIG_UFSD_DEBUG/d" $(1); \
			echo "RTCONFIG_UFSD_DEBUG=y" >>$(1); \
		fi; \
		if [ "$(DISK_MONITOR)" = "y" ]; then \
			sed -i "/RTCONFIG_DISK_MONITOR/d" $(1); \
			echo "RTCONFIG_DISK_MONITOR=y" >>$(1); \
		fi; \
		if [ "$(MEDIASRV)" = "y" ]; then \
			sed -i "/RTCONFIG_MEDIA_SERVER/d" $(1); \
			echo "RTCONFIG_MEDIA_SERVER=y" >>$(1); \
			if [ "$(MEDIASRV_LIMIT)" = "y" ]; then \
			sed -i "/RTCONFIG_MEDIASERVER_LIMIT/d" $(1); \
			echo "RTCONFIG_MEDIASERVER_LIMIT=y" >>$(1); \
			fi; \
			sed -i "/RTCONFIG_NO_DAAPD/d" $(1); \
			if [ "$(NO_DAAPD)" = "y" ]; then \
				echo "RTCONFIG_NO_DAAPD=y" >>$(1); \
			else \
				echo "# RTCONFIG_NO_DAAPD is not set" >>$(1); \
			fi; \
		fi; \
		if [ "$(SMARTSYNCBASE)" = "y" ]; then \
				sed -i "/RTCONFIG_SWEBDAVCLIENT/d" $(1); \
				echo "RTCONFIG_SWEBDAVCLIENT=y" >>$(1); \
				sed -i "/RTCONFIG_DROPBOXCLIENT/d" $(1); \
				echo "RTCONFIG_DROPBOXCLIENT=y" >>$(1); \
				sed -i "/RTCONFIG_GOOGLECLIENT/d" $(1); \
				echo "RTCONFIG_GOOGLECLIENT=y" >>$(1); \
				sed -i "/RTCONFIG_FTPCLIENT/d" $(1); \
				echo "RTCONFIG_FTPCLIENT=y" >>$(1); \
				sed -i "/RTCONFIG_SAMBACLIENT/d" $(1); \
				echo "RTCONFIG_SAMBACLIENT=y" >>$(1); \
				sed -i "/RTCONFIG_USBCLIENT/d" $(1); \
				echo "RTCONFIG_USBCLIENT=y" >>$(1); \
				sed -i "/RTCONFIG_CLOUDSYNC/d" $(1); \
				echo "RTCONFIG_CLOUDSYNC=y" >>$(1); \
		else \
			if [ "$(SWEBDAVCLIENT)" = "y" ]; then \
				sed -i "/RTCONFIG_SWEBDAVCLIENT/d" $(1); \
				echo "RTCONFIG_SWEBDAVCLIENT=y" >>$(1); \
			fi; \
			if [ "$(DROPBOXCLIENT)" = "y" ]; then \
				sed -i "/RTCONFIG_DROPBOXCLIENT/d" $(1); \
				echo "RTCONFIG_DROPBOXCLIENT=y" >>$(1); \
			fi; \
			if [ "$(GOOGLECLIENT)" = "y" ]; then \
				sed -i "/RTCONFIG_GOOGLECLIENT/d" $(1); \
				echo "RTCONFIG_GOOGLECLIENT=y" >>$(1); \
			fi; \
			if [ "$(FTPCLIENT)" = "y" ]; then \
				sed -i "/RTCONFIG_FTPCLIENT/d" $(1); \
				echo "RTCONFIG_FTPCLIENT=y" >>$(1); \
			fi; \
			if [ "$(SAMBACLIENT)" = "y" ]; then \
				sed -i "/RTCONFIG_SAMBACLIENT/d" $(1); \
				echo "RTCONFIG_SAMBACLIENT=y" >>$(1); \
			fi; \
			if [ "$(USBCLIENT)" = "y" ]; then \
				sed -i "/RTCONFIG_USBCLIENT/d" $(1); \
				echo "RTCONFIG_USBCLIENT=y" >>$(1); \
			fi; \
			if [ "$(FLICKRCLIENT)" = "y" ]; then \
				sed -i "/RTCONFIG_FLICKRCLIENT/d" $(1); \
				echo "RTCONFIG_FLICKRCLIENT=y" >>$(1); \
			fi; \
			if [ "$(CLOUDSYNC)" = "y" ]; then \
				sed -i "/RTCONFIG_CLOUDSYNC/d" $(1); \
				echo "RTCONFIG_CLOUDSYNC=y" >>$(1); \
			fi; \
		fi; \
		if [ "$(MODEM)" = "y" ]; then \
			sed -i "/RTCONFIG_USB_MODEM/d" $(1); \
			echo "RTCONFIG_USB_MODEM=y" >>$(1); \
			if [ "$(MODEMPIN)" = "n" ]; then \
				echo "# RTCONFIG_USB_MODEM_PIN is not set" >>$(1); \
			else \
				echo "RTCONFIG_USB_MODEM_PIN=y" >>$(1); \
			fi; \
			if [ "$(BECEEM)" = "y" ]; then \
				sed -i "/RTCONFIG_USB_BECEEM/d" $(1); \
				echo "RTCONFIG_USB_BECEEM=y" >>$(1); \
			fi; \
			if [ "$(GOBI)" = "y" ]; then \
				sed -i "/RTCONFIG_INTERNAL_GOBI/d" $(1); \
				echo "RTCONFIG_INTERNAL_GOBI=y" >>$(1); \
			fi; \
			if [ "$(LESSMODEM)" = "y" ]; then \
				sed -i "/RTCONFIG_USB_LESSMODEM/d" $(1); \
				echo "RTCONFIG_USB_LESSMODEM=y" >>$(1); \
			fi; \
			if [ "$(DYNMODEM)" = "y" ]; then \
				sed -i "/RTCONFIG_DYN_MODEM/d" $(1); \
				echo "RTCONFIG_DYN_MODEM=y" >>$(1); \
			fi; \
			if [ "$(USBSMS)" = "y" ]; then \
				sed -i "/RTCONFIG_USB_SMS_MODEM/d" $(1); \
				echo "RTCONFIG_USB_SMS_MODEM=y" >>$(1); \
			fi; \
			if [ "$(MULTIMODEM)" = "y" ]; then \
				sed -i "/RTCONFIG_USB_MULTIMODEM/d" $(1); \
				echo "RTCONFIG_USB_MULTIMODEM=y" >>$(1); \
			fi; \
			if [ "$(MODEMBRIDGE)" = "y" ]; then \
				sed -i "/RTCONFIG_MODEM_BRIDGE/d" $(1); \
				echo "RTCONFIG_MODEM_BRIDGE=y" >>$(1); \
			fi; \
		fi; \
		if [ "$(PRINTER)" = "y" ]; then \
			sed -i "/RTCONFIG_USB_PRINTER/d" $(1); \
			echo "RTCONFIG_USB_PRINTER=y" >>$(1); \
		fi; \
		if [ "$(WEBDAV)" = "y" ]; then \
			sed -i "/RTCONFIG_WEBDAV/d" $(1); \
			echo "RTCONFIG_WEBDAV=y" >>$(1); \
		fi; \
		if [ "$(USBAP)" = "y" ]; then \
			sed -i "/RTCONFIG_BRCM_USBAP/d" $(1); \
			echo "RTCONFIG_BRCM_USBAP=y" >>$(1); \
			if [ "$(BUILD_NAME)" != "RT-AC53U" ]; then \
				sed -i "/EPI_VERSION_NUM/d" include/epivers.h; \
				sed -i "/#endif \/\* _epivers_h_ \*\//d" include/epivers.h; \
				echo "#define	EPI_VERSION_NUM		$(DONGLE_VER)" >>include/epivers.h; \
				echo "#endif /* _epivers_h_ */" >>include/epivers.h; \
			fi; \
		fi; \
		if [ "$(XHCI)" = "y" ]; then \
			sed -i "/RTCONFIG_USB_XHCI/d" $(1); \
			echo "RTCONFIG_USB_XHCI=y" >>$(1); \
		fi; \
	else \
		sed -i "/RTCONFIG_USB\b/d" $(1); \
		echo "# RTCONFIG_USB is not set" >>$(1); \
	fi; \
	if [ "$(HTTPS)" = "y" ]; then \
		sed -i "/RTCONFIG_HTTPS/d" $(1); \
		echo "RTCONFIG_HTTPS=y" >>$(1); \
	fi; \
	if [ "$(USBRESET)" = "y" ]; then \
		sed -i "/RTCONFIG_USBRESET/d" $(1); \
		echo "RTCONFIG_USBRESET=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_USBRESET/d" $(1); \
		echo "# RTCONFIG_USBRESET is not set" >>$(1); \
	fi; \
	if [ "$(WIFIPWR)" = "y" ]; then \
		sed -i "/RTCONFIG_WIFIPWR/d" $(1); \
		echo "RTCONFIG_WIFIPWR=y" >>$(1); \
	fi; \
	if [ "$(XHCIMODE)" = "y" ]; then \
		sed -i "/RTCONFIG_XHCIMODE/d" $(1); \
		echo "RTCONFIG_XHCIMODE=y" >>$(1); \
	fi; \
	if [ "$(NO_SAMBA)" = "y" ]; then \
		sed -i "/RTCONFIG_SAMBASRV/d" $(1); \
		echo "# RTCONFIG_SAMBASRV is not set" >>$(1); \
	fi; \
	if [ "$(NO_FTP)" = "y" ]; then \
		sed -i "/RTCONFIG_FTP/d" $(1); \
		echo "# RTCONFIG_FTP is not set" >>$(1); \
	fi; \
	if [ "$(NO_USBSTORAGE)" = "y" ]; then \
		sed -i "/RTCONFIG_SAMBASRV/d" $(1); \
		echo "# RTCONFIG_SAMBASRV is not set" >>$(1); \
		sed -i "/RTCONFIG_FTP/d" $(1); \
		echo "# RTCONFIG_FTP is not set" >>$(1); \
	fi; \
	if [ "$(ZEBRA)" = "y" ]; then \
		sed -i "/RTCONFIG_ZEBRA/d" $(1); \
		echo "RTCONFIG_ZEBRA=y" >>$(1); \
	fi; \
	if [ "$(JFFS2)" = "y" ]; then \
		sed -i "/RTCONFIG_JFFS2/d" $(1); \
		echo "RTCONFIG_JFFS2=y" >>$(1); \
	fi; \
	if [ "$(BRCM_NAND_JFFS2)" = "y" ]; then \
		sed -i "/RTCONFIG_BRCM_NAND_JFFS2/d" $(1); \
		echo "RTCONFIG_BRCM_NAND_JFFS2=y" >>$(1); \
	fi; \
	if [ "$(JFFS_NVRAM)" = "y" ]; then \
		sed -i "/RTCONFIG_JFFS_NVRAM/d" $(1); \
		echo "RTCONFIG_JFFS_NVRAM=y" >>$(1); \
	fi; \
	if [ "$(JFFS1)" = "y" ]; then \
		sed -i "/RTCONFIG_JFFSV1/d" $(1); \
		echo "RTCONFIG_JFFSV1=y" >>$(1); \
	fi; \
	if [ "$(CIFS)" = "y" ]; then \
		sed -i "/RTCONFIG_CIFS/d" $(1); \
		echo "RTCONFIG_CIFS=y" >>$(1); \
		sed -i "/RTCONFIG_AUTODICT/d" $(1); \
		echo "RTCONFIG_AUTODICT=n" >>$(1); \
	fi; \
	if [ "$(SSH)" = "y" ]; then \
		sed -i "/RTCONFIG_SSH/d" $(1); \
		echo "RTCONFIG_SSH=y" >>$(1); \
	fi; \
	if [ "$(NO_LIBOPT)" = "y" ]; then \
		sed -i "/RTCONFIG_OPTIMIZE_SHARED_LIBS/d" $(1); \
		echo "# RTCONFIG_OPTIMIZE_SHARED_LIBS is not set" >>$(1); \
	fi; \
	if [ "$(EBTABLES)" = "y" ]; then \
		sed -i "/RTCONFIG_EBTABLES/d" $(1); \
		echo "RTCONFIG_EBTABLES=y" >>$(1); \
	fi; \
	if [ "$(IPV6SUPP)" = "y" ]; then \
		sed -i "/RTCONFIG_IPV6/d" $(1); \
		echo "RTCONFIG_IPV6=y" >>$(1); \
	fi; \
	if [ "$(IPSEC)" = "y" ] || \
	   [ "$(IPSEC)" = "QUICKSEC" ] || \
	   [ "$(IPSEC)" = "STRONGSWAN" ] ; then \
		sed -i "/RTCONFIG_IPSEC/d" $(1); \
		echo "RTCONFIG_IPSEC=y" >>$(1); \
		for ipsec in $(IPSEC_ID_POOL) ; do \
			sed -i "/RTCONFIG_$${ipsec}\>/d" $(1); \
			if [ "$(IPSEC)" = "$${ipsec}" ] ; then \
				echo "RTCONFIG_$${ipsec}=y" >> $(1); \
				if [ "$(IPSEC_SRVCLI_ONLY)" = "SRV" ]; then \
					sed -i "/RTCONFIG_IPSEC_SERVER/d" $(1); \
					echo "RTCONFIG_IPSEC_SERVER=y" >>$(1); \
					echo "# RTCONFIG_IPSEC_CLIENT is not set" >>$(1); \
				elif [ "$(IPSEC_SRVCLI_ONLY)" = "CLI" ]; then \
					sed -i "/RTCONFIG_IPSEC_CLIENT/d" $(1); \
					echo "RTCONFIG_IPSEC_CLIENT=y" >>$(1); \
					echo "# RTCONFIG_IPSEC_SERVER is not set" >>$(1); \
				else \
					echo "RTCONFIG_IPSEC_SERVER=y" >>$(1); \
					echo "RTCONFIG_IPSEC_CLIENT=y" >>$(1); \
				fi; \
			elif [ "$(IPSEC)" = "y" -a "$${ipsec}" = "STRONGSWAN" ] ; then \
				sed -i "/RTCONFIG_STRONGSWAN/d" $(1); \
				echo "RTCONFIG_STRONGSWAN=y" >>$(1); \
			else \
				echo "# RTCONFIG_$${ipsec} is not set" >> $(1); \
			fi; \
		done; \
	else \
		sed -i "/RTCONFIG_IPSEC/d" $(1); \
		echo "# RTCONFIG_IPSEC is not set" >>$(1); \
		for ipsec in $(IPSEC_ID_POOL) ; do \
			sed -i "/RTCONFIG_$${ipsec}\>/d" $(1); \
			echo "# RTCONFIG_$${ipsec} is not set" >> $(1); \
		done; \
		echo "# RTCONFIG_IPSEC_SERVER is not set" >>$(1); \
		echo "# RTCONFIG_IPSEC_CLIENT is not set" >>$(1); \
	fi; \
	if [ "$(OPENVPN)" = "y" ]; then \
		sed -i "/RTCONFIG_LZO/d" $(1); \
		echo "RTCONFIG_LZO=y" >>$(1); \
		sed -i "/RTCONFIG_OPENVPN/d" $(1); \
		echo "RTCONFIG_OPENVPN=y" >>$(1); \
 	fi; \
	if [ "$(APP)" = "installed" ]; then \
		sed -i "/RTCONFIG_APP_PREINSTALLED/d" $(1); \
		echo "RTCONFIG_APP_PREINSTALLED=y" >>$(1); \
	elif [ "$(APP)" = "network" ]; then \
		sed -i "/RTCONFIG_APP_NETINSTALLED/d" $(1); \
		echo "RTCONFIG_APP_NETINSTALLED=y" >>$(1); \
	fi; \
	if [ "$(STRACE)" = "y" ] ; then \
		sed -i "/RTCONFIG_STRACE/d" $(1); \
		echo "RTCONFIG_STRACE=y" >>$(1); \
	fi; \
	if [ "$(ISP_METER)" = "y" ]; then \
		sed -i "/RTCONFIG_ISP_METER/d" $(1); \
		echo "RTCONFIG_ISP_METER=y" >>$(1); \
	fi; \
	if [ "$(NVRAM_64K)" = "y" ]; then \
		sed -i "/RTCONFIG_NVRAM_64K/d" $(1); \
		echo "RTCONFIG_NVRAM_64K=y" >>$(1); \
	fi; \
	if [ "$(DUAL_TRX)" = "y" ]; then \
		sed -i "/RTCONFIG_DUAL_TRX/d" $(1); \
		echo "RTCONFIG_DUAL_TRX=y" >>$(1); \
	fi; \
	if [ "$(PSISTLOG)" = "y" ]; then \
		sed -i "/RTCONFIG_PSISTLOG/d" $(1); \
		echo "RTCONFIG_PSISTLOG=y" >>$(1); \
	fi; \
	if [ "$(UBI)" = "y" ]; then \
		sed -i "/RTCONFIG_UBI/d" $(1); \
		echo "RTCONFIG_UBI=y" >>$(1); \
		if [ "$(UBIFS)" = "y" ]; then \
			sed -i "/RTCONFIG_UBIFS/d" $(1); \
			echo "RTCONFIG_UBIFS=y" >>$(1); \
			sed -i "/RTCONFIG_JFFS2/d" $(1); \
			echo "# RTCONFIG_JFFS2 is not set" >>$(1); \
			sed -i "/RTCONFIG_JFFSV1/d" $(1); \
			echo "# RTCONFIG_JFFSV1 is not set" >>$(1); \
			sed -i "/RTCONFIG_JFFS2USERICON/d" $(1); \
			echo "RTCONFIG_JFFS2USERICON=y" >>$(1); \
		else \
			sed -i "/RTCONFIG_UBIFS/d" $(1); \
			echo "# RTCONFIG_UBIFS is not set" >>$(1); \
		fi; \
	else \
		sed -i "/RTCONFIG_UBI/d" $(1); \
		echo "# RTCONFIG_UBI is not set" >>$(1); \
		sed -i "/RTCONFIG_UBIFS/d" $(1); \
		echo "# RTCONFIG_UBIFS is not set" >>$(1); \
	fi; \
	if [ "$(UBI)" = "y" ] || [ "$(JFFS2)" = "y" ] ; then \
		if [ "$(SAVEJFFS)" = "y" ] ; then \
			sed -i "/RTCONFIG_SAVEJFFS/d" $(1); \
			echo "RTCONFIG_SAVEJFFS=y" >>$(1); \
		fi; \
	fi; \
	if [ "$(OPTIMIZE_XBOX)" = "y" ]; then \
		sed -i "/RTCONFIG_OPTIMIZE_XBOX/d" $(1); \
		echo "RTCONFIG_OPTIMIZE_XBOX=y" >>$(1); \
	fi; \
	if [ "$(NEW_RGDM)" = "y" ]; then \
		sed -i "/RTCONFIG_NEW_REGULATION_DOMAIN/d" $(1); \
		echo "RTCONFIG_NEW_REGULATION_DOMAIN=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_NEW_REGULATION_DOMAIN/d" $(1); \
		echo "# RTCONFIG_NEW_REGULATION_DOMAIN is not set" >>$(1); \
	fi; \
	if [ "$(DYN_DICT_NAME)" = "y" ]; then \
		sed -i "/RTCONFIG_DYN_DICT_NAME/d" $(1); \
		echo "RTCONFIG_DYN_DICT_NAME=y" >>$(1); \
	fi; \
	if [ "$(DMALLOC)" = "y" ]; then \
		sed -i "/RTCONFIG_DMALLOC/d" $(1); \
		echo "RTCONFIG_DMALLOC=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_DMALLOC/d" $(1); \
		echo "# RTCONFIG_DMALLOC is not set" >>$(1); \
	fi; \
	if [ "$(JFFS2ND_BACKUP)" = "y" ]; then \
		sed -i "/RTCONFIG_JFFS2ND_BACKUP/d" $(1); \
		echo "RTCONFIG_JFFS2ND_BACKUP=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_JFFS2ND_BACKUP/d" $(1); \
		echo "# RTCONFIG_JFFS2ND_BACKUP is not set" >>$(1); \
	fi; \
	if [ "$(TEMPROOTFS)" = "y" ]; then \
		sed -i "/RTCONFIG_TEMPROOTFS/d" $(1); \
		echo "RTCONFIG_TEMPROOTFS=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_TEMPROOTFS/d" $(1); \
		echo "# RTCONFIG_TEMPROOTFS is not set" >>$(1); \
	fi; \
	if [ "$(ATEUSB3_FORCE)" = "y" ]; then \
		sed -i "/RTCONFIG_ATEUSB3_FORCE/d" $(1); \
		echo "RTCONFIG_ATEUSB3_FORCE=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_ATEUSB3_FORCE/d" $(1); \
		echo "# RTCONFIG_ATEUSB3_FORCE is not set" >>$(1); \
	fi; \
	if [ "$(JFFS2LOG)" = "y" ]; then \
		sed -i "/RTCONFIG_JFFS2LOG/d" $(1); \
		echo "RTCONFIG_JFFS2LOG=y" >>$(1); \
		sed -i "/RTCONFIG_JFFS2USERICON/d" $(1); \
		echo "RTCONFIG_JFFS2USERICON=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_JFFS2LOG/d" $(1); \
		echo "# RTCONFIG_JFFS2LOG is not set" >>$(1); \
		if [ "$(UBIFS)" = "y" ]; then \
			sed -i "/RTCONFIG_JFFS2USERICON/d" $(1); \
			echo "RTCONFIG_JFFS2USERICON=y" >>$(1); \
		else \
			sed -i "/RTCONFIG_JFFS2USERICON/d" $(1); \
			echo "# RTCONFIG_JFFS2USERICON is not set" >>$(1); \
		fi; \
	fi; \
	if [ "$(WPSMULTIBAND)" = "y" ]; then \
		sed -i "/RTCONFIG_WPSMULTIBAND/d" $(1); \
		echo "RTCONFIG_WPSMULTIBAND=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_WPSMULTIBAND/d" $(1); \
		echo "# RTCONFIG_WPSMULTIBAND is not set" >>$(1); \
	fi; \
	if [ "$(RALINK_DFS)" = "y" ]; then \
		sed -i "/RTCONFIG_RALINK_DFS/d" $(1); \
		echo "RTCONFIG_RALINK_DFS=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_RALINK_DFS/d" $(1); \
		echo "# RTCONFIG_RALINK_DFS is not set" >>$(1); \
	fi; \
	if [ "$(EM)" = "y" ]; then \
		sed -i "/RTCONFIG_ENGINEERING_MODE/d" $(1); \
		echo "RTCONFIG_ENGINEERING_MODE=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_ENGINEERING_MODE/d" $(1); \
		echo "# RTCONFIG_ENGINEERING_MODE is not set" >>$(1); \
	fi; \
	if [ "$(VPNC)" = "y" ]; then \
		sed -i "/RTCONFIG_VPNC/d" $(1); \
		echo "RTCONFIG_VPNC=y" >>$(1); \
	fi; \
	if [ "$(KYIVSTAR)" = "y" ]; then \
		sed -i "/RTCONFIG_KYIVSTAR/d" $(1); \
		echo "RTCONFIG_KYIVSTAR=y" >>$(1); \
	fi; \
	if [ "$(TFTPSRV)" = "y" ]; then \
		sed -i "/RTCONFIG_TFTP_SERVER/d" $(1); \
		echo "RTCONFIG_TFTP_SERVER=y" >>$(1); \
	fi; \
	if [ "$(ETRON_XHCI)" = "y" ]; then \
		sed -i "/RTCONFIG_ETRON_XHCI\>/d" $(1); \
		echo "RTCONFIG_ETRON_XHCI=y" >>$(1); \
		if [ "$(ETRON_XHCI_USB3_LED)" = "y" ]; then \
			sed -i "/RTCONFIG_ETRON_XHCI_USB3_LED/d" $(1); \
			echo "RTCONFIG_ETRON_XHCI_USB3_LED=y" >>$(1); \
		else \
			sed -i "/RTCONFIG_ETRON_XHCI_USB3_LED/d" $(1); \
			echo "# RTCONFIG_ETRON_XHCI_USB3_LED is not set" >>$(1); \
		fi; \
	fi; \
	if [ "$(WANPORT2)" = "y" ]; then \
		sed -i "/RTCONFIG_WANPORT2/d" $(1); \
		echo "RTCONFIG_WANPORT2=y" >>$(1); \
	fi; \
	if [ "$(MTWANCFG)" = "y" ]; then \
		sed -i "/RTCONFIG_MULTIWAN_CFG/d" $(1); \
		echo "RTCONFIG_MULTIWAN_CFG=y" >>$(1); \
	fi; \
	if [ "$(WPS_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_WPS_LED/d" $(1); \
		echo "RTCONFIG_WPS_LED=y" >>$(1); \
	fi; \
	if [ "$(WANRED_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_WANRED_LED/d" $(1); \
		echo "RTCONFIG_WANRED_LED=y" >>$(1); \
	fi; \
	if [ "$(PWRRED_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_PWRRED_LED/d" $(1); \
		echo "RTCONFIG_PWRRED_LED=y" >>$(1); \
	fi; \
	if [ "$(FO_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_FAILOVER_LED/d" $(1); \
		echo "RTCONFIG_FAILOVER_LED=y" >>$(1); \
	fi; \
	if [ "$(BLINK_LED)" = "y" ]; then \
		sed -i "/RTCONFIG_BLINK_LED/d" $(1); \
		echo "RTCONFIG_BLINK_LED=y" >>$(1); \
	fi; \
	if [ "$(EJUSB_BTN)" = "y" ]; then \
		sed -i "/RTCONFIG_EJUSB_BTN/d" $(1); \
		echo "RTCONFIG_EJUSB_BTN=y" >>$(1); \
	fi; \
	if [ "$(M2_SSD)" = "y" ]; then \
		sed -i "/RTCONFIG_M2_SSD/d" $(1); \
		echo "RTCONFIG_M2_SSD=y" >>$(1); \
	fi; \
	if [ "$(WIGIG)" = "y" ]; then \
		sed -i "/RTCONFIG_WIGIG/d" $(1); \
		echo "RTCONFIG_WIGIG=y" >>$(1); \
	fi; \
	if [ "$(ATF)" = "y" ]; then \
		sed -i "/RTCONFIG_AIR_TIME_FAIRNESS/d" $(1); \
		echo "RTCONFIG_AIR_TIME_FAIRNESS=y" >>$(1); \
	fi; \
	if [ "$(PWRSAVE)" = "y" ]; then \
		sed -i "/RTCONFIG_POWER_SAVE/d" $(1); \
		echo "RTCONFIG_POWER_SAVE=y" >>$(1); \
	fi; \
	if [ "$(CFE_NVRAM_CHK)" = "y" ]; then \
		sed -i "/RTCONFIG_CFE_NVRAM_CHK/d" $(1); \
		echo "RTCONFIG_CFE_NVRAM_CHK=y" >>$(1); \
	fi; \
	if [ "$(LLDP)" = "y" ]; then \
		sed -i "/RTCONFIG_LLDP/d" $(1); \
		echo "RTCONFIG_LLDP=y" >>$(1); \
	fi; \
	if [ "$(DEBUG)" = "y" ]; then \
		sed -i "/RTCONFIG_DEBUG/d" $(1); \
		echo "RTCONFIG_DEBUG=y" >>$(1); \
		sed -i "/RTCONFIG_GDB/d" $(1); \
		echo "RTCONFIG_GDB=y" >>$(1); \
	fi; \
	if [ "$(UIDEBUG)" = "y" ]; then \
		sed -i "/RTCONFIG_UIDEBUG/d" $(1); \
		echo "RTCONFIG_UIDEBUG=y" >>$(1); \
		sed -i "/RTCONFIG_CIFS/d" $(1); \
		echo "RTCONFIG_CIFS=y" >>$(1); \
		sed -i "/RTCONFIG_AUTODICT/d" $(1); \
		echo "# RTCONFIG_AUTODICT is not set" >>$(1); \
	fi; \
	if [ "$(ROG)" = "y" ]; then \
		sed -i "/RTCONFIG_ROG/d" $(1); \
		echo "RTCONFIG_ROG=y" >>$(1); \
	fi; \
	if [ "$(GEOIP)" = "y" ]; then \
		sed -i "/RTCONFIG_GEOIP/d" $(1); \
		echo "RTCONFIG_GEOIP=y" >>$(1); \
	fi; \
	if [ "$(TRANSMISSION)" = "y" ]; then \
		sed -i "/RTCONFIG_TRANSMISSION/d" $(1); \
		echo "RTCONFIG_TRANSMISSION=y" >>$(1); \
	fi; \
	if [ "$(SINGLE_2G)" = "y" ]; then \
		sed -i "/RTCONFIG_HAS_5G\>/d" $(1); \
		echo "# RTCONFIG_HAS_5G is not set" >>$(1); \
	fi; \
	if [ "$(HAS_5G_2)" = "y" ]; then \
		sed -i "/RTCONFIG_HAS_5G_2\>/d" $(1); \
		echo "RTCONFIG_HAS_5G_2=y" >>$(1); \
	fi; \
	if [ "$(TFTP)" = "y" ]; then \
		sed -i "/RTCONFIG_TFTP\>/d" $(1); \
		echo "RTCONFIG_TFTP=y" >>$(1); \
	fi; \
	if [ "$(QTN)" = "y" ]; then \
		sed -i "/RTCONFIG_QTN/d" $(1); \
		echo "RTCONFIG_QTN=y" >>$(1); \
	fi; \
	if [ "$(LACP)" = "y" ]; then \
		sed -i "/RTCONFIG_LACP/d" $(1); \
		echo "RTCONFIG_LACP=y" >>$(1); \
	fi; \
	if [ "$(BCM_RECVFILE)" = "y" ] && [ "$(HND_ROUTER)" != "y" ]; then \
		sed -i "/RTCONFIG_RECVFILE/d" $(1); \
		echo "RTCONFIG_RECVFILE=y" >>$(1); \
	fi; \
	if [ "$(RGMII_BRCM5301X)" = "y" ]; then \
		sed -i "/RTCONFIG_RGMII_BRCM5301X/d" $(1); \
		echo "RTCONFIG_RGMII_BRCM5301X=y" >>$(1); \
	fi; \
	if [ "$(WPS_DUALBAND)" = "y" ]; then \
		sed -i "/RTCONFIG_WPS_DUALBAND/d" $(1); \
		echo "RTCONFIG_WPS_DUALBAND=y" >>$(1); \
	fi; \
	if [ "$(WIFICLONE)" = "y" ]; then \
		sed -i "/RTCONFIG_WPS_ENROLLEE/d" $(1); \
		echo "RTCONFIG_WPS_ENROLLEE=y" >>$(1); \
		sed -i "/RTCONFIG_WIFI_CLONE/d" $(1); \
		echo "RTCONFIG_WIFI_CLONE=y" >>$(1); \
	fi; \
	if [ "$(N18UTXBF)" = "y" ]; then \
		sed -i "/RTCONFIG_N18UTXBF/d" $(1); \
		echo "RTCONFIG_N18UTXBF=y" >>$(1); \
	fi; \
	if [ "$(BWDPI)" = "y" ]; then \
		sed -i "/RTCONFIG_BWDPI\>/d" $(1); \
		echo "RTCONFIG_BWDPI=y" >>$(1); \
		sed -i "/RTCONFIG_NOTIFICATION_CENTER/d" $(1); \
		echo "RTCONFIG_NOTIFICATION_CENTER=y" >>$(1); \
	fi; \
	if [ "$(NOTIFICATION_CENTER)" = "y" ]; then \
		sed -i "/RTCONFIG_NOTIFICATION_CENTER/d" $(1); \
		echo "RTCONFIG_NOTIFICATION_CENTER=y" >>$(1); \
	fi; \
	if [ "$(PROTECTION_SERVER)" = "y" ]; then \
		sed -i "/RTCONFIG_PROTECTION_SERVER/d" $(1); \
		echo "RTCONFIG_PROTECTION_SERVER=y" >>$(1); \
	fi; \
	if [ "$(WLCEVENTD)" = "y" ] || [ "$(CONFIG_BCMWL5)" = "y" ]; then \
		sed -i "/RTCONFIG_WLCEVENTD/d" $(1); \
		echo "RTCONFIG_WLCEVENTD=y" >>$(1); \
	fi; \
	if [ "$(FBT)" = "y" ]; then \
		sed -i "/RTCONFIG_FBT/d" $(1); \
		echo "RTCONFIG_FBT=y" >>$(1); \
	fi; \
	if [ "$(HAPDEVENT)" = "y" ] || [ "$(CONFIG_LANTIQ)" = "y" ]; then \
		sed -i "/RTCONFIG_HAPDEVENT/d" $(1); \
		echo "RTCONFIG_HAPDEVENT=y" >>$(1); \
	fi; \
	if [ "$(ADBLOCK)" = "y" ]; then \
		sed -i "/RTCONFIG_ADBLOCK/d" $(1); \
		echo "RTCONFIG_ADBLOCK=y" >>$(1); \
	fi; \
	if [ "$(TRAFFIC_LIMITER)" = "y" ]; then \
		sed -i "/RTCONFIG_TRAFFIC_LIMITER/d" $(1); \
		echo "RTCONFIG_TRAFFIC_LIMITER=y" >>$(1); \
		sed -i "/RTCONFIG_NOTIFICATION_CENTER/d" $(1); \
		echo "RTCONFIG_NOTIFICATION_CENTER=y" >>$(1); \
	fi; \
	if [ "$(BCM5301X_TRAFFIC_MONITOR)" = "y" ]; then \
		sed -i "/RTCONFIG_BCM5301X_TRAFFIC_MONITOR/d" $(1); \
		echo "RTCONFIG_BCM5301X_TRAFFIC_MONITOR=y" >>$(1); \
	fi; \
	if [ "$(SPEEDTEST)" = "y" ]; then \
		sed -i "/RTCONFIG_SPEEDTEST/d" $(1); \
		echo "RTCONFIG_SPEEDTEST=y" >>$(1); \
	fi; \
	if [ "$(BCM_7114)" = "y" ]; then \
		sed -i "/RTCONFIG_BCM_7114/d" $(1); \
		echo "RTCONFIG_BCM_7114=y" >>$(1); \
		sed -i "/RTCONFIG_BCMBSD/d" $(1); \
		echo "RTCONFIG_BCMBSD=y" >>$(1); \
		sed -i "/RTCONFIG_WLEXE/d" $(1); \
		echo "RTCONFIG_WLEXE=y" >>$(1); \
	fi; \
	if [ "$(GMAC3)" = "y" ]; then \
		sed -i "/RTCONFIG_GMAC3/d" $(1); \
		echo "RTCONFIG_GMAC3=y" >>$(1); \
		sed -i "/RTCONFIG_BCMFA/d" $(1); \
		echo "# RTCONFIG_BCMFA is not set" >>$(1); \
	fi; \
	if [ "$(BCM9)" = "y" ]; then \
		sed -i "/RTCONFIG_BCM9/d" $(1); \
		echo "RTCONFIG_BCM9=y" >>$(1); \
		sed -i "/RTCONFIG_WLEXE/d" $(1); \
		echo "RTCONFIG_WLEXE=y" >>$(1); \
	fi; \
	if [ "$(BCM7)" = "y" ]; then \
		sed -i "/RTCONFIG_BCM7/d" $(1); \
		echo "RTCONFIG_BCM7=y" >>$(1); \
		sed -i "/RTCONFIG_TOAD/d" $(1); \
		echo "RTCONFIG_TOAD=y" >>$(1); \
		sed -i "/RTCONFIG_BCMBSD/d" $(1); \
		echo "RTCONFIG_BCMBSD=y" >>$(1); \
		sed -i "/RTCONFIG_GMAC3/d" $(1); \
		echo "# RTCONFIG_GMAC3 is not set" >>$(1); \
	fi; \
	if [ "$(HND_ROUTER)" = "y" ]; then \
		sed -i "/RTCONFIG_HND_ROUTER/d" $(1); \
		echo "RTCONFIG_HND_ROUTER=y" >>$(1); \
		sed -i "/RTCONFIG_EMF/d" $(1); \
		echo "RTCONFIG_EMF=y" >>$(1); \
		sed -i "/RTCONFIG_BCMBSD/d" $(1); \
		echo "RTCONFIG_BCMBSD=y" >>$(1); \
		sed -i "/RTCONFIG_LBR_AGGR/d" $(1); \
		echo "RTCONFIG_LBR_AGGR=y" >>$(1); \
		sed -i "/RTCONFIG_WLEXE/d" $(1); \
		echo "RTCONFIG_WLEXE=y" >>$(1); \
		sed -i "/RTCONFIG_HNDMFG/d" $(1); \
		if [ "$(HND_MFG)" = "y" ]; then \
			echo "RTCONFIG_HNDMFG=y" >>$(1); \
		else \
			echo "# RTCONFIG_HNDMFG is not set" >>$(1); \
		fi; \
		sed -i "/RTCONFIG_VISUALIZATION/d" $(1); \
		if [ "$(VISUALIZATION)" = "y" ]; then \
			echo "RTCONFIG_VISUALIZATION=y" >>$(1); \
		else \
			echo "# RTCONFIG_VISUALIZATION is not set" >>$(1); \
		fi; \
		if [ "$(DFS_US)" = "y" ]; then \
			echo "RTCONFIG_DFS_US=y" >>$(1); \
		else \
			echo "# RTCONFIG_DFS_US is not set" >>$(1); \
		fi; \
	fi; \
	if [ "$(HND_ROUTER_F1)" = "y" ]; then \
		sed -i "/RTCONFIG_WBD/d" $(1); \
		echo "RTCONFIG_WBD=y" >>$(1); \
	fi; \
	if [ "$(BUILD_BCM7)" = "y" ]; then \
		sed -i "/RTCONFIG_BUILDBCM7/d" $(1); \
		echo "RTCONFIG_BUILDBCM7=y" >>$(1); \
	fi; \
	if [ "$(DHDAP)" = "y" ]; then \
		sed -i "/RTCONFIG_DHDAP/d" $(1); \
		echo "RTCONFIG_DHDAP=y" >>$(1); \
	fi; \
	if [ "$(DPSTA)" = "y" ]; then \
		sed -i "/RTCONFIG_DPSTA/d" $(1); \
		echo "RTCONFIG_DPSTA=y" >>$(1); \
	fi; \
	if [ "$(ROMCFE)" = "y" ]; then \
		sed -i "/RTCONFIG_ROMCFE/d" $(1); \
		echo "RTCONFIG_ROMCFE=y" >>$(1); \
	fi; \
	if [ "$(ROMCCODE)" = "y" ]; then \
		sed -i "/RTCONFIG_ROMATECCODEFIX/d" $(1); \
		echo "RTCONFIG_ROMATECCODEFIX=y" >>$(1); \
	fi; \
	if [ "$(SSD)" = "y" ]; then \
		sed -i "/RTCONFIG_BCMSSD/d" $(1); \
		echo "RTCONFIG_BCMSSD=y" >>$(1); \
	fi; \
	if [ "$(HSPOT)" = "y" ]; then \
		sed -i "/RTCONFIG_HSPOT/d" $(1); \
		echo "RTCONFIG_HSPOT=y" >>$(1); \
	fi; \
	if [ "$(NVSIZE)" != "" ]; then \
		sed -i "/RTCONFIG_NV$(NVSIZE)/d" $(1); \
		echo "RTCONFIG_NV$(NVSIZE)=y" >>$(1); \
	fi; \
	if [ "$(RALINK)" = "y" ] || [ "$(QCA)" = "y" ]; then \
		if [ "$(NVRAM_SIZE)" != "" ]; then \
			sed -i "/RTCONFIG_NVRAM_SIZE/d" $(1); \
			echo "RTCONFIG_NVRAM_SIZE=`printf 0x%x $(NVRAM_SIZE)`" >>$(1); \
		fi; \
	fi; \
	if [ "$(BONDING)" = "y" ]; then \
		sed -i "/RTCONFIG_BONDING/d" $(1); \
		echo "RTCONFIG_BONDING=y" >>$(1); \
	fi; \
	if [ "$(WIFILOGO)" = "y" ]; then \
		sed -i "/RTCONFIG_WIFILOGO/d" $(1); \
		echo "RTCONFIG_WIFILOGO=y" >>$(1); \
	fi; \
	if [ "$(JFFS2USERICON)" = "y" ]; then \
		sed -i "/RTCONFIG_JFFS2USERICON/d" $(1); \
		echo "RTCONFIG_JFFS2USERICON=y" >>$(1); \
	fi; \
	if [ "$(SWITCH2)" = "RTL8365MB" ]; then \
		sed -i "/RTCONFIG_EXT_RTL8370MB/d" $(1); \
		echo "# RTCONFIG_EXT_RTL8370MB is not set" >>$(1); \
		sed -i "/RTCONFIG_EXT_RTL8365MB/d" $(1); \
		echo "RTCONFIG_EXT_RTL8365MB=y" >>$(1); \
	else \
	if [ "$(SWITCH2)" = "RTL8370MB" ]; then \
		sed -i "/RTCONFIG_EXT_RTL8365MB/d" $(1); \
		echo "# RTCONFIG_EXT_RTL8365MB is not set" >>$(1); \
		sed -i "/RTCONFIG_EXT_RTL8370MB/d" $(1); \
		echo "RTCONFIG_EXT_RTL8370MB=y" >>$(1); \
	else \
	if [ "$(SWITCH2)" = "BCM53134" ]; then \
		sed -i "/RTCONFIG_EXT_BCM53134/d" $(1); \
		echo "# RTCONFIG_EXT_BCM53134 is not set" >>$(1); \
		sed -i "/RTCONFIG_EXT_BCM53134/d" $(1); \
		echo "RTCONFIG_EXT_BCM53134=y" >>$(1); \
	else \
	if [ "$(SWITCH2)" = "" ]; then \
		sed -i "/RTCONFIG_EXT_RTL8365MB/d" $(1); \
		echo "# RTCONFIG_EXT_RTL8365MB is not set" >>$(1); \
		sed -i "/RTCONFIG_EXT_RTL8370MB/d" $(1); \
		echo "# RTCONFIG_EXT_RTL8370MB is not set" >>$(1); \
	fi; \
	fi; \
	fi; \
	fi; \
	if [ "$(TOR)" = "y" ]; then \
		sed -i "/RTCONFIG_TOR/d" $(1); \
		echo "RTCONFIG_TOR=y" >>$(1); \
	fi; \
	if [ "$(CFEZ)" = "y" ]; then \
		sed -i "/RTCONFIG_CFEZ/d" $(1); \
		echo "RTCONFIG_CFEZ=y" >>$(1); \
	fi; \
	if [ "$(TR069)" = "y" ]; then \
		sed -i "/RTCONFIG_TR069/d" $(1); \
		echo "RTCONFIG_TR069=y" >>$(1); \
	fi; \
	if [ "$(TR181)" = "y" ]; then \
		sed -i "/RTCONFIG_TR181/d" $(1); \
		echo "RTCONFIG_TR181=y" >>$(1); \
	fi; \
	if [ "$(STAINFO)" = "y" ]; then \
		sed -i "/RTCONFIG_STAINFO/d" $(1); \
		echo "RTCONFIG_STAINFO=y" >>$(1); \
	fi; \
	if [ "$(CLOUDCHECK)" = "y" ]; then \
		sed -i "/RTCONFIG_CLOUDCHECK/d" $(1); \
		echo "RTCONFIG_CLOUDCHECK=y" >>$(1); \
	fi; \
	if [ "$(GETREALIP)" = "y" ]; then \
		sed -i "/RTCONFIG_GETREALIP/d" $(1); \
		echo "RTCONFIG_GETREALIP=y" >>$(1); \
	fi; \
	if [ "$(BCM_MMC)" = "y" ]; then \
		sed -i "/RTCONFIG_MMC_LED/d" $(1); \
		echo "RTCONFIG_MMC_LED=y" >>$(1); \
	fi; \
	if [ "$(NATNL)" = "y" ]; then \
		sed -i "/RTCONFIG_TUNNEL/d" $(1); \
		echo "RTCONFIG_TUNNEL=y" >>$(1); \
 	fi; \
	if [ "$(NATNL_AICLOUD)" = "y" ]; then \
		sed -i "/RTCONFIG_TUNNEL/d" $(1); \
		echo "RTCONFIG_TUNNEL=y" >>$(1); \
		sed -i "/RTCONFIG_AICLOUD_TUNNEL/d" $(1); \
		echo "RTCONFIG_AICLOUD_TUNNEL=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_AICLOUD_TUNNEL/d" $(1); \
		echo "# RTCONFIG_AICLOUD_TUNNEL is not set" >>$(1); \
	fi; \
	if [ "$(NATNL_AIHOME)" = "y" ]; then \
		sed -i "/RTCONFIG_TUNNEL/d" $(1); \
		echo "RTCONFIG_TUNNEL=y" >>$(1); \
		sed -i "/RTCONFIG_AIHOME_TUNNEL/d" $(1); \
		echo "RTCONFIG_AIHOME_TUNNEL=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_AIHOME_TUNNEL/d" $(1); \
		echo "# RTCONFIG_AIHOME_TUNNEL is not set" >>$(1); \
	fi; \
	if [ "$(ERPTEST)" = "y" ]; then \
		sed -i "/RTCONFIG_ERP_TEST/d" $(1); \
		echo "RTCONFIG_ERP_TEST=y" >>$(1); \
	fi; \
	if [ "$(RESET_SWITCH)" = "y" ]; then \
		sed -i "/RTCONFIG_RESET_SWITCH/d" $(1); \
		echo "RTCONFIG_RESET_SWITCH=y" >>$(1); \
	fi; \
	if [ "$(DEF_AP)" = "y" ]; then \
		sed -i "/RTCONFIG_DEFAULT_AP_MODE/d" $(1); \
		echo "RTCONFIG_DEFAULT_AP_MODE=y" >>$(1); \
	fi; \
	if [ "$(DEF_REPEATER)" = "y" ]; then \
		sed -i "/RTCONFIG_DEFAULT_REPEATER_MODE/d" $(1); \
		echo "RTCONFIG_DEFAULT_REPEATER_MODE=y" >>$(1); \
	fi; \
	if [ "$(DHCP_OVERRIDE)" = "y" ]; then \
		sed -i "/RTCONFIG_DHCP_OVERRIDE/d" $(1); \
		echo "RTCONFIG_DHCP_OVERRIDE=y" >>$(1); \
	fi; \
	if [ "$(RES_GUI)" = "y" ]; then \
		sed -i "/RTCONFIG_RESTRICT_GUI/d" $(1); \
		echo "RTCONFIG_RESTRICT_GUI=y" >>$(1); \
	fi; \
	if [ "$(KEY_GUARD)" = "y" ]; then \
		sed -i "/RTCONFIG_KEY_GUARD/d" $(1); \
		echo "RTCONFIG_KEY_GUARD=y" >>$(1); \
	fi; \
	if [ "$(WTFAST)" = "y" ]; then \
		sed -i "/RTCONFIG_WTFAST/d" $(1); \
		echo "RTCONFIG_WTFAST=y" >>$(1); \
	fi; \
	if [ "$(IFTTT)" = "y" ]; then \
		sed -i "/RTCONFIG_IFTTT/d" $(1); \
		echo "RTCONFIG_IFTTT=y" >>$(1); \
		sed -i "/RTCONFIG_TUNNEL/d" $(1); \
		echo "RTCONFIG_TUNNEL=y" >>$(1); \
		sed -i "/RTCONFIG_AIHOME_TUNNEL/d" $(1); \
		echo "RTCONFIG_AIHOME_TUNNEL=y" >>$(1); \
	fi; \
	if [ "$(ALEXA)" = "y" ]; then \
		sed -i "/RTCONFIG_ALEXA/d" $(1); \
		echo "RTCONFIG_ALEXA=y" >>$(1); \
		sed -i "/RTCONFIG_TUNNEL/d" $(1); \
		echo "RTCONFIG_TUNNEL=y" >>$(1); \
		sed -i "/RTCONFIG_AIHOME_TUNNEL/d" $(1); \
		echo "RTCONFIG_AIHOME_TUNNEL=y" >>$(1); \
	fi; \
	if [ "$(REBOOT_SCHEDULE)" = "y" ]; then \
		sed -i "/RTCONFIG_REBOOT_SCHEDULE/d" $(1); \
		echo "RTCONFIG_REBOOT_SCHEDULE=y" >>$(1); \
	fi; \
	if [ "$(CAPTIVE_PORTAL)" = "y" ]; then \
		sed -i "/RTCONFIG_CAPTIVE_PORTAL/d" $(1); \
		echo "RTCONFIG_CAPTIVE_PORTAL=y" >>$(1); \
		sed -i "/RTCONFIG_COOVACHILLI/d" $(1); \
		echo "RTCONFIG_COOVACHILLI=y" >>$(1); \
		sed -i "/RTCONFIG_FREERADIUS/d" $(1); \
		echo "RTCONFIG_FREERADIUS=y" >>$(1); \
		if [ "$(CP_FREEWIFI)" = "y" ]; then \
			sed -i "/RTCONFIG_CP_FREEWIFI/d" $(1); \
			echo "RTCONFIG_CP_FREEWIFI=y" >>$(1); \
		else \
			sed -i "/RTCONFIG_CP_FREEWIFI/d" $(1); \
			echo "# RTCONFIG_CP_FREEWIFI is not set" >>$(1); \
		fi; \
		if [ "$(CP_ADVANCED)" = "y" ]; then \
			sed -i "/RTCONFIG_CP_ADVANCED/d" $(1); \
			echo "RTCONFIG_CP_ADVANCED=y" >>$(1); \
		else \
			sed -i "/RTCONFIG_CP_ADVANCED/d" $(1); \
			echo "# RTCONFIG_CP_ADVANCED is not set" >>$(1); \
		fi; \
	else \
		if [ "$(CHILLISPOT)" = "y" ]; then \
			sed -i "/RTCONFIG_CHILLISPOT/d" $(1); \
			echo "RTCONFIG_CHILLISPOT=y" >>$(1); \
		fi; \
		if [ "$(FREERADIUS)" = "y" ]; then \
			sed -i "/RTCONFIG_FREERADIUS/d" $(1); \
			echo "RTCONFIG_FREERADIUS=y" >>$(1); \
		fi; \
	fi; \
	if [ "$(FBWIFI)" = "y" ]; then \
		sed -i "/RTCONFIG_FBWIFI/d" $(1); \
		echo "RTCONFIG_FBWIFI=y" >>$(1); \
	fi; \
	if [ "$(FORCE_AUTO_UPGRADE)" = "y" ]; then \
		sed -i "/RTCONFIG_FORCE_AUTO_UPGRADE/d" $(1); \
		echo "RTCONFIG_FORCE_AUTO_UPGRADE=y" >>$(1); \
	fi; \
	if [ "$(TUXERA_SMBD)" = "y" ]; then \
		sed -i "/RTCONFIG_TUXERA_SMBD/d" $(1); \
		echo "RTCONFIG_TUXERA_SMBD=y" >>$(1); \
	fi; \
	if [ "$(QUAGGA)" = "y" ]; then \
		sed -i "/RTCONFIG_QUAGGA/d" $(1); \
		echo "RTCONFIG_QUAGGA=y" >>$(1); \
	fi; \
	if [ "$(ASPMD)" = "y" ]; then \
		sed -i "/RTCONFIG_BCMASPMD/d" $(1); \
		echo "RTCONFIG_BCMASPMD=y" >>$(1); \
	fi; \
	if [ "$(BCMEVENTD)" = "y" ]; then \
		sed -i "/RTCONFIG_BCMEVENTD/d" $(1); \
		echo "RTCONFIG_BCMEVENTD=y" >>$(1); \
	fi; \
	if [ "$(BCM_MEVENT)" = "y" ]; then \
		sed -i "/RTCONFIG_BCM_MEVENT/d" $(1); \
		echo "RTCONFIG_BCM_MEVENT=y" >>$(1); \
	fi; \
	if [ "$(BCM_APPEVENTD)" = "y" ]; then \
		sed -i "/RTCONFIG_BCM_APPEVENTD/d" $(1); \
		echo "RTCONFIG_BCM_APPEVENTD=y" >>$(1); \
	fi; \
	if [ "$(WLCLMLOAD)" = "y" ]; then \
		sed -i "/RTCONFIG_WLCLMLOAD/d" $(1); \
		echo "RTCONFIG_WLCLMLOAD=y" >>$(1); \
	fi; \
	if [ "$(BCM_MUMIMO)" = "y" ] || [ "$(MTK_MUMIMO)" = "y" ]; then \
		sed -i "/RTCONFIG_MUMIMO/d" $(1); \
		echo "RTCONFIG_MUMIMO=y" >>$(1); \
	fi; \
	if [ "$(MUMIMO_5G)" = "y" ]; then \
		sed -i "/RTCONFIG_MUMIMO_5G/d" $(1); \
		echo "RTCONFIG_MUMIMO_5G=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_MUMIMO_5G/d" $(1); \
		echo "# RTCONFIG_MUMIMO_5G is not set" >>$(1); \
	fi; \
	if [ "$(MUMIMO_2G)" = "y" ]; then \
		sed -i "/RTCONFIG_MUMIMO_2G/d" $(1); \
		echo "RTCONFIG_MUMIMO_2G=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_MUMIMO_2G/d" $(1); \
		echo "# RTCONFIG_MUMIMO_2G is not set" >>$(1); \
	fi; \
	if [ "$(QAM256_2G)" = "y" ]; then \
		sed -i "/RTCONFIG_QAM256_2G/d" $(1); \
		echo "RTCONFIG_QAM256_2G=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_QAM256_2G/d" $(1); \
		echo "# RTCONFIG_QAM256_2G is not set" >>$(1); \
	fi; \
	if [ "$(MULTICASTIPTV)" = "y" ]; then \
		sed -i "/RTCONFIG_MULTICAST_IPTV/d" $(1); \
		echo "RTCONFIG_MULTICAST_IPTV=y" >>$(1); \
	fi; \
	if [ "$(VLAN)" = "y" ]; then \
		sed -i "/RTCONFIG_PORT_BASED_VLAN/d" $(1); \
		echo "RTCONFIG_PORT_BASED_VLAN=y" >>$(1); \
	fi; \
	if [ "$(VLAN_TAGGED_BASE)" = "y" ]; then \
		sed -i "/RTCONFIG_TAGGED_BASED_VLAN/d" $(1); \
		echo "RTCONFIG_TAGGED_BASED_VLAN=y" >>$(1); \
	fi; \
	if [ "$(MTK_NAND)" = "y" ]; then \
		sed -i "/RTCONFIG_MTK_NAND/d" $(1); \
		echo "RTCONFIG_MTK_NAND=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_MTK_NAND/d" $(1); \
		echo "# RTCONFIG_MTK_NAND is not set" >>$(1); \
	fi; \
	if [ "$(DISABLE_NETWORKMAP)" = "y" ]; then \
		sed -i "/RTCONFIG_DISABLE_NETWORKMAP/d" $(1); \
		echo "RTCONFIG_DISABLE_NETWORKMAP=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_DISABLE_NETWORKMAP/d" $(1); \
		echo "# RTCONFIG_DISABLE_NETWORKMAP is not set" >>$(1); \
	fi; \
	if [ "$(WAN_AT_P4)" = "y" ]; then \
		sed -i "/RTCONFIG_WAN_AT_P4/d" $(1); \
		echo "RTCONFIG_WAN_AT_P4=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_WAN_AT_P4/d" $(1); \
		echo "# RTCONFIG_WAN_AT_P4 is not set" >>$(1); \
	fi; \
	if [ "$(MTK_REP)" = "y" ]; then \
		sed -i "/RTCONFIG_MTK_REP/d" $(1); \
		echo "RTCONFIG_MTK_REP=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_MTK_REP/d" $(1); \
		echo "# RTCONFIG_MTK_REP is not set" >>$(1); \
	fi; \
	if [ "$(ATED122)" = "y" ]; then \
		sed -i "/RTCONFIG_ATED122/d" $(1); \
		echo "RTCONFIG_ATED122=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_ATED122/d" $(1); \
		echo "# RTCONFIG_ATED122 is not set" >>$(1); \
	fi; \
	if [ "$(EDCCA_NEW)" = "y" ]; then \
		sed -i "/RTCONFIG_RALINK_EDCCA/d" $(1); \
		echo "RTCONFIG_RALINK_EDCCA=y" >>$(1); \
	fi; \
	if [ "$(RT3883)" = "y" ]; then \
		sed -i "/RTCONFIG_RALINK_RT3883/d" $(1); \
		echo "RTCONFIG_RALINK_RT3883=y" >>$(1); \
	fi; \
	if [ "$(RT3052)" = "y" ]; then \
		sed -i "/RTCONFIG_RALINK_RT3052/d" $(1); \
		echo "RTCONFIG_RALINK_RT3052=y" >>$(1); \
	fi; \
	if [ "$(NOIPTV)" = "y" ]; then \
		sed -i "/RTCONFIG_NOIPTV/d" $(1); \
		echo "RTCONFIG_NOIPTV=y" >>$(1); \
	fi; \
	if [ "$(ATCOVER)" = "y" ]; then \
		sed -i "/RTCONFIG_AUTOCOVER_SIP/d" $(1); \
		echo "RTCONFIG_AUTOCOVER_SIP=y" >>$(1); \
	fi; \
	if [ "$(LAN50)" = "y" ]; then \
		sed -i "/RTCONFIG_DEFLAN50/d" $(1); \
		echo "RTCONFIG_DEFLAN50=y" >>$(1); \
	fi; \
	if [ "$(PERMISSION_MANAGEMENT)" = "y" ]; then \
		sed -i "/RTCONFIG_PERMISSION_MANAGEMENT/d" $(1); \
		echo "RTCONFIG_PERMISSION_MANAGEMENT=y" >>$(1); \
	fi; \
	if [ "$(DETWAN)" = "y" ]; then \
		sed -i "/RTCONFIG_DETWAN/d" $(1); \
		echo "RTCONFIG_DETWAN=y" >>$(1); \
	fi; \
	if [ "$(CFGSYNC)" = "y" ]; then \
		sed -i "/RTCONFIG_CFGSYNC/d" $(1); \
		echo "RTCONFIG_CFGSYNC=y" >>$(1); \
		if [ "$(MASTER_DET)" = "y" ]; then \
			sed -i "/RTCONFIG_MASTER_DET/d" $(1); \
			echo "RTCONFIG_MASTER_DET=y" >>$(1); \
		fi; \
	fi; \
	if [ "$(LP5523)" = "y" ]; then \
		sed -i "/RTCONFIG_LP5523/d" $(1); \
		echo "RTCONFIG_LP5523=y" >>$(1); \
	fi; \
	if [ "$(RALINK)" = "y" -o "$(QCA)" = "y" -o "$(REALTEK)" = "y" ]; then \
		sed -i "/CONFIG_LIBBCM/d" $(1); \
		echo "# CONFIG_LIBBCM is not set" >>$(1); \
	fi; \
	if [ "$(CFGSYNC)" = "y" ]; then \
		sed -i "/RTCONFIG_CFGSYNC/d" $(1); \
		echo "RTCONFIG_CFGSYNC=y" >>$(1); \
	fi; \
	if [ "$(WEBMON)" = "y" ]; then \
		sed -i "/RTCONFIG_WEBMON/d" $(1); \
		echo "RTCONFIG_WEBMON=y" >>$(1); \
	fi; \
	if [ "$(BACKUP_LOG)" = "y" ]; then \
		sed -i "/RTCONFIG_BACKUP_LOG/d" $(1); \
		echo "RTCONFIG_BACKUP_LOG=y" >>$(1); \
		sed -i "/RTCONFIG_NOTIFICATION_CENTER/d" $(1); \
		echo "RTCONFIG_NOTIFICATION_CENTER=y" >>$(1); \
	fi; \
	if [ "$(LETSENCRYPT)" = "y" ]; then \
		sed -i "/RTCONFIG_LETSENCRYPT/d" $(1); \
		echo "RTCONFIG_LETSENCRYPT=y" >>$(1); \
	fi; \
	if [ "$(WLCSCAN_RSSI)" = "y" ]; then \
		sed -i "/RTCONFIG_WLCSCAN_RSSI/d" $(1); \
		echo "RTCONFIG_WLCSCAN_RSSI=y" >>$(1); \
	else\
		echo "# RTCONFIG_WLCSCAN_RSSI is not set" >>$(1); \
	fi; \
	if [ "$(BT_CONN)" = "y" ]; then \
		sed -i "/RTCONFIG_BT_CONN/d" $(1); \
		echo "RTCONFIG_BT_CONN=y" >>$(1); \
	fi; \
	if [ "$(SINGLE_SSID)" = "y" ]; then \
		sed -i "/RTCONFIG_SINGLE_SSID/d" $(1); \
		echo "RTCONFIG_SINGLE_SSID=y" >>$(1); \
	fi; \
	if [ "$(SSID_AMAPS)" = "y" ]; then \
		sed -i "/RTCONFIG_SSID_AMAPS/d" $(1); \
		echo "RTCONFIG_SSID_AMAPS=y" >>$(1); \
	fi; \
	if [ "$(QCA)" = "y" ] && [ "$(MESH)" = "y" ]; then \
		sed -i "/RTCONFIG_WIFI_SON/d" $(1); \
		echo "RTCONFIG_WIFI_SON=y" >>$(1); \
		if [ "$(ETHBACKHAUL)" = "y" ]; then \
			sed -i "/RTCONFIG_ETHBACKHAUL/d" $(1); \
			echo "RTCONFIG_ETHBACKHAUL=y" >>$(1); \
		fi; \
		if [ "$(DUAL_BACKHAUL)" = "y" ]; then \
			sed -i "/RTCONFIG_DUAL_BACKHAUL/d" $(1); \
			echo "RTCONFIG_DUAL_BACKHAUL=y" >>$(1); \
		fi; \
	fi; \
	if [ "$(AUTHSUPP)" = "y" ]; then \
		sed -i "/RTCONFIG_AUTHSUPP/d" $(1); \
		echo "RTCONFIG_AUTHSUPP=y" >>$(1); \
	fi; \
	if [ "$(VPN_FUSION)" = "y" ]; then \
		sed -i "/RTCONFIG_VPN_FUSION/d" $(1); \
		echo "RTCONFIG_VPN_FUSION=y" >>$(1); \
	fi; \
	if [ "$(MTK_8021X3000)" = "y" ]; then \
		sed -i "/RTCONFIG_MTK_8021X3000/d" $(1); \
		echo "RTCONFIG_MTK_8021X3000=y" >>$(1); \
	fi; \
	if [ "$(DBG_BLUECAVE_OBD)" = "y" ]; then \
		sed -i "/RTCONFIG_DBG_BLUECAVE_OBD/d" $(1); \
		echo "RTCONFIG_DBG_BLUECAVE_OBD=y" >>$(1); \
	fi; \
	if [ "$(AMAS)" = "y" ]; then \
		sed -i "/RTCONFIG_AMAS/d" $(1); \
		echo "RTCONFIG_AMAS=y" >>$(1); \
		if [ "$(LANTIQ)" != "y" ]; then \
			sed -i "/RTCONFIG_DPSTA/d" $(1); \
			echo "RTCONFIG_DPSTA=y" >>$(1); \
		fi; \
		if [ "$(DISABLE_REPEATER_UI)" = "y" ] ; then \
			sed -i "/RTCONFIG_DISABLE_REPEATER_UI/d" $(1); \
			echo "# RTCONFIG_DISABLE_REPEATER_UI is not set" >>$(1); \
		fi; \
		sed -i "/RTCONFIG_CFGSYNC/d" $(1); \
		echo "RTCONFIG_CFGSYNC=y" >>$(1); \
		sed -i "/RTCONFIG_MASTER_DET/d" $(1); \
		echo "RTCONFIG_MASTER_DET=y" >>$(1); \
		sed -i "/RTCONFIG_ADV_RAST/d" $(1); \
		echo "RTCONFIG_ADV_RAST=y" >>$(1); \
		sed -i "/RTCONFIG_WLCEVENTD/d" $(1); \
		echo "RTCONFIG_WLCEVENTD=y" >>$(1); \
		sed -i "/RTCONFIG_LIBASUSLOG/d" $(1); \
		echo "RTCONFIG_LIBASUSLOG=y" >>$(1); \
	fi; \
	if [ "$(NO_SELECT_CHANNEL)" = "y" ]; then \
		sed -i "/RTCONFIG_NO_SELECT_CHANNEL/d" $(1); \
		echo "RTCONFIG_NO_SELECT_CHANNEL=y" >>$(1); \
	else \
		sed -i "/RTCONFIG_NO_SELECT_CHANNEL/d" $(1); \
		echo "# RTCONFIG_NO_SELECT_CHANNEL is not set" >>$(1); \
	fi; \
	if [ "$(USB_SWAP)" = "y" ]; then \
		sed -i "/RTCONFIG_USB_SWAP/d" $(1); \
		echo "RTCONFIG_USB_SWAP=y" >>$(1); \
	fi; \
	if [ "$(SW_DEVLED)" = "y" ]; then \
		sed -i "/RTCONFIG_SW_DEVLED/d" $(1); \
		echo "RTCONFIG_SW_DEVLED=y" >>$(1); \
	fi; \
	if [ "$(LYRA_HIDE)" = "y" ]; then \
		sed -i "/RTCONFIG_LYRA_HIDE/d" $(1); \
		echo "RTCONFIG_LYRA_HIDE=y" >>$(1); \
	fi; \
	if [ "$(NVRAM_ENCRYPT)" = "y" ]; then \
		sed -i "/RTCONFIG_NVRAM_ENCRYPT/d" $(1); \
		echo "RTCONFIG_NVRAM_ENCRYPT=y" >>$(1); \
	fi; \
	if [ "$(WIFI_PROXY)" = "y" ]; then \
		sed -i "/RTCONFIG_WIFI_PROXY/d" $(1); \
		echo "RTCONFIG_WIFI_PROXY=y" >>$(1); \
	fi; \
	if [ "$(HD_SPINDOWN)" = "y" ]; then \
		sed -i "/RTCONFIG_HD_SPINDOWN/d" $(1); \
		echo "RTCONFIG_HD_SPINDOWN=y" >>$(1); \
	fi; \
	if [ "$(ADTBW)" = "y" ]; then \
		sed -i "/RTCONFIG_ADTBW/d" $(1); \
		echo "RTCONFIG_ADTBW=y" >>$(1); \
	fi; \
	if [ "$(TXBF_BAND3ONLY)" = "y" ]; then \
		sed -i "/RTCONFIG_TXBF_BAND3ONLY/d" $(1); \
		echo "RTCONFIG_TXBF_BAND3ONLY=y" >>$(1); \
	fi; \
	if [ "$(SW_HW_AUTH)" = "y" ]; then \
		sed -i "/RTCONFIG_SW_HW_AUTH\>/d" $(1); \
		echo "RTCONFIG_SW_HW_AUTH=y" >>$(1); \
	fi; \
	if [ "$(LIBASUSLOG)" = "y" ]; then \
		sed -i "/RTCONFIG_LIBASUSLOG\>/d" $(1); \
		echo "RTCONFIG_LIBASUSLOG=y" >>$(1); \
	fi; \
	)
endef

define BusyboxOptions
	@( \
	if [ "$(CONFIG_LINUX26)" = "y" ]; then \
		sed -i "/CONFIG_FEATURE_2_4_MODULES/d" $(1); \
		echo "# CONFIG_FEATURE_2_4_MODULES is not set" >>$(1); \
		sed -i "/CONFIG_FEATURE_LSMOD_PRETTY_2_6_OUTPUT/d" $(1); \
		echo "CONFIG_FEATURE_LSMOD_PRETTY_2_6_OUTPUT=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_DEVFS/d" $(1); \
		echo "# CONFIG_FEATURE_DEVFS is not set" >>$(1); \
		sed -i "/CONFIG_MKNOD/d" $(1); \
		echo "CONFIG_MKNOD=y" >>$(1); \
	fi; \
	if [ "$(NO_CIFS)" = "y" ]; then \
		sed -i "/CONFIG_FEATURE_MOUNT_CIFS/d" $(1); \
		echo "# CONFIG_FEATURE_MOUNT_CIFS is not set" >>$(1); \
	fi; \
	if [ "$(BBEXTRAS)" = "y" ]; then \
		sed -i "/CONFIG_FEATURE_SORT_BIG/d" $(1); \
		echo "CONFIG_FEATURE_SORT_BIG=y" >>$(1); \
		sed -i "/CONFIG_CLEAR/d" $(1); \
		echo "CONFIG_CLEAR=y" >>$(1); \
		sed -i "/CONFIG_SETCONSOLE/d" $(1); \
		echo "CONFIG_SETCONSOLE=y" >>$(1); \
		if [ "$(CONFIG_LINUX26)" = "y" ]; then \
			sed -i "/CONFIG_FEATURE_SYSLOGD_READ_BUFFER_SIZE/d" $(1); \
			echo "CONFIG_FEATURE_SYSLOGD_READ_BUFFER_SIZE=512" >>$(1); \
		fi; \
		if [ "$(DSL)" = "y" ]; then \
			sed -i "/CONFIG_TFTP/d" $(1); \
			echo "CONFIG_TFTP=y" >>$(1); \
			sed -i "/CONFIG_TFTPD/d" $(1); \
			echo "# CONFIG_TFTPD is not set" >>$(1); \
			sed -i "/CONFIG_FEATURE_TFTP_GET/d" $(1); \
			echo "CONFIG_FEATURE_TFTP_GET=y" >>$(1); \
			sed -i "/CONFIG_FEATURE_TFTP_PUT/d" $(1); \
			echo "CONFIG_FEATURE_TFTP_PUT=y" >>$(1); \
			sed -i "/CONFIG_FEATURE_TFTP_BLOCKSIZE/d" $(1); \
			echo "# CONFIG_FEATURE_TFTP_BLOCKSIZE is not set" >>$(1); \
			sed -i "/CONFIG_FEATURE_TFTP_PROGRESS_BAR/d" $(1); \
			echo "# CONFIG_FEATURE_TFTP_PROGRESS_BAR is not set" >>$(1); \
			sed -i "/CONFIG_TFTP_DEBUG/d" $(1); \
			echo "# CONFIG_TFTP_DEBUG is not set" >>$(1); \
			if [ "$(DSL_TCLINUX)" = "y" ]; then \
				sed -i "/CONFIG_TELNET/d" $(1); \
				echo "CONFIG_TELNET=y" >>$(1); \
				sed -i "/CONFIG_FEATURE_TELNET_TTYPE/d" $(1); \
				echo "# CONFIG_FEATURE_TELNET_TTYPE is not set" >>$(1); \
				sed -i "/CONFIG_FEATURE_TELNET_AUTOLOGIN/d" $(1); \
				echo "# CONFIG_FEATURE_TELNET_AUTOLOGIN is not set" >>$(1); \
				sed -i "/CONFIG_TELNETD/d" $(1); \
				echo "CONFIG_TELNETD=y" >>$(1); \
				sed -i "/CONFIG_FEATURE_TELNETD_STANDALONE/d" $(1); \
				echo "CONFIG_FEATURE_TELNETD_STANDALONE=y" >>$(1); \
				sed -i "/CONFIG_FEATURE_TELNETD_INETD_WAIT/d" $(1); \
				echo "# CONFIG_FEATURE_TELNETD_INETD_WAIT is not set" >>$(1); \
				sed -i "/CONFIG_FTPGET/d" $(1); \
				echo "CONFIG_FTPGET=y" >>$(1); \
				sed -i "/CONFIG_FTPPUT/d" $(1); \
				echo "CONFIG_FTPPUT=y" >>$(1); \
				sed -i "/CONFIG_FEATURE_FTPGETPUT_LONG_OPTIONS/d" $(1); \
				echo "CONFIG_FEATURE_FTPGETPUT_LONG_OPTIONS=y" >>$(1); \
				sed -i "/CONFIG_SPLIT/d" $(1); \
				echo "CONFIG_SPLIT=y" >>$(1); \
			fi;\
		fi; \
	fi; \
	if [ "$(USB)" = "USB" ]; then \
		if [ "$(DISK_MONITOR)" = "y" ]; then \
			sed -i "/CONFIG_FSCK/d" $(1); \
			echo "CONFIG_FSCK=y" >>$(1); \
			if [ "$(E2FSPROGS)" != "y" ]; then \
				sed -i "/CONFIG_E2FSCK/d" $(1); \
				echo "CONFIG_E2FSCK=y" >>$(1); \
			fi; \
		fi; \
		if [ "$(USBEXTRAS)" = "y" ]; then \
			sed -i "/CONFIG_FSCK_MINIX/d" $(1); \
			echo "CONFIG_FSCK_MINIX=y" >>$(1); \
			sed -i "/CONFIG_MKSWAP/d" $(1); \
			echo "CONFIG_MKSWAP=y" >>$(1); \
			sed -i "/CONFIG_FLOCK/d" $(1); \
			echo "CONFIG_FLOCK=y" >>$(1); \
			sed -i "/CONFIG_FSYNC/d" $(1); \
			echo "CONFIG_FSYNC=y" >>$(1); \
			sed -i "/CONFIG_UNZIP/d" $(1); \
			echo "CONFIG_UNZIP=y" >>$(1); \
			if [ "$(CONFIG_LINUX26)" = "y" ]; then \
				sed -i "/CONFIG_LSUSB/d" $(1); \
				echo "CONFIG_LSUSB=y" >>$(1); \
				sed -i "/CONFIG_FEATURE_WGET_STATUSBAR/d" $(1); \
				echo "CONFIG_FEATURE_WGET_STATUSBAR=y" >>$(1); \
				sed -i "/CONFIG_FEATURE_VERBOSE_USAGE/d" $(1); \
				echo "CONFIG_FEATURE_VERBOSE_USAGE=y" >>$(1); \
			fi; \
		fi; \
		if [ "$(NO_MKTOOLS)" != "y" ]; then \
			if [ "$(E2FSPROGS)" != "y" ]; then \
				sed -i "/CONFIG_MKE2FS/d" $(1); \
				echo "CONFIG_MKE2FS=y" >>$(1); \
			fi; \
			sed -i "/CONFIG_FDISK/d" $(1); \
			echo "CONFIG_FDISK=y" >>$(1); \
			sed -i "/CONFIG_FEATURE_FDISK_WRITABLE/d" $(1); \
			echo "CONFIG_FEATURE_FDISK_WRITABLE=y" >>$(1); \
		fi; \
		if [ "$(GOBI)" = "y" ]; then \
			sed -i "/CONFIG_TFTP /d" $(1); \
			echo "CONFIG_TFTP=y" >>$(1); \
			sed -i "/CONFIG_FEATURE_TFTP_GET/d" $(1); \
			echo "CONFIG_FEATURE_TFTP_GET=y" >>$(1); \
			sed -i "/CONFIG_FEATURE_TFTP_PUT/d" $(1); \
			echo "CONFIG_FEATURE_TFTP_PUT=y" >>$(1); \
			sed -i "/CONFIG_FEATURE_TFTP_BLOCKSIZE/d" $(1); \
			echo "CONFIG_FEATURE_TFTP_BLOCKSIZE=y" >>$(1); \
		fi; \
	else \
		sed -i "/CONFIG_FEATURE_MOUNT_LOOP/d" $(1); \
		echo "# CONFIG_FEATURE_MOUNT_LOOP is not set" >>$(1); \
		sed -i "/CONFIG_FEATURE_DEVFS/d" $(1); \
		echo "# CONFIG_FEATURE_DEVFS is not set" >>$(1); \
		sed -i "/CONFIG_FEATURE_MOUNT_LABEL/d" $(1); \
		echo "# CONFIG_FEATURE_MOUNT_LABEL is not set" >>$(1); \
		sed -i "/CONFIG_FEATURE_MOUNT_FSTAB/d" $(1); \
		echo "# CONFIG_FEATURE_MOUNT_FSTAB is not set" >>$(1); \
		sed -i "/CONFIG_VOLUMEID/d" $(1); \
		echo "# CONFIG_VOLUMEID is not set" >>$(1); \
		sed -i "/CONFIG_BLKID/d" $(1); \
		echo "# CONFIG_BLKID is not set" >>$(1); \
		sed -i "/CONFIG_SWAPONOFF/d" $(1); \
		echo "# CONFIG_SWAPONOFF is not set" >>$(1); \
		sed -i "/CONFIG_TRUE/d" $(1); \
		echo "# CONFIG_TRUE is not set" >>$(1); \
	fi; \
	if [ "$(IPV6SUPP)" = "y" ]; then \
		sed -i "/CONFIG_FEATURE_IPV6/d" $(1); \
		echo "CONFIG_FEATURE_IPV6=y" >>$(1); \
		sed -i "/CONFIG_PING6/d" $(1); \
		echo "CONFIG_PING6=y" >>$(1); \
		sed -i "/CONFIG_TRACEROUTE6/d" $(1); \
		echo "CONFIG_TRACEROUTE6=y" >>$(1); \
	fi; \
	if [ "$(SNMPD)" = "y" ]; then \
		sed -i "/CONFIG_TFTP/d" $(1); \
		echo "CONFIG_TFTP=y" >>$(1); \
		sed -i "/CONFIG_TFTPD/d" $(1); \
		echo "# CONFIG_TFTPD is not set" >>$(1); \
		sed -i "/CONFIG_FEATURE_TFTP_GET/d" $(1); \
		echo "CONFIG_FEATURE_TFTP_GET=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_TFTP_PUT/d" $(1); \
		echo "CONFIG_FEATURE_TFTP_PUT=y" >>$(1); \
		sed -i "/CONFIG_TFTP_DEBUG/d" $(1); \
		echo "# CONFIG_TFTP_DEBUG is not set" >>$(1); \
	fi; \
	if [ "$(RTN11P)" = "y" ] || [ "$(RTN300)" = "y" ]; then \
		sed -i "/CONFIG_LESS/d" $(1); \
		echo "# CONFIG_LESS is not set" >>$(1); \
		sed -i "/CONFIG_DU\b/d" $(1); \
		echo "# CONFIG_DU is not set" >>$(1); \
		sed -i "/CONFIG_HEAD/d" $(1); \
		echo "# CONFIG_HEAD is not set" >>$(1); \
		sed -i "/CONFIG_TAIL/d" $(1); \
		echo "# CONFIG_TAIL is not set" >>$(1); \
		sed -i "/CONFIG_BASENAME/d" $(1); \
		echo "# CONFIG_BASENAME is not set" >>$(1); \
		sed -i "/CONFIG_FEATURE_DEVFS/d" $(1); \
		echo "# CONFIG_FEATURE_DEVFS is not set" >>$(1); \
		sed -i "/CONFIG_BLKID/d" $(1); \
		echo "# CONFIG_BLKID is not set" >>$(1); \
		sed -i "/CONFIG_TELNET\b/d" $(1); \
		echo "# CONFIG_TELNET is not set" >>$(1); \
		sed -i "/CONFIG_FEATURE_LS_COLOR\b/d" $(1); \
		echo "# CONFIG_FEATURE_LS_COLOR is not set" >>$(1); \
		sed -i "/CONFIG_CUT/d" $(1); \
		echo "# CONFIG_CUT is not set" >>$(1); \
		sed -i "/CONFIG_CROND/d" $(1); \
		echo "# CONFIG_CROND is not set" >>$(1); \
		sed -i "/CONFIG_MD5SUM/d" $(1); \
		echo "# CONFIG_MD5SUM is not set" >>$(1); \
		sed -i "/CONFIG_AWK/d" $(1); \
		echo "# CONFIG_AWK is not set" >>$(1); \
		sed -i "/CONFIG_WC/d" $(1); \
		echo "# CONFIG_WC is not set" >>$(1); \
	fi; \
	if [ "$(IPQ40XX)" = "y" ]; then \
		sed -i "/CONFIG_DEVMEM/d" $(1); \
		echo "CONFIG_DEVMEM=y" >>$(1); \
	fi; \
	if [ "$(MAPAC1300)" = "y" ] || [ "$(MAPAC2200)" = "y" ] || [ "$(VZWAC1300)" = "y" ]; then \
		sed -i "/CONFIG_TFTP/d" $(1); \
		echo "CONFIG_TFTP=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_TFTP_GET/d" $(1); \
		echo "CONFIG_FEATURE_TFTP_GET=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_TFTP_PUT/d" $(1); \
		echo "CONFIG_FEATURE_TFTP_PUT=y" >>$(1); \
		sed -i "/CONFIG_TFTPD/d" $(1); \
		echo "# CONFIG_TFTPD is not set" >>$(1); \
		sed -i "/CONFIG_TFTP_DEBUG/d" $(1); \
		echo "# CONFIG_TFTP_DEBUG is not set" >>$(1); \
		sed -i "/CONFIG_TELNET\b/d" $(1); \
		echo "CONFIG_TELNET=y" >>$(1); \
	fi; \
	if [ "$(SLIM)" = "y" ]; then \
		sed -i "/CONFIG_AWK/d" $(1); \
		echo "# CONFIG_AWK is not set" >>$(1); \
		sed -i "/CONFIG_BASENAME/d" $(1); \
		echo "# CONFIG_BASENAME is not set" >>$(1); \
		sed -i "/CONFIG_FEATURE_DEVFS/d" $(1); \
		echo "# CONFIG_FEATURE_DEVFS is not set" >>$(1); \
		sed -i "/CONFIG_BLKID/d" $(1); \
		echo "# CONFIG_BLKID is not set" >>$(1); \
		sed -i "/CONFIG_TELNET\b/d" $(1); \
		echo "# CONFIG_TELNET is not set" >>$(1); \
		sed -i "/CONFIG_ARPING/d" $(1); \
		echo "# CONFIG_ARPING is not set" >>$(1); \
		sed -i "/CONFIG_FEATURE_LS_COLOR/d" $(1); \
		echo "# CONFIG_FEATURE_LS_COLOR is not set" >>$(1); \
	else \
		if [ "$(SFP)" = "y" ]; then \
			sed -i "/CONFIG_LESS/d" $(1); \
			echo "# CONFIG_LESS is not set" >>$(1); \
			sed -i "/CONFIG_GZIP/d" $(1); \
			echo "# CONFIG_GZIP is not set" >>$(1); \
			sed -i "/CONFIG_DU\b/d" $(1); \
			echo "# CONFIG_DU is not set" >>$(1); \
			sed -i "/CONFIG_TAIL/d" $(1); \
			echo "# CONFIG_TAIL is not set" >>$(1); \
			sed -i "/CONFIG_BASENAME/d" $(1); \
			echo "# CONFIG_BASENAME is not set" >>$(1); \
			sed -i "/CONFIG_FEATURE_DEVFS/d" $(1); \
			echo "# CONFIG_FEATURE_DEVFS is not set" >>$(1); \
			sed -i "/CONFIG_BLKID/d" $(1); \
			echo "# CONFIG_BLKID is not set" >>$(1); \
			sed -i "/CONFIG_TELNET\b/d" $(1); \
			echo "# CONFIG_TELNET is not set" >>$(1); \
			sed -i "/CONFIG_ARPING/d" $(1); \
			echo "# CONFIG_ARPING is not set" >>$(1); \
			sed -i "/CONFIG_FEATURE_LS_COLOR\b/d" $(1); \
			echo "# CONFIG_FEATURE_LS_COLOR is not set" >>$(1); \
			if [ "$(MODEM)" != "y" ]; then \
				sed -i "/CONFIG_HEAD/d" $(1); \
				echo "# CONFIG_HEAD is not set" >>$(1); \
			fi; \
			if [ "$(SFP4M)" = "y" ]; then \
				sed -i "/CONFIG_TAR/d" $(1); \
				echo "# CONFIG_TAR is not set" >>$(1); \
				sed -i "/CONFIG_DD/d" $(1); \
				echo "# CONFIG_DD is not set" >>$(1); \
				sed -i "/CONFIG_SORT/d" $(1); \
				echo "# CONFIG_SORT is not set" >>$(1); \
				sed -i "/CONFIG_DMESG/d" $(1); \
				echo "# CONFIG_DMESG is not set" >>$(1); \
				sed -i "/CONFIG_CROND/d" $(1); \
				echo "# CONFIG_CROND is not set" >>$(1); \
				sed -i "/CONFIG_EXPR_MATH_SUPPORT_64/d" $(1); \
				echo "# CONFIG_EXPR_MATH_SUPPORT_64 is not set" >>$(1); \
				sed -i "/CONFIG_MD5SUM/d" $(1); \
				echo "# CONFIG_MD5SUM is not set" >>$(1); \
				sed -i "/CONFIG_TAIL/d" $(1); \
				echo "# CONFIG_TAIL is not set" >>$(1); \
				sed -i "/CONFIG_VI/d" $(1); \
				echo "# CONFIG_VI is not set" >>$(1); \
				if [ "$(MODEM)" != "y" ]; then \
					sed -i "/CONFIG_AWK/d" $(1); \
					echo "# CONFIG_AWK is not set" >>$(1); \
					sed -i "/CONFIG_FIND/d" $(1); \
					echo "# CONFIG_FIND is not set" >>$(1); \
					echo "# CONFIG_FINDFS is not set" >>$(1); \
					sed -i "/CONFIG_CUT/d" $(1); \
					echo "# CONFIG_CUT is not set" >>$(1); \
					sed -i "/CONFIG_WC/d" $(1); \
					echo "# CONFIG_WC is not set" >>$(1); \
				fi; \
			fi; \
		else \
			sed -i "/CONFIG_FEATURE_LS_COLOR\b/d" $(1); \
			echo "CONFIG_FEATURE_LS_COLOR=y" >>$(1); \
			if [ "$(HND_MFG)" = "y" ]; then \
				sed -i "/CONFIG_FEATURE_LS_COLOR_IS_DEFAULT/d" $(1); \
				echo "# CONFIG_FEATURE_LS_COLOR_IS_DEFAULT is not set" >>$(1); \
			fi; \
		fi; \
	fi; \
	if [ "$(DISKTEST)" = "y" ]; then \
		sed -i "/CONFIG_HDPARM/d" $(1); \
		echo "CONFIG_HDPARM=y" >>$(1); \
	fi; \
	if [ "$(BCMSMP)" = "y" ] || [ "$(ALPINE)" = "y" ] || [ "$(LANTIQ)" = "y" ] ; then \
		sed -i "/CONFIG_FEATURE_TOP_SMP_CPU/d" $(1); \
		echo "CONFIG_FEATURE_TOP_SMP_CPU=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_TOP_DECIMALS/d" $(1); \
		echo "CONFIG_FEATURE_TOP_DECIMALS=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_TOP_SMP_PROCESS/d" $(1); \
		echo "CONFIG_FEATURE_TOP_SMP_PROCESS=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_TOPMEM/d" $(1); \
		echo "CONFIG_FEATURE_TOPMEM=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_SHOW_THREADS/d" $(1); \
		echo "CONFIG_FEATURE_SHOW_THREADS=y" >>$(1); \
	fi; \
	if [ "$(ALPINE)" = "y" ] ; then \
		sed -i "/CONFIG_STTY/d" $(1); \
		echo "CONFIG_STTY=y" >>$(1); \
	fi; \
	if [ "$(LANTIQ)" = "y" ] ; then \
		sed -i "/CONFIG_LSPCI/d" $(1); \
		echo "CONFIG_LSPCI=y" >>$(1); \
		sed -i "/CONFIG_LSUSB/d" $(1); \
		echo "CONFIG_LSUSB=y" >>$(1); \
	fi; \
	if [ "$(LANTIQ)" = "y" ] ; then \
		sed -i "/CONFIG_XARGS/d" $(1); \
		echo "CONFIG_XARGS=y" >>$(1); \
	fi; \
	if [ "$(LANTIQ)" = "y" ] ; then \
		sed -i "/CONFIG_TFTP/d" $(1); \
		echo "CONFIG_TFTP=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_TFTP_GET/d" $(1); \
		echo "CONFIG_FEATURE_TFTP_GET=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_TFTP_PUT/d" $(1); \
		echo "CONFIG_FEATURE_TFTP_PUT=y" >>$(1); \
		sed -i "/CONFIG_TFTPD/d" $(1); \
		echo "# CONFIG_TFTPD is not set" >>$(1); \
		sed -i "/CONFIG_TFTP_DEBUG/d" $(1); \
		echo "# CONFIG_TFTP_DEBUG is not set" >>$(1); \
	fi; \
	if [ "$(WANRED_LED)" = "y" ]; then \
		sed -i "/CONFIG_ARPING/d" $(1); \
		echo "CONFIG_ARPING=y" >>$(1); \
	fi; \
	if [ "$(HTTPS)" = "y" ]; then \
		sed -i "/CONFIG_WGET/d" $(1); \
		echo "# CONFIG_WGET is not set" >>$(1); \
	fi; \
	if [ "$(HND_ROUTER)" = "y" ]; then \
		sed -i "/CONFIG_FEATURE_BASH_IS_ASH/d" $(1); \
		echo "CONFIG_FEATURE_BASH_IS_ASH=y" >>$(1); \
		sed -i "/CONFIG_FEATURE_BASH_IS_NONE/d" $(1); \
		echo "# CONFIG_FEATURE_BASH_IS_NONE is not set" >>$(1); \
	fi; \
	)
endef

define extraKernelConfig
	@( \
	if [ ! -z "$(EXTRA_KERNEL_YES_CONFIGS)" ] ; then \
		for c in $(EXTRA_KERNEL_YES_CONFIGS) ; do \
			sed -i "/CONFIG_$${c}/d" $(1); \
			echo "CONFIG_$${c}=y" >>$(1); \
		done \
	fi; \
	if [ ! -z "$(EXTRA_KERNEL_NO_CONFIGS)" ] ; then \
		for c in $(EXTRA_KERNEL_NO_CONFIGS) ; do \
			sed -i "/CONFIG_$${c}/d" $(1); \
			echo "# CONFIG_$${c} is not set" >>$(1); \
		done \
	fi; \
	if [ ! -z "$(EXTRA_KERNEL_MOD_CONFIGS)" ] ; then \
		for c in $(EXTRA_KERNEL_MOD_CONFIGS) ; do \
			sed -i "/CONFIG_$${c}/d" $(1); \
			echo "CONFIG_$${c}=m" >>$(1); \
		done \
	fi; \
	if [ ! -z "$(EXTRA_KERNEL_VAL_CONFIGS)" ] ; then \
		for c in $(EXTRA_KERNEL_VAL_CONFIGS) ; do \
			sed -i "/CONFIG_$${c}/d" $(1); \
			echo "CONFIG_$${c}" >>$(1); \
		done \
	fi; \
	)
endef

define KernelConfig
	@( \
	sed -i "/CONFIG_PPP_DEFLATE/d" $(1); \
	echo "CONFIG_PPP_DEFLATE=m" >>$(1); \
	sed -i "/CONFIG_PPP_FILTER/d" $(1); \
	echo "# CONFIG_PPP_FILTER is not set" >>$(1); \
	sed -i "/CONFIG_PPP_MULTILINK/d" $(1); \
	echo "# CONFIG_PPP_MULTILINK is not set" >>$(1); \
	if [ "$(TUNEK)" != "n" ]; then \
		if [ "$(RALINK)" = "y" ] || [ "$(QCA)" = "y" ]; then \
			sed -i "/CONFIG_NVRAM_SIZE/d" $(1); \
			echo "CONFIG_NVRAM_SIZE=`printf 0x%x $(NVRAM_SIZE)`" >>$(1); \
		fi; \
		sed -i "/CONFIG_CC_OPTIMIZE_FOR_SIZE/d" $(1); \
		if [ "$(KERN_SIZE_OPT)" = "y" ]; then \
			echo "CONFIG_CC_OPTIMIZE_FOR_SIZE=y" >>$(1); \
		else \
			echo "# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set" >>$(1); \
		fi; \
		if [ "$(CONFIG_LINUX26)" = "y" ] && [ "$(MIPS32)" = "r2" ]; then \
			sed -i "/CONFIG_CPU_MIPS32_R1/d" $(1); \
			echo "# CONFIG_CPU_MIPS32_R1 is not set" >>$(1); \
			sed -i "/CONFIG_CPU_MIPS32_R2/d" $(1); \
			echo "CONFIG_CPU_MIPS32_R2=y" >>$(1); \
			sed -i "/CONFIG_CPU_MIPSR1/d" $(1); \
			echo "CONFIG_CPU_MIPSR2=y" >>$(1); \
		fi; \
		if [ "$(RTN11P)" = "y" ] || [ "$(RTN300)" = "y" ]; then \
			sed -i "/CONFIG_USB/d" $(1); \
			echo "# CONFIG_USB is not set" >>$(1); \
			sed -i "/CONFIG_USB_SUPPORT/d" $(1); \
			echo "# CONFIG_USB_SUPPORT is not set" >>$(1); \
			sed -i "/CONFIG_USB_ARCH_HAS_OHCI/d" $(1); \
			echo "# CONFIG_USB_ARCH_HAS_OHCI is not set" >>$(1); \
			sed -i "/CONFIG_USB_ARCH_HAS_EHCI/d" $(1); \
			echo "# CONFIG_USB_ARCH_HAS_EHCI is not set" >>$(1); \
			sed -i "/CONFIG_SWAP/d" $(1); \
			echo "# CONFIG_SWAP is not set" >>$(1); \
			sed -i "/CONFIG_RD_GZIP/d" $(1); \
			echo "# CONFIG_RD_GZIP is not set" >>$(1); \
			sed -i "/CONFIG_SCSI/d" $(1); \
			echo "# CONFIG_SCSI is not set" >>$(1); \
			sed -i "/CONFIG_EXT2_FS/d" $(1); \
			echo "# CONFIG_EXT2_FS is not set" >>$(1); \
			sed -i "/CONFIG_EXT3_FS/d" $(1); \
			echo "# CONFIG_EXT3_FS is not set" >>$(1); \
			sed -i "/CONFIG_FAT_FS/d" $(1); \
			echo "# CONFIG_FAT_FS is not set" >>$(1); \
			sed -i "/CONFIG_VFAT_FS/d" $(1); \
			echo "# CONFIG_VFAT_FS is not set" >>$(1); \
			sed -i "/CONFIG_REISERFS_FS/d" $(1); \
			echo "# CONFIG_REISERFS_FS is not set" >>$(1); \
			sed -i "/CONFIG_JFFS2_FS/d" $(1); \
			echo "# CONFIG_JFFS2_FS is not set" >>$(1); \
			sed -i "/CONFIG_FUSE_FS/d" $(1); \
			echo "# CONFIG_FUSE_FS is not set" >>$(1); \
			sed -i "/CONFIG_CONFIGFS_FS/d" $(1); \
			echo "# CONFIG_CONFIGFS_FS is not set" >>$(1); \
			sed -i "/CONFIG_SERIAL_NONSTANDARD/d" $(1); \
			echo "# CONFIG_SERIAL_NONSTANDARD is not set" >>$(1); \
			sed -i "/CONFIG_NETWORK_FILESYSTEMS/d" $(1); \
			echo "# CONFIG_NETWORK_FILESYSTEMS is not set" >>$(1); \
			sed -i "/CONFIG_CC_OPTIMIZE_FOR_SIZE/d" $(1); \
			echo "CONFIG_CC_OPTIMIZE_FOR_SIZE=y" >>$(1); \
			sed -i "/CONFIG_KALLSYMS/d" $(1); \
			echo "# CONFIG_KALLSYMS is not set" >>$(1); \
			sed -i "/CONFIG_RALINK_TIMER/d" $(1); \
			echo "# CONFIG_RALINK_TIMER is not set" >>$(1); \
			sed -i "/CONFIG_BUG/d" $(1); \
			echo "# CONFIG_BUG is not set" >>$(1); \
		fi; \
		if [ "$(PLN12)" = "y" ] || [ "$(PLAC56)" = "y" ] || [ "$(RPAC66)" = "y" ] || [ "$(RPAC51)" = "y" ] ; then \
			sed -i "/CONFIG_USB/d" $(1); \
			echo "# CONFIG_USB is not set" >>$(1); \
			sed -i "/CONFIG_USB_SUPPORT/d" $(1); \
			echo "# CONFIG_USB_SUPPORT is not set" >>$(1); \
			sed -i "/CONFIG_USB_ARCH_HAS_OHCI/d" $(1); \
			echo "# CONFIG_USB_ARCH_HAS_OHCI is not set" >>$(1); \
			sed -i "/CONFIG_USB_ARCH_HAS_EHCI/d" $(1); \
			echo "# CONFIG_USB_ARCH_HAS_EHCI is not set" >>$(1); \
			sed -i "/CONFIG_SWAP/d" $(1); \
			echo "# CONFIG_SWAP is not set" >>$(1); \
			sed -i "/CONFIG_RD_GZIP/d" $(1); \
			echo "# CONFIG_RD_GZIP is not set" >>$(1); \
			sed -i "/CONFIG_SCSI/d" $(1); \
			echo "# CONFIG_SCSI is not set" >>$(1); \
			sed -i "/CONFIG_EXT2_FS/d" $(1); \
			echo "# CONFIG_EXT2_FS is not set" >>$(1); \
			sed -i "/CONFIG_EXT3_FS/d" $(1); \
			echo "# CONFIG_EXT3_FS is not set" >>$(1); \
			sed -i "/CONFIG_FAT_FS/d" $(1); \
			echo "# CONFIG_FAT_FS is not set" >>$(1); \
			sed -i "/CONFIG_VFAT_FS/d" $(1); \
			echo "# CONFIG_VFAT_FS is not set" >>$(1); \
			sed -i "/CONFIG_REISERFS_FS/d" $(1); \
			echo "# CONFIG_REISERFS_FS is not set" >>$(1); \
			sed -i "/CONFIG_JFFS2_FS/d" $(1); \
			echo "# CONFIG_JFFS2_FS is not set" >>$(1); \
			sed -i "/CONFIG_FUSE_FS/d" $(1); \
			echo "# CONFIG_FUSE_FS is not set" >>$(1); \
			sed -i "/CONFIG_CONFIGFS_FS/d" $(1); \
			echo "# CONFIG_CONFIGFS_FS is not set" >>$(1); \
			sed -i "/CONFIG_SERIAL_NONSTANDARD/d" $(1); \
			echo "# CONFIG_SERIAL_NONSTANDARD is not set" >>$(1); \
			sed -i "/CONFIG_NETWORK_FILESYSTEMS/d" $(1); \
			echo "# CONFIG_NETWORK_FILESYSTEMS is not set" >>$(1); \
			sed -i "/CONFIG_CC_OPTIMIZE_FOR_SIZE/d" $(1); \
			echo "CONFIG_CC_OPTIMIZE_FOR_SIZE=y" >>$(1); \
			sed -i "/CONFIG_KALLSYMS/d" $(1); \
			echo "# CONFIG_KALLSYMS is not set" >>$(1); \
		fi; \
		if [ "$(AP_CARRIER_DETECTION)" = "y" ]; then \
			sed -i "/CONFIG_RALINK_TIMER_DFS/d" $(1); \
			echo "CONFIG_RALINK_TIMER_DFS=y" >>$(1); \
			sed -i "/CONFIG_RT2860V2_AP_DFS/d" $(1); \
			echo "CONFIG_RT2860V2_AP_DFS=y" >>$(1); \
			sed -i "/CONFIG_RT2860V2_AP_CARRIER/d" $(1); \
			echo "CONFIG_RT2860V2_AP_CARRIER=y" >>$(1); \
			sed -i "/CONFIG_RTPCI_AP_CARRIER/d" $(1); \
			echo "CONFIG_RTPCI_AP_CARRIER=y" >>$(1); \
		else \
			sed -i "/CONFIG_RALINK_TIMER_DFS/d" $(1); \
			echo "# CONFIG_RALINK_TIMER_DFS is not set" >>$(1); \
			sed -i "/CONFIG_RT2860V2_AP_DFS/d" $(1); \
			echo "# CONFIG_RT2860V2_AP_DFS is not set" >>$(1); \
			sed -i "/CONFIG_RT2860V2_AP_CARRIER/d" $(1); \
			echo "# CONFIG_RT2860V2_AP_CARRIER is not set" >>$(1); \
			sed -i "/CONFIG_RTPCI_AP_CARRIER/d" $(1); \
			echo "# CONFIG_RTPCI_AP_CARRIER is not set" >>$(1); \
		fi; \
		if [ "$(CONFIG_LINUX30)" = "y" ]; then \
			sed -i "/CONFIG_USB_XHCI_HCD/d" $(1); \
			echo "# CONFIG_USB_XHCI_HCD is not set" >>$(1); \
			if [ "$(USB)" = "USB" ]; then \
				if [ "$(XHCI)" = "y" ]; then \
					if [ "$(ALPINE)" = "y" ] || [ "$(LANTIQ)" = "y" ] ; then \
						sed -i "/CONFIG_USB_XHCI_HCD/d" $(1); \
						echo "CONFIG_USB_XHCI_HCD=m" >>$(1); \
						sed -i "/CONFIG_USB_XHCI_HCD_DEBUGGING/d" $(1); \
						echo "# CONFIG_USB_XHCI_HCD_DEBUGGING is not set" >>$(1); \
						sed -i "/CONFIG_USB_EHCI_HCD/d" $(1); \
						echo "CONFIG_USB_EHCI_HCD=m" >>$(1); \
						sed -i "/CONFIG_USB_EHCI_HCD_PLATFORM/d" $(1); \
						echo "CONFIG_USB_EHCI_HCD_PLATFORM=y">>$(1); \
						sed -i "/CONFIG_USB_EHCI_ROOT_HUB_TT/d" $(1); \
						echo "CONFIG_USB_EHCI_ROOT_HUB_TT=y" >>$(1); \
						sed -i "/CONFIG_USB_EHCI_TT_NEWSCHED/d" $(1); \
						echo "CONFIG_USB_EHCI_TT_NEWSCHED=y" >>$(1); \
					else \
						sed -i "/CONFIG_USB_XHCI_HCD/d" $(1); \
						echo "CONFIG_USB_XHCI_HCD=y" >>$(1); \
						sed -i "/CONFIG_USB_XHCI_HCD_DEBUGGING/d" $(1); \
						echo "# CONFIG_USB_XHCI_HCD_DEBUGGING is not set" >>$(1); \
					fi; \
				fi; \
			fi; \
		fi; \
		if [ "$(IPV6SUPP)" = "y" ]; then \
			sed -i "/CONFIG_IPV6 is not set/d" $(1); \
			echo "CONFIG_IPV6=y" >>$(1); \
			sed -i "/CONFIG_IP6_NF_IPTABLES/d" $(1); \
			echo "CONFIG_IP6_NF_IPTABLES=y" >>$(1); \
			sed -i "/CONFIG_IP6_NF_MATCH_RT/d" $(1); \
			echo "CONFIG_IP6_NF_MATCH_RT=y" >>$(1); \
			sed -i "/CONFIG_IP6_NF_FILTER/d" $(1); \
			echo "CONFIG_IP6_NF_FILTER=m" >>$(1); \
			sed -i "/CONFIG_IP6_NF_TARGET_LOG/d" $(1); \
			echo "CONFIG_IP6_NF_TARGET_LOG=m" >>$(1); \
			if [ "$(CONFIG_BCMWL5)" = "y" ] && [ "$(ARM)" != "y" ]; then \
				sed -i "/CONFIG_IP6_NF_TARGET_SKIPLOG/d" $(1); \
				echo "CONFIG_IP6_NF_TARGET_SKIPLOG=m" >>$(1); \
			fi; \
			sed -i "/CONFIG_IP6_NF_TARGET_REJECT\>/d" $(1); \
			echo "CONFIG_IP6_NF_TARGET_REJECT=m" >>$(1); \
			sed -i "/CONFIG_IP6_NF_MANGLE/d" $(1); \
			echo "CONFIG_IP6_NF_MANGLE=m" >>$(1); \
			if [ "$(CONFIG_LINUX26)" = "y" ]; then \
				sed -i "/CONFIG_NF_CONNTRACK_IPV6/d" $(1); \
				echo "CONFIG_NF_CONNTRACK_IPV6=y" >>$(1); \
				sed -i "/CONFIG_IPV6_ROUTER_PREF/d" $(1); \
				echo "CONFIG_IPV6_ROUTER_PREF=y" >>$(1); \
				sed -i "/CONFIG_IPV6_SIT\b/d" $(1); \
				echo "CONFIG_IPV6_SIT=m" >>$(1); \
				sed -i "/CONFIG_IPV6_SIT_6RD/d" $(1); \
				echo "CONFIG_IPV6_SIT_6RD=y" >>$(1); \
				sed -i "/CONFIG_IPV6_MULTIPLE_TABLES/d" $(1); \
				echo "CONFIG_IPV6_MULTIPLE_TABLES=y" >>$(1); \
				sed -i "/CONFIG_IP6_NF_TARGET_ROUTE/d" $(1); \
				echo "CONFIG_IP6_NF_TARGET_ROUTE=m" >>$(1); \
				sed -i "/CONFIG_IPV6_MROUTE\b/d" $(1); \
				echo "CONFIG_IPV6_MROUTE=y" >>$(1); \
			fi; \
			if [ "$(CONFIG_LINUX30)" = "y" ]; then \
				sed -i "/CONFIG_IP6_NF_CONNTRACK/d" $(1); \
				echo "CONFIG_IP6_NF_CONNTRACK=m" >>$(1); \
				sed -i "/CONFIG_IPV6_ROUTER_PREF/d" $(1); \
				echo "CONFIG_IPV6_ROUTER_PREF=y" >>$(1); \
				sed -i "/CONFIG_IPV6_SIT\b/d" $(1); \
				echo "CONFIG_IPV6_SIT=m" >>$(1); \
				sed -i "/CONFIG_IPV6_SIT_6RD/d" $(1); \
				echo "CONFIG_IPV6_SIT_6RD=y" >>$(1); \
				sed -i "/CONFIG_IPV6_MULTIPLE_TABLES/d" $(1); \
				echo "CONFIG_IPV6_MULTIPLE_TABLES=y" >>$(1); \
				sed -i "/CONFIG_IP6_NF_FTP/d" $(1); \
				echo "CONFIG_IP6_NF_FTP=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_MATCH_LIMIT/d" $(1); \
				echo "CONFIG_IP6_NF_MATCH_LIMIT=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_MATCH_CONDITION/d" $(1); \
				echo "CONFIG_IP6_NF_MATCH_CONDITION=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_MATCH_MAC/d" $(1); \
				echo "CONFIG_IP6_NF_MATCH_MAC=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_MATCH_MULTIPORT/d" $(1); \
				echo "CONFIG_IP6_NF_MATCH_MULTIPORT=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_MATCH_MARK/d" $(1); \
				echo "CONFIG_IP6_NF_MATCH_MARK=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_MATCH_LENGTH/d" $(1); \
				echo "CONFIG_IP6_NF_MATCH_LENGTH=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_MATCH_STATE/d" $(1); \
				echo "CONFIG_IP6_NF_MATCH_STATE=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_TARGET_MARK/d" $(1); \
				echo "CONFIG_IP6_NF_TARGET_MARK=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_TARGET_TCPMSS/d" $(1); \
				echo "CONFIG_IP6_NF_TARGET_TCPMSS=m" >>$(1); \
				sed -i "/CONFIG_IP6_NF_TARGET_ROUTE/d" $(1); \
				echo "CONFIG_IP6_NF_TARGET_ROUTE=m" >>$(1); \
				sed -i "/CONFIG_IPV6_MROUTE\b/d" $(1); \
				echo "CONFIG_IPV6_MROUTE=y" >>$(1); \
			fi; \
		else \
			sed -i "/CONFIG_IPV6/d" $(1); \
			echo "# CONFIG_IPV6 is not set" >>$(1); \
		fi; \
		sed -i "/CONFIG_BCM57XX/d" $(1); \
		if [ "$(BCM57)" = "y" ]; then \
			sed -i "/CONFIG_ET_ALL_PASSIVE/d" $(1); \
			echo "CONFIG_BCM57XX=m" >>$(1); \
			echo "# CONFIG_ET_ALL_PASSIVE_ON is not set" >>$(1); \
			echo "CONFIG_ET_ALL_PASSIVE_RUNTIME=y" >>$(1); \
		else \
			echo "# CONFIG_BCM57XX is not set" >>$(1); \
		fi; \
		sed -i "/CONFIG_WL_USE_HIGH/d" $(1); \
		sed -i "/CONFIG_WL_USBAP/d" $(1); \
		if [ "$(USBAP)" = "y" ]; then \
			echo "CONFIG_WL_USE_HIGH=y" >> $(1); \
			echo "CONFIG_WL_USBAP=y" >>$(1); \
		else \
			echo "# CONFIG_WL_USE_HIGH is not set" >> $(1); \
			echo "# CONFIG_WL_USBAP is not set" >>$(1); \
		fi; \
		if [ "$(CONFIG_LINUX26)" = "y" ] && [ "$(EBTABLES)" = "y" ]; then \
			sed -i "/CONFIG_BRIDGE_NF_EBTABLES/d" $(1); \
			echo "CONFIG_BRIDGE_NF_EBTABLES=m" >>$(1); \
			if [ "$(IPV6SUPP)" = "y" ]; then \
				sed -i "/CONFIG_BRIDGE_EBT_IP6/d" $(1); \
				echo "CONFIG_BRIDGE_EBT_IP6=m" >>$(1); \
			fi; \
		fi; \
		sed -i "/CONFIG_NVRAM_64K/d" $(1); \
		if [ "$(NVRAM_64K)" = "y" ]; then \
			echo "CONFIG_NVRAM_64K=y" >>$(1); \
		else \
			echo "# CONFIG_NVRAM_64K is not set" >>$(1); \
		fi; \
		sed -i "/CONFIG_LOCALE2012/d" $(1); \
		if [ "$(LOCALE2012)" = "y" ]; then \
			echo "CONFIG_LOCALE2012=y" >>$(1); \
		else \
			echo "# CONFIG_LOCALE2012 is not set" >>$(1); \
		fi; \
		sed -i "/CONFIG_N56U_SR2/d" $(1); \
		if [ "$(N56U_SR2)" = "y" ]; then \
			echo "CONFIG_N56U_SR2=y" >>$(1); \
		else \
			echo "# CONFIG_N56U_SR2 is not set" >>$(1); \
		fi; \
		if [ "$(EXT4FS)" = "y" ]; then \
			sed -i "/CONFIG_EXT4_FS/d" $(1); \
			echo "CONFIG_EXT4_FS=m" >>$(1); \
			sed -i "/CONFIG_EXT4_FS_XATTR/d" $(1); \
			echo "CONFIG_EXT4_FS_XATTR=y" >>$(1); \
			sed -i "/CONFIG_EXT4_FS_POSIX_ACL/d" $(1); \
			echo "# CONFIG_EXT4_FS_POSIX_ACL is not set" >>$(1); \
			sed -i "/CONFIG_EXT4_FS_SECURITY/d" $(1); \
			echo "# CONFIG_EXT4_FS_SECURITY is not set" >>$(1); \
			sed -i "/CONFIG_EXT4_DEBUG/d" $(1); \
			echo "# CONFIG_EXT4_DEBUG is not set" >>$(1); \
		else \
			sed -i "/CONFIG_EXT4_FS/d" $(1); \
			echo "# CONFIG_EXT4_FS is not set" >>$(1); \
		fi; \
	fi; \
	if [ "$(SHP)" = "y" ] || [ "$(LFP)" = "y" ]; then \
		if [ "$(HND_ROUTER)" != "y" ]; then \
			sed -i "/CONFIG_IP_NF_LFP/d" $(1); \
			echo "CONFIG_IP_NF_LFP=y" >>$(1); \
		fi; \
 	fi; \
	if [ "$(DNSMQ)" = "y" ]; then \
		sed -i "/CONFIG_IP_NF_DNSMQ/d" $(1); \
		echo "CONFIG_IP_NF_DNSMQ=y" >>$(1); \
	fi; \
	if [ "$(USB)" = "" ]; then \
		sed -i "/CONFIG_MSDOS_PARTITION/d" $(1); \
		echo "# CONFIG_MSDOS_PARTITION is not set" >>$(1); \
		sed -i "/CONFIG_EFI_PARTITION/d" $(1); \
		echo "# CONFIG_EFI_PARTITION is not set" >>$(1); \
	else \
		if [ "$(PRINTER)" != "y" ]; then \
			sed -i "/CONFIG_USB_PRINTER/d" $(1); \
			echo "# CONFIG_USB_PRINTER is not set" >>$(1); \
		fi; \
		if [ "$(MODEM)" = "y" ]; then \
			if [ "$(BECEEM)" = "y" ]; then \
				sed -i "/CONFIG_USB_BECEEM/d" $(1); \
				echo "CONFIG_USB_BECEEM=m" >>$(1); \
			fi; \
			if [ "$(LESSMODEM)" = "y" ]; then \
				sed -i "/CONFIG_HSO/d" $(1); \
				echo "# CONFIG_HSO is not set" >>$(1); \
				sed -i "/CONFIG_USB_IPHETH/d" $(1); \
				echo "# CONFIG_USB_IPHETH is not set" >>$(1); \
			fi; \
			if [ "$(GOBI)" = "y" ] && [ "$(MULTIMODEM)" != "y" ]; then \
				sed -i "/CONFIG_USB_SERIAL/d" $(1); \
				echo "# CONFIG_USB_SERIAL is not set" >>$(1); \
				sed -i "/CONFIG_USB_NET_AX8817X/d" $(1); \
				echo "# CONFIG_USB_NET_AX8817X is not set" >>$(1); \
				sed -i "/CONFIG_USB_NET_CDCETHER/d" $(1); \
				echo "CONFIG_USB_NET_CDCETHER=m" >>$(1); \
				sed -i "/CONFIG_USB_NET_CDC_NCM/d" $(1); \
				echo "# CONFIG_USB_NET_CDC_NCM is not set" >>$(1); \
				sed -i "/CONFIG_USB_NET_CDC_MBIM/d" $(1); \
				echo "# CONFIG_USB_NET_CDC_MBIM is not set" >>$(1); \
				sed -i "/CONFIG_USB_NET_RNDIS_HOST/d" $(1); \
				echo "# CONFIG_USB_NET_RNDIS_HOST is not set" >>$(1); \
				sed -i "/CONFIG_USB_NET_QMI_WWAN/d" $(1); \
				echo "# CONFIG_USB_NET_QMI_WWAN is not set" >>$(1); \
				sed -i "/CONFIG_USB_IPHETH/d" $(1); \
				echo "# CONFIG_USB_IPHETH is not set" >>$(1); \
				sed -i "/CONFIG_USB_WDM/d" $(1); \
				echo "# CONFIG_USB_WDM is not set" >>$(1); \
			fi; \
		else \
			sed -i "/CONFIG_USB_SERIAL/d" $(1); \
			echo "# CONFIG_USB_SERIAL is not set" >>$(1); \
			sed -i "/CONFIG_USB_ACM/d" $(1); \
			echo "# CONFIG_USB_ACM is not set" >>$(1); \
			sed -i "/CONFIG_USB_USBNET/d" $(1); \
			echo "# CONFIG_USB_USBNET is not set" >>$(1); \
			sed -i "/CONFIG_USB_IPHETH/d" $(1); \
			echo "# CONFIG_USB_IPHETH is not set" >>$(1); \
			sed -i "/CONFIG_USB_WDM/d" $(1); \
			echo "# CONFIG_USB_WDM is not set" >>$(1); \
		fi; \
	fi; \
	if [ "$(ARMCPUSMP)" = "up" ]; then \
		sed -i "/CONFIG_GENERIC_CLOCKEVENTS_BROADCAST/d" $(1); \
		echo "CONFIG_HAVE_LATENCYTOP_SUPPORT=y" >>$(1); \
		sed -i "/CONFIG_GENERIC_LOCKBREAK/d" $(1); \
		echo "CONFIG_BROKEN_ON_SMP=y" >>$(1); \
		sed -i "/CONFIG_TREE_RCU/d" $(1); \
		echo "# CONFIG_TREE_RCU is not set" >>$(1); \
		sed -i "/CONFIG_TREE_PREEMPT_RCU/d" $(1); \
		echo "CONFIG_TREE_PREEMPT_RCU=y" >>$(1); \
		sed -i "/CONFIG_TINY_RCU/d" $(1); \
		echo "# CONFIG_TINY_RCU is not set" >>$(1); \
		sed -i "/CONFIG_USE_GENERIC_SMP_HELPERS/d" $(1); \
		sed -i "/CONFIG_STOP_MACHINE/d" $(1); \
		sed -i "/CONFIG_MUTEX_SPIN_ON_OWNER/d" $(1); \
		echo "# CONFIG_MUTEX_SPIN_ON_OWNER is not set" >>$(1); \
		sed -i "/CONFIG_ARM_ERRATA_742230/d" $(1); \
		sed -i "/CONFIG_ARM_ERRATA_742231/d" $(1); \
		sed -i "/CONFIG_ARM_ERRATA_720789/d" $(1); \
		sed -i "/CONFIG_SMP\b/d" $(1); \
		echo "# CONFIG_SMP is not set" >>$(1); \
		sed -i "/CONFIG_NR_CPUS=2/d" $(1); \
		sed -i "/CONFIG_HOTPLUG_CPU/d" $(1); \
		sed -i "/CONFIG_RPS=y/d" $(1); \
	fi; \
	if [ "$(ALPINE)" = "y" ]; then \
		sed -i "/CONFIG_SENSORS_AMC6821/d" $(1); \
		echo "CONFIG_SENSORS_AMC6821=m" >>$(1); \
		sed -i "/CONFIG_THERMAL_HWMON/d" $(1); \
		echo "CONFIG_THERMAL_HWMON=y" >>$(1); \
	fi ; \
	if [ "$(DUALWAN)" = "y" ]; then \
		if [ "$(CONFIG_LINUX26)" = "y" ] || [ "$(CONFIG_LINUX30)" = "y" ]; then \
			sed -i "/CONFIG_IP_ADVANCED_ROUTER/d" $(1); \
			echo "CONFIG_IP_ADVANCED_ROUTER=y" >>$(1); \
			if [ "$(ALPINE)" = "y" ] || [ "$(LANTIQ)" = "y" ] ; then \
				echo "# CONFIG_IP_FIB_TRIE_STATS is not set" >>$(1); \
			fi ; \
			sed -i "/CONFIG_ASK_IP_FIB_HASH/d" $(1); \
			echo "CONFIG_ASK_IP_FIB_HASH=y" >>$(1); \
			sed -i "/CONFIG_IP_FIB_TRIE\b/d" $(1); \
			echo "# CONFIG_IP_FIB_TRIE is not set" >>$(1); \
			sed -i "/CONFIG_IP_MULTIPLE_TABLES/d" $(1); \
			echo "CONFIG_IP_MULTIPLE_TABLES=y" >>$(1); \
			sed -i "/CONFIG_IP_ROUTE_MULTIPATH\>/d" $(1); \
			echo "CONFIG_IP_ROUTE_MULTIPATH=y" >>$(1); \
			sed -i "/CONFIG_IP_ROUTE_MULTIPATH_CACHED/d" $(1); \
			echo "# CONFIG_IP_ROUTE_MULTIPATH_CACHED is not set" >>$(1); \
			sed -i "/CONFIG_IP_ROUTE_VERBOSE/d" $(1); \
			echo "# CONFIG_IP_ROUTE_VERBOSE is not set" >>$(1); \
			sed -i "/CONFIG_IP_MROUTE_MULTIPLE_TABLES/d" $(1); \
			echo "CONFIG_IP_MROUTE_MULTIPLE_TABLES=y" >>$(1); \
			sed -i "/CONFIG_NETFILTER_XT_MATCH_STATISTIC/d" $(1); \
			echo "CONFIG_NETFILTER_XT_MATCH_STATISTIC=y" >>$(1); \
		fi ; \
	fi; \
	if [ "$(BT_CONN)" = "y" ]; then \
		if [ "$(LANTIQ)" = "y" ]; then \
			sed -i "/CONFIG_BT\b/d" $(1); \
			echo "CONFIG_BT=m" >>$(1); \
			sed -i "/CONFIG_BT_RFCOMM/d" $(1); \
			echo "# CONFIG_BT_RFCOMM is not set" >>$(1); \
			sed -i "/CONFIG_BT_BNEP/d" $(1); \
			echo "# CONFIG_BT_BNEP is not set" >>$(1); \
			sed -i "/CONFIG_BT_HIDP/d" $(1); \
			echo "# CONFIG_BT_HIDP is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIBTUSB/d" $(1); \
			echo "CONFIG_BT_HCIBTUSB=m" >>$(1); \
			sed -i "/CONFIG_BT_HCIUART/d" $(1); \
			echo "# CONFIG_BT_HCIUART is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIBCM203X/d" $(1); \
			echo "# CONFIG_BT_HCIBCM203X is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIBPA10X/d" $(1); \
			echo "# CONFIG_BT_HCIBPA10X is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIBFUSB/d" $(1); \
			echo "# CONFIG_BT_HCIBFUSB is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIVHCI/d" $(1); \
			echo "# CONFIG_BT_HCIVHCI is not set" >>$(1); \
			sed -i "/CONFIG_BT_MRVL/d" $(1); \
			echo "# CONFIG_BT_MRVL is not set" >>$(1); \
			sed -i "/CONFIG_BT_ATH3K/d" $(1); \
			echo "CONFIG_BT_ATH3K=m" >>$(1); \
		elif [ "$(ALPINE)" = "yyy" ]; then \
			sed -i "/CONFIG_BT\b/d" $(1); \
			echo "CONFIG_BT=y" >>$(1); \
			sed -i "/CONFIG_BT_RFCOMM\b/d" $(1); \
			echo "# CONFIG_BT_RFCOMM is not set" >>$(1); \
			sed -i "/CONFIG_BT_BNEP\b/d" $(1); \
			echo "# CONFIG_BT_BNEP is not set" >>$(1); \
			sed -i "/CONFIG_BT_HIDP\b/d" $(1); \
			echo "# CONFIG_BT_HIDP is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIBTUSB\b/d" $(1); \
			echo "# CONFIG_BT_HCIBTUSB is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIUART\b/d" $(1); \
			echo "CONFIG_BT_HCIUART=y" >>$(1); \
			sed -i "/CONFIG_BT_HCIUART_H4\b/d" $(1); \
			echo "CONFIG_BT_HCIUART_H4=y" >>$(1); \
			sed -i "/CONFIG_BT_HCIUART_BCSP\b/d" $(1); \
			echo "# CONFIG_BT_HCIUART_BCSP is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIUART_RTKH5\b/d" $(1); \
			echo "CONFIG_BT_HCIUART_RTKH5=y" >>$(1); \
			sed -i "/CONFIG_BT_HCIUART_ATH3K\b/d" $(1); \
			echo "# CONFIG_BT_HCIUART_ATH3K is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIUART_LL\b/d" $(1); \
			echo "# CONFIG_BT_HCIUART_LL is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIUART_3WIRE\b/d" $(1); \
			echo "# CONFIG_BT_HCIUART_3WIRE is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIBCM203X\b/d" $(1); \
			echo "# CONFIG_BT_HCIBCM203X is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIBPA10X\b/d" $(1); \
			echo "# CONFIG_BT_HCIBPA10X is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIBFUSB\b/d" $(1); \
			echo "# CONFIG_BT_HCIBFUSB is not set" >>$(1); \
			sed -i "/CONFIG_BT_HCIVHCI\b/d" $(1); \
			echo "# CONFIG_BT_HCIVHCI is not set" >>$(1); \
			sed -i "/CONFIG_BT_MRVL\b/d" $(1); \
			echo "# CONFIG_BT_MRVL is not set" >>$(1); \
		fi ; \
	fi ; \
	sed -i "/CONFIG_CFE_NVRAM_CHK/d" $(1); \
	if [ "$(CFE_NVRAM_CHK)" = "y" ]; then \
		echo "CONFIG_CFE_NVRAM_CHK=y" >>$(1); \
	else \
		echo "# CONFIG_CFE_NVRAM_CHK is not set" >>$(1); \
	fi; \
	if [ "$(DEBUG)" = "y" ] || [ "$(GDB)" = "y" ]; then \
		sed -i "/CONFIG_ELF_CORE/d" $(1); \
		echo "CONFIG_ELF_CORE=y" >>$(1); \
		if [ "$(BCMWL6A)" = "y" ]; then \
			sed -i "/CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS/d" $(1); \
			echo "# CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set" >>$(1); \
		fi; \
	fi; \
	sed -i "/CONFIG_DUAL_TRX/d" $(1); \
	if [ "$(DUAL_TRX)" = "y" ]; then \
		echo "CONFIG_DUAL_TRX=y" >>$(1); \
	else \
		echo "# CONFIG_DUAL_TRX is not set" >>$(1); \
	fi; \
	if [ "$(DUMP_OOPS_MSG)" = "y" ]; then \
		if [ "$(BUILD_NAME)" = "RT-AC66U" ] || [ "$(BUILD_NAME)" = "RT-N66U" ]; then \
			echo "CONFIG_DUMP_PREV_OOPS_MSG=y" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_ADDR=0x07FFE000" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_LEN=0x2000" >>$(1); \
		elif [ "$(BUILD_NAME)" = "RT-N65U" ]; then \
			echo "CONFIG_DUMP_PREV_OOPS_MSG=y" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_ADDR=0x01810000" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_LEN=0x2000" >>$(1); \
		elif [ "$(BCM_7114)" = "y" ] || [ "$(BCM7)" = "y" ]; then \
			echo "CONFIG_DUMP_PREV_OOPS_MSG=y" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_ADDR=0x80000000" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_LEN=0x3000" >>$(1); \
		elif [ "$(BUILD_NAME)" = "RT-AC56S" ]; then \
			echo "CONFIG_DUMP_PREV_OOPS_MSG=y" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_ADDR=0xC0522000" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_LEN=0x3000" >>$(1); \
		elif [ "$(BCM9)" = "y" ]; then \
			echo "CONFIG_DUMP_PREV_OOPS_MSG=y" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_ADDR=0x87000000" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_LEN=0x2000" >>$(1); \
		elif [ "$(ARM)" = "y" ]; then \
			echo "CONFIG_DUMP_PREV_OOPS_MSG=y" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_ADDR=0xC0000000" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_LEN=0x2000" >>$(1); \
		elif [ "$(RALINK)" = "y" ]; then \
			echo "CONFIG_DUMP_PREV_OOPS_MSG=y" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_ADDR=0x03300000" >>$(1); \
			echo "CONFIG_DUMP_PREV_OOPS_MSG_BUF_LEN=0x2000" >>$(1); \
		elif [ "$(QCA)" = "y" ]; then \
			echo "move to platform.mak" > /dev/null ; \
		else \
			echo "# CONFIG_DUMP_PREV_OOPS_MSG is not set" >>$(1); \
		fi; \
	else \
		echo "# CONFIG_DUMP_PREV_OOPS_MSG is not set" >>$(1); \
	fi; \
	sed -i "/CONFIG_JFFS_NVRAM/d" $(1); \
	if [ "$(JFFS_NVRAM)" = "y" ]; then \
                echo "CONFIG_JFFS_NVRAM=y" >>$(1); \
	else \
		echo "# CONFIG_JFFS_NVRAM is not set" >>$(1); \
        fi; \
	sed -i "/CONFIG_RTAC3200/d" $(1); \
	if [ "$(BUILD_NAME)" = "RT-AC3200" ]; then \
		echo "CONFIG_RTAC3200=y" >>$(1); \
	else \
		echo "# CONFIG_RTAC3200 is not set" >>$(1); \
	fi; \
	sed -i "/CONFIG_RTAC87U/d" $(1); \
	if [ "$(BUILD_NAME)" = "RT-AC87U" ]; then \
		echo "CONFIG_RTAC87U=y" >>$(1); \
	else \
		echo "# CONFIG_RTAC87U is not set" >>$(1); \
	fi; \
	sed -i "/CONFIG_RTAC88U/d" $(1); \
	if [ "$(BUILD_NAME)" = "RT-AC88U" ]; then \
		echo "CONFIG_RTAC88U=y" >>$(1); \
	else \
		echo "# CONFIG_RTAC88U is not set" >>$(1); \
	fi; \
	if [ "$(GMAC3)" = "y" ]; then \
		sed -i "/CONFIG_BCM_GMAC3/d" $(1); \
		echo "CONFIG_BCM_GMAC3=y" >>$(1); \
		sed -i "/CONFIG_BCM_FA/d" $(1); \
		echo "# CONFIG_BCM_FA is not set" >>$(1); \
	else \
		sed -i "/CONFIG_BCM_GMAC3/d" $(1); \
		echo "# CONFIG_BCM_GMAC3 is not set" >>$(1); \
		if [ "$(HND_ROUTER)" != "y" ]; then \
			sed -i "/CONFIG_BCM_FA/d" $(1); \
			echo "CONFIG_BCM_FA=y" >>$(1); \
		fi; \
	fi; \
	if [ "$(NODHD)" = "y" ]; then \
		sed -i "/CONFIG_BCM_GMAC3=y/d" $(1); \
		echo "# CONFIG_BCM_GMAC3 is not set" >>$(1); \
		sed -i "/CONFIG_BCM_FA/d" $(1); \
		echo "CONFIG_BCM_FA=y" >>$(1); \
		sed -i "/CONFIG_DHDAP/d" $(1); \
		echo "# CONFIG_DHDAP is not set" >>$(1); \
		sed -i "/CONFIG_DPSTA/d" $(1); \
		echo "# CONFIG_DPSTA is not set" >>$(1); \
	fi; \
	if [ "$(DHDAP)" = "y" ]; then \
		if [ "$(HND_ROUTER)" != "y" ]; then \
			sed -i "/CONFIG_DHDAP/d" $(1); \
			echo "CONFIG_DHDAP=m" >>$(1); \
		fi; \
		sed -i "/CONFIG_WL=m/d" $(1); \
		echo "# CONFIG_WL is not set" >>$(1); \
		sed -i "/CONFIG_WL_USE_APSTA/d" $(1); \
		echo "# CONFIG_WL_USE_APSTA is not set" >>$(1); \
		sed -i "/CONFIG_WL_ALL_PASSIVE_RUNTIME/d" $(1); \
		sed -i "/CONFIG_WAPI/d" $(1); \
		echo "# CONFIG_WAPI is not set" >>$(1); \
		sed -i "/CONFIG_WL_USE_AP/d" $(1); \
		echo "# CONFIG_WL_USE_AP is not set" >>$(1); \
		sed -i "/CONFIG_WL_USE_AP_SDSTD/d" $(1); \
		echo "# CONFIG_WL_USE_AP_SDSTD is not set" >>$(1); \
		sed -i "/CONFIG_WL_USE_STA/d" $(1); \
		echo "# CONFIG_WL_USE_STA is not set" >>$(1); \
		sed -i "/CONFIG_WL_USE_AP_ONCHIP_G/d" $(1); \
		echo "# CONFIG_WL_USE_AP_ONCHIP_G is not set" >>$(1); \
		sed -i "/CONFIG_WL_USE_STA_ONCHIP_G/d" $(1); \
		echo "# CONFIG_WL_USE_STA_ONCHIP_G is not set" >>$(1); \
		sed -i "/CONFIG_WL_USE_APSTA_ONCHIP_G/d" $(1); \
		echo "# CONFIG_WL_USE_APSTA_ONCHIP_G is not set" >>$(1); \
		sed -i "/CONFIG_WL_ALL_PASSIVE_ON/d" $(1); \
		echo "# CONFIG_WL_ALL_PASSIVE_ON is not set" >>$(1); \
		sed -i "/CONFIG_DPSTA/d" $(1); \
		echo "# CONFIG_DPSTA is not set" >>$(1); \
		sed -i "/CONFIG_PLC/d" $(1); \
		echo "# CONFIG_PLC is not set" >>$(1); \
	else \
		sed -i "/CONFIG_DHDAP/d" $(1); \
		echo "# CONFIG_DHDAP is not set" >>$(1); \
	fi; \
	if [ "$(DPSTA)" = "y" ]; then \
		sed -i "/CONFIG_DPSTA/d" $(1); \
		echo "CONFIG_DPSTA=m" >>$(1); \
	fi; \
	sed -i "/CONFIG_LINUX_MTD/d" $(1); \
	if [ "$(LINUX_MTD)" = "" ]; then \
		echo "CONFIG_LINUX_MTD=32" >>$(1); \
	else \
		echo "CONFIG_LINUX_MTD=$(LINUX_MTD)" >>$(1); \
	fi; \
	sed -i "/CONFIG_NF_CONNTRACK_EVENTS/d" $(1); \
	if [ "$(BWDPI)" = "y" ] || [ "$(HND_ROUTER)" = "y" ]; then \
		echo "CONFIG_NF_CONNTRACK_EVENTS=y" >>$(1); \
	else \
		echo "# CONFIG_NF_CONNTRACK_EVENTS is not set" >>$(1); \
	fi; \
	if [ "$(BWDPI)" = "y" ]; then \
		sed -i "/CONFIG_NET_SCH_HTB/d" $(1); \
		echo "CONFIG_NET_SCH_HTB=y" >>$(1); \
		sed -i "/CONFIG_NET_SCH_SFQ/d" $(1); \
		echo "CONFIG_NET_SCH_SFQ=y" >>$(1); \
		sed -i "/CONFIG_CLS_U32_PERF/d" $(1); \
		echo "CONFIG_CLS_U32_PERF=y" >>$(1); \
		sed -i "/CONFIG_CLS_U32_MARK/d" $(1); \
		echo "CONFIG_CLS_U32_MARK=y" >>$(1); \
	fi; \
	if [ "$(USB_DEBUG)" = "y" ]; then \
		sed -i "/CONFIG_USB_DEBUG/d" $(1); \
		echo "CONFIG_USB_DEBUG=y" >>$(1); \
		sed -i "/CONFIG_DEBUG_FS/d" $(1); \
		echo "CONFIG_DEBUG_FS=y" >>$(1); \
	fi; \
	if [ "$(TFAT)" = "y" ]; then \
		sed -i "/CONFIG_MSDOS_FS/d" $(1); \
		echo "# CONFIG_MSDOS_FS is not set" >>$(1); \
		sed -i "/CONFIG_VFAT_FS/d" $(1); \
		echo "# CONFIG_VFAT_FS is not set" >>$(1); \
	fi; \
	if [ "$(HFS)" = "open" ]; then \
		sed -i "/CONFIG_HFS_FS/d" $(1); \
		echo "CONFIG_HFS_FS=y" >>$(1); \
		sed -i "/CONFIG_HFSPLUS_FS/d" $(1); \
		echo "CONFIG_HFSPLUS_FS=y" >>$(1); \
		sed -i "/CONFIG_MAC_PARTITION/d" $(1); \
		echo "CONFIG_MAC_PARTITION=y" >>$(1); \
	fi; \
	if [ "$(BLINK_LED)" = "y" ]; then \
		sed -i "/CONFIG_USB_BUS_STATS/d" $(1); \
		echo "CONFIG_USB_BUS_STATS=y" >>$(1); \
	else \
		sed -i "/CONFIG_USB_BUS_STATS/d" $(1); \
		echo "# CONFIG_USB_BUS_STATS is not set" >>$(1); \
	fi; \
	if [ "$(DEBUGFS)" = "y" ]; then \
		sed -i "/CONFIG_DEBUG_FS/d" $(1); \
		echo "CONFIG_DEBUG_FS=y" >>$(1); \
		sed -i "/CONFIG_USB_MON/d" $(1); \
		echo "CONFIG_USB_MON=m" >>$(1); \
		if [ "$(ARM)" = "y" ]; then \
			sed -i "/CONFIG_GCOV_KERNEL/d" $(1); \
			echo "# CONFIG_GCOV_KERNEL is not set" >>$(1); \
			sed -i "/CONFIG_L2TP_DEBUGFS/d" $(1); \
			echo "# CONFIG_L2TP_DEBUGFS is not set" >>$(1); \
			sed -i "/CONFIG_JBD_DEBUG/d" $(1); \
			echo "# CONFIG_JBD_DEBUG is not set" >>$(1); \
			sed -i "/CONFIG_JBD2_DEBUG/d" $(1); \
			echo "# CONFIG_JBD2_DEBUG is not set" >>$(1); \
			sed -i "/CONFIG_LKDTM/d" $(1); \
			echo "# CONFIG_LKDTM is not set" >>$(1); \
			sed -i "/CONFIG_DYNAMIC_DEBUG/d" $(1); \
			echo "# CONFIG_DYNAMIC_DEBUG is not set" >>$(1); \
		fi; \
	fi; \
	if [ "$(BONDING)" = "y" ]; then \
		sed -i "/CONFIG_BONDING/d" $(1); \
		echo "CONFIG_BONDING=m" >>$(1); \
	fi; \
	if [ "$(PLC_UTILS)" = "y" ]; then \
		sed -i "/CONFIG_MTD_JFFS2_PARTS/d" $(1); \
		echo "# CONFIG_MTD_JFFS2_PARTS is not set" >>$(1); \
		sed -i "/CONFIG_MTD_PLC_PARTS/d" $(1); \
		echo "CONFIG_MTD_PLC_PARTS=y" >>$(1); \
	fi; \
	if [ "$(BCM_7114)" = "y" ]; then \
		sed -i "/CONFIG_CR4_OFFLOAD/d" $(1); \
		echo "# CONFIG_CR4_OFFLOAD is not set" >>$(1); \
		sed -i "/CONFIG_PLAT_UART_CLOCKS/d" $(1); \
		echo "# CONFIG_PLAT_UART_CLOCKS is not set" >>$(1); \
	fi; \
	if [ "$(BCM9)" = "y" ]; then \
		sed -i "/CONFIG_CR4_OFFLOAD/d" $(1); \
		echo "# CONFIG_CR4_OFFLOAD is not set" >>$(1); \
		sed -i "/CONFIG_PLAT_MUX_CONSOLE_CCB/d" $(1); \
		echo "# CONFIG_PLAT_MUX_CONSOLE_CCB is not set" >>$(1); \
		sed -i "/CONFIG_PLAT_GPIOLIB/d" $(1); \
		echo "# CONFIG_PLAT_GPIOLIB is not set" >>$(1); \
		sed -i "/CONFIG_PLAT_UART_CLOCKS/d" $(1); \
		echo "# CONFIG_PLAT_UART_CLOCKS is not set" >>$(1); \
		sed -i "/CONFIG_GENERIC_GPIO/d" $(1); \
		echo "# CONFIG_GENERIC_GPIO is not set" >>$(1); \
		sed -i "/CONFIG_BCM_GMAC3/d" $(1); \
		echo "# CONFIG_BCM_GMAC3 is not set" >>$(1); \
		sed -i "/CONFIG_DHDAP/d" $(1); \
		echo "# CONFIG_DHDAP is not set" >>$(1); \
		sed -i "/CONFIG_YAFFS_FS/d" $(1); \
		echo "# CONFIG_YAFFS_FS is not set" >>$(1); \
	fi; \
	if [ "$(RTAC1200G)" = "y" ]; then \
		sed -i "/CONFIG_MTD_BRCMNAND/d" $(1); \
		echo "# CONFIG_MTD_BRCMNAND is not set" >>$(1); \
		sed -i "/CONFIG_MTD_BRCMNAND/d" $(1); \
		echo "# CONFIG_MTD_BRCMNAND is not set" >>$(1); \
		sed -i "/CONFIG_MTD_NFLASH/d" $(1); \
		echo "# CONFIG_MTD_NFLASH is not set" >>$(1); \
		sed -i "/CONFIG_MTD_NAND_ECC/d" $(1); \
		echo "# CONFIG_MTD_NAND_ECC is not set" >>$(1); \
		sed -i "/CONFIG_MTD_NAND/d" $(1); \
		echo "# CONFIG_MTD_NAND is not set" >>$(1); \
		sed -i "/CONFIG_MTD_NAND_IDS/d" $(1); \
		echo "# CONFIG_MTD_NAND_IDS is not set" >>$(1); \
		sed -i "/CONFIG_MTD_BCMCONF_PARTS/d" $(1); \
		echo "# CONFIG_MTD_BCMCONF_PARTS is not set" >>$(1); \
	fi; \
	if [ "$(RGMII_BCM_FA)" = "y" ]; then \
		sed -i "/CONFIG_RGMII_BCM_FA/d" $(1); \
		echo "CONFIG_RGMII_BCM_FA=y" >>$(1); \
	fi; \
	if [ "$(SWITCH2)" = "RTL8365MB" ]; then \
		sed -i "/CONFIG_RTL8370MB/d" $(1); \
		echo "# CONFIG_RTL8370MB is not set" >>$(1); \
		sed -i "/CONFIG_RTL8365MB/d" $(1); \
		echo "CONFIG_RTL8365MB=m" >>$(1); \
	else \
	if [ "$(SWITCH2)" = "RTL8370MB" ]; then \
		sed -i "/CONFIG_RTL8365MB/d" $(1); \
		echo "# CONFIG_RTL8365MB is not set" >>$(1); \
		sed -i "/CONFIG_RTL8370MB/d" $(1); \
		echo "CONFIG_RTL8370MB=m" >>$(1); \
	else \
	if [ "$(SWITCH2)" = "" ]; then \
		sed -i "/CONFIG_RTL8365MB/d" $(1); \
		echo "# CONFIG_RTL8365MB is not set" >>$(1); \
		sed -i "/CONFIG_RTL8370MB/d" $(1); \
		echo "# CONFIG_RTL8370MB is not set" >>$(1); \
	fi; \
	fi; \
	fi; \
	if [ "$(BCM_MMC)" = "y" ]; then \
		sed -i "/CONFIG_MMC/d" $(1); \
		echo "CONFIG_MMC=y" >>$(1); \
		sed -i "/CONFIG_MMC_BLOCK/d" $(1); \
		echo "CONFIG_MMC_BLOCK=y" >>$(1); \
		sed -i "/CONFIG_MMC_BLOCK_BOUNCE/d" $(1); \
		echo "CONFIG_MMC_BLOCK_BOUNCE=y" >>$(1); \
		sed -i "/CONFIG_MMC_TEST/d" $(1); \
		echo "# CONFIG_MMC_TEST is not set" >>$(1); \
		sed -i "/CONFIG_IWMC3200TOP/d" $(1); \
		echo "# CONFIG_IWMC3200TOP is not set" >>$(1); \
		sed -i "/CONFIG_MMC_DEBUG/d" $(1); \
		echo "CONFIG_MMC_DEBUG=y" >>$(1); \
		sed -i "/CONFIG_MMC_UNSAFE_RESUME/d" $(1); \
		echo "# CONFIG_MMC_UNSAFE_RESUME is not set" >>$(1); \
		sed -i "/CONFIG_SDIO_UART/d" $(1); \
		echo "# CONFIG_SDIO_UART is not set" >>$(1); \
		sed -i "/CONFIG_MMC_SDHCI/d" $(1); \
		echo "CONFIG_MMC_SDHCI=y" >>$(1); \
		sed -i "/CONFIG_MMC_SDHCI_PCI/d" $(1); \
		echo "CONFIG_MMC_SDHCI_PCI=y" >>$(1); \
		sed -i "/CONFIG_MMC_RICOH_MMC/d" $(1); \
		echo "# CONFIG_MMC_RICOH_MMC is not set" >>$(1); \
		sed -i "/CONFIG_MMC_SDHCI_PLTFM/d" $(1); \
		echo "# CONFIG_MMC_SDHCI_PLTFM is not set" >>$(1); \
		sed -i "/CONFIG_MMC_TIFM_SD/d" $(1); \
		echo "# CONFIG_MMC_TIFM_SD is not set" >>$(1); \
		sed -i "/CONFIG_MMC_CB710/d" $(1); \
		echo "# CONFIG_MMC_CB710 is not set" >>$(1); \
		sed -i "/CONFIG_MMC_VIA_SDMMC/d" $(1); \
		echo "# CONFIG_MMC_VIA_SDMMC is not set" >>$(1); \
		sed -i "/CONFIG_MMC_SDHCI_IO_ACCESSORS/d" $(1); \
		echo "CONFIG_MMC_SDHCI_IO_ACCESSORS=y" >>$(1); \
	fi; \
	if [ "$(HND_ROUTER)" != "y" ]; then \
		sed -i "/CONFIG_BCM_RECVFILE/d" $(1); \
		if [ "$(BCM_RECVFILE)" = "y" ]; then \
			echo "CONFIG_BCM_RECVFILE=y" >>$(1); \
		else \
			echo "# CONFIG_BCM_RECVFILE is not set" >>$(1); \
		fi; \
	fi; \
	if [ "$(IPSEC)" = "y" ] || \
	   [ "$(IPSEC)" = "QUICKSEC" ] || \
	   [ "$(IPSEC)" = "STRONGSWAN" ]; then \
		sed -i "/CONFIG_XFRM is not set/d" $(1); \
		echo "CONFIG_XFRM=y" >>$(1); \
		sed -i "/CONFIG_XFRM_USER is not set/d" $(1); \
		echo "CONFIG_XFRM_USER=m" >>$(1); \
		sed -i "/CONFIG_NET_KEY is not set/d" $(1); \
		echo "CONFIG_NET_KEY=y" >>$(1); \
		sed -i "/ CONFIG_NETFILTER_XT_MATCH_POLICY is not set/d" $(1); \
		echo "CONFIG_NETFILTER_XT_MATCH_POLICY=y" >>$(1); \
		sed -i "/CONFIG_IP_ROUTE_VERBOSE is not set/d" $(1); \
		echo "CONFIG_IP_ROUTE_VERBOSE=y" >>$(1); \
		sed -i "/CONFIG_INET is not set/d" $(1); \
		echo "CONFIG_INET=y" >>$(1); \
		sed -i "/CONFIG_INET_AH is not set/d" $(1); \
		echo "CONFIG_INET_AH=m" >>$(1); \
		sed -i "/CONFIG_INET_ESP is not set/d" $(1); \
		echo "CONFIG_INET_ESP=m" >>$(1); \
		sed -i "/CONFIG_INET_IPCOMP is not set/d" $(1); \
		echo "CONFIG_INET_IPCOMP=m" >>$(1); \
		sed -i "/CONFIG_INET_XFRM_TUNNEL is not set/d" $(1); \
		echo "CONFIG_INET_XFRM_TUNNEL=y" >>$(1); \
		sed -i "/CONFIG_INET_TUNNEL is not set/d" $(1); \
		echo "CONFIG_INET_TUNNEL=y" >>$(1); \
		sed -i "/CONFIG_INET_XFRM_MODE_TRANSPORT is not set/d" $(1); \
		echo "CONFIG_INET_XFRM_MODE_TRANSPORT=y" >>$(1); \
		sed -i "/CONFIG_INET_XFRM_MODE_TUNNEL is not set/d" $(1); \
		echo "CONFIG_INET_XFRM_MODE_TUNNEL=y" >>$(1); \
		sed -i "/CONFIG_NETFILTER is not set/d" $(1); \
		echo "CONFIG_NETFILTER=y" >>$(1); \
		sed -i "/CONFIG_NETFILTER_XTABLES is not set/d" $(1); \
		echo "CCONFIG_NETFILTER_XTABLES=y" >>$(1); \
		sed -i "/CONFIG_NETFILTER_XT_MATCH_POLICY is not set/d" $(1); \
		echo "CONFIG_NETFILTER_XT_MATCH_POLICY=y" >>$(1); \
		if [ "$(IPV6SUPP)" = "y" ]; then \
			sed -i "/CONFIG_INET6_AH is not set/d" $(1); \
			echo "CONFIG_INET6_AH=y" >>$(1); \
			sed -i "/CONFIG_INET6_ESP is not set/d" $(1); \
			echo "CONFIG_INET6_ESP=y" >>$(1); \
			sed -i "/CONFIG_INET6_IPCOMP is not set/d" $(1); \
			echo "CONFIG_INET6_IPCOMP=y" >>$(1); \
			sed -i "/CONFIG_INET6_XFRM_TUNNEL is not set/d" $(1); \
			echo "CONFIG_INET6_XFRM_TUNNEL=y" >>$(1); \
			sed -i "/CONFIG_INET6_TUNNEL is not set/d" $(1); \
			echo "CONFIG_INET6_TUNNEL=y" >>$(1); \
			sed -i "/CONFIG_INET6_XFRM_MODE_TRANSPORT is not set/d" $(1); \
			echo "CONFIG_INET6_XFRM_MODE_TRANSPORT=y" >>$(1); \
			sed -i "/CONFIG_INET6_XFRM_MODE_TUNNEL is not set/d" $(1); \
			echo "CONFIG_INET6_XFRM_MODE_TUNNEL=y" >>$(1); \
			sed -i "/CONFIG_IPV6_MULTIPLE_TABLES is not set/d" $(1); \
			echo "CONFIG_IPV6_MULTIPLE_TABLES=y" >>$(1); \
			sed -i "/CONFIG_INET_XFRM_MODE_BEET is not set/d" $(1); \
			echo "CONFIG_INET_XFRM_MODE_BEET=y" >>$(1); \
			sed -i "/CONFIG_INET6_XFRM_MODE_BEET is not set/d" $(1); \
			echo "CONFIG_INET6_XFRM_MODE_BEET=y" >>$(1); \
		fi; \
		sed -i "/CONFIG_CRYPTO_NULL is not set/d" $(1); \
		echo "CONFIG_CRYPTO_NULL=y" >>$(1); \
		sed -i "/CONFIG_CRYPTO_SHA256 is not set/d" $(1); \
		echo "CONFIG_CRYPTO_SHA256=y" >>$(1); \
		sed -i "/CONFIG_CRYPTO_SHA512 is not set/d" $(1); \
		echo "CONFIG_CRYPTO_SHA512=y" >>$(1); \
	fi; \
	if [ "$(WTFAST)" = "y" ]; then \
		sed -i "/CONFIG_NETFILTER_TPROXY/d" $(1); \
		echo "CONFIG_NETFILTER_TPROXY=m" >>$(1); \
		sed -i "/CONFIG_NETFILTER_XT_MATCH_COMMENT/d" $(1); \
		echo "CONFIG_NETFILTER_XT_MATCH_COMMENT=m" >>$(1); \
		sed -i "/CONFIG_NETFILTER_XT_MATCH_SOCKET/d" $(1); \
		echo "CONFIG_NETFILTER_XT_MATCH_SOCKET=m" >>$(1); \
		sed -i "/CONFIG_NETFILTER_XT_TARGET_TPROXY/d" $(1); \
		echo "CONFIG_NETFILTER_XT_TARGET_TPROXY=m" >>$(1); \
	fi;\
	if [ "$(OPENVPN)" = "y" ]; then \
		sed -i "/CONFIG_TUN/d" $(1); \
		echo "CONFIG_TUN=m" >>$(1); \
	fi;\
	if [ "$(VPN_FUSION)" = "y" ]; then \
		sed -i "/CONFIG_PPP_MPPE/d" $(1); \
		echo "CONFIG_PPP_MPPE=y" >>$(1); \
		sed -i "/CONFIG_PPP_DEFLATE/d" $(1); \
		echo "CONFIG_PPP_DEFLATE=y" >>$(1); \
		sed -i "/CONFIG_PPP_BSDCOMP/d" $(1); \
		echo "CONFIG_PPP_BSDCOMP=y" >>$(1); \
		sed -i "/CONFIG_IP_NF_TARGET_ROUTE/d" $(1); \
		echo "CONFIG_IP_NF_TARGET_ROUTE=y" >>$(1); \
		sed -i "/CONFIG_PPP_SYNC_TTY is not set/d" $(1); \
		echo "CONFIG_PPP_SYNC_TTY=y" >>$(1); \
		sed -i "/CONFIG_PPP_MULTILINK/d" $(1); \
		echo "CONFIG_PPP_MULTILINK=y" >>$(1); \
	fi; \
	)
	$(call platformKernelConfig, $(1))
	$(call extraKernelConfig, $(1))
endef
