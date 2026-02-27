# 21.02.7 ramips/mt7621
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/mt7621/";
  sha256sums = {
    hash = "sha256-WrUR0oLsAhJ04UJN+xGRVJi8cV4aP3A1Ewrqkxeac0U=";
    name = "ramips_mt7621-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/mt7621/sha256sums";
  };
  imagebuilder = {
    sha256 = "47f14c7f5026261f929da395ebacc5d6c850317869b2e56469f5626ae8c80749";
    filename = "immortalwrt-imagebuilder-21.02.7-ramips-mt7621.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-MwPErlf6DOXgqaLwWMlMqZiaEd9WuFHJXc3nuPyM1eU=";
    name = "ramips_mt7621-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/mt7621/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      adslr_g7 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      afoundry_ew1200 = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-mt76x2"
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      alfa-network_quad-e4g = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-sdhci-mt7620"
          "kmod-usb3"
          "uboot-envtools"
          "-wpad-openssl"
        ];
      };
      ampedwireless_ally-00x19k = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "uboot-envtools"
        ];
      };
      ampedwireless_ally-r1900k = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "uboot-envtools"
          "kmod-usb3"
        ];
      };
      asiarf_ap7621-001 = {
        device_packages = [
          "kmod-sdhci-mt7620"
          "kmod-mt76x2"
          "kmod-usb3"
          "-wpad-openssl"
        ];
      };
      asiarf_ap7621-nv1 = {
        device_packages = [
          "kmod-sdhci-mt7620"
          "kmod-mt76x2"
          "kmod-usb3"
          "-wpad-openssl"
        ];
      };
      asus_rt-ac57u = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      asus_rt-ac65p = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "uboot-envtools"
        ];
      };
      asus_rt-ac85p = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "uboot-envtools"
        ];
      };
      asus_rt-n56u-b1 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      buffalo_wsr-1166dhp = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
        ];
      };
      buffalo_wsr-600dhp = {
        device_packages = [
          "kmod-mt7603"
          "kmod-rt2800-pci"
        ];
      };
      cudy_wr1300 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      cudy_wr2100 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      d-team_newifi-d2 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      d-team_pbr-m1 = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-sdhci-mt7620"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-1960-a1 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-2640-a1 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-2660-a1 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-860l-b1 = {
        device_packages = [
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-867-a1 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      dlink_dir-878-a1 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      dlink_dir-882-a1 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-882-r1 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      edimax_ra21s = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      edimax_re23s = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      edimax_rg21s = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-1167ghbk2-s = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-1167gs2-b = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-1167gst2 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-1750gs = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-1750gst2 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-1750gsv = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-1900gst = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-2533ghbk-i = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-2533gst = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      elecom_wrc-2533gst2 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      firefly_firewrt = {
        device_packages = [
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      gehua_ghl-r-001 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      glinet_gl-mt1300 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
        ];
      };
      gnubee_gb-pc1 = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-usb3"
          "kmod-sdhci-mt7620"
          "-wpad-openssl"
        ];
      };
      gnubee_gb-pc2 = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-usb3"
          "kmod-sdhci-mt7620"
          "-wpad-openssl"
        ];
      };
      h3c_tx1800-plus = {
        device_packages = [
          "kmod-mt7915e"
          "uboot-envtools"
        ];
      };
      h3c_tx1801-plus = {
        device_packages = [
          "kmod-mt7915e"
          "uboot-envtools"
        ];
      };
      h3c_tx1806 = {
        device_packages = [
          "kmod-mt7915e"
          "uboot-envtools"
        ];
      };
      hiwifi_hc5962 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
        ];
      };
      iodata_wn-ax1167gr = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
        ];
      };
      iodata_wn-ax1167gr2 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      iodata_wn-ax2033gr = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      iodata_wn-dx1167r = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      iodata_wn-dx1200gr = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7663-firmware-ap"
        ];
      };
      iodata_wn-gx300gr = {
        device_packages = [ "kmod-mt7603" ];
      };
      iodata_wnpr2600g = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      iptime_a6ns-m = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      iptime_a8004t = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
        ];
      };
      jcg_jhr-ac876m = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      jcg_q20 = {
        device_packages = [
          "kmod-mt7915e"
          "uboot-envtools"
        ];
      };
      jcg_q20-lzma-loader = {
        device_packages = [
          "kmod-mt7915e"
          "uboot-envtools"
        ];
      };
      jcg_q20-pb-boot = {
        device_packages = [
          "kmod-mt7915e"
          "uboot-envtools"
        ];
      };
      jcg_y2 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
        ];
      };
      jdcloud_re-sp-01b = {
        device_packages = [
          "kmod-fs-ext4"
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-sdhci-mt7620"
          "kmod-usb3"
        ];
      };
      lenovo_newifi-d1 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-sdhci-mt7620"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      linksys_e5600 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7663-firmware-ap"
          "uboot-envtools"
        ];
      };
      linksys_ea7300-v1 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "uboot-envtools"
        ];
      };
      linksys_ea7300-v2 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "uboot-envtools"
          "kmod-mt7603"
        ];
      };
      linksys_ea7500-v2 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "uboot-envtools"
        ];
      };
      linksys_ea8100-v1 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "uboot-envtools"
        ];
      };
      linksys_re6500 = {
        device_packages = [ "kmod-mt76x2" ];
      };
      mediatek_ap-mt7621a-v60 = {
        device_packages = [
          "kmod-usb3"
          "kmod-sdhci-mt7620"
          "kmod-sound-mt7620"
          "-wpad-openssl"
        ];
      };
      mediatek_mt7621-eval-board = {
        device_packages = [ "-wpad-openssl" ];
      };
      mikrotik_routerboard-750gr3 = {
        device_packages = [
          "kmod-usb3"
          "-wpad-openssl"
        ];
      };
      mikrotik_routerboard-760igs = {
        device_packages = [
          "kmod-usb3"
          "kmod-sfp"
          "-wpad-openssl"
        ];
      };
      mikrotik_routerboard-m11g = {
        device_packages = [ "-wpad-openssl" ];
      };
      mikrotik_routerboard-m33g = {
        device_packages = [ "-wpad-openssl" ];
      };
      mqmaker_witi = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-mt76x2"
          "kmod-sdhci-mt7620"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      mtc_wr1201 = {
        device_packages = [
          "kmod-sdhci-mt7620"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      netgear_ex6150 = {
        device_packages = [ "kmod-mt76x2" ];
      };
      netgear_r6220 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt76x2"
        ];
      };
      netgear_r6260 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      netgear_r6350 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      netgear_r6700-v2 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      netgear_r6800 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      netgear_r6850 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      netgear_r6900-v2 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      netgear_r7200 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      netgear_wac104 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt76x2"
        ];
      };
      netgear_wac124 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      netgear_wndr3700-v5 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      netis_wf2881 = {
        device_packages = [
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      phicomm_k2p = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      planex_vr500 = {
        device_packages = [
          "kmod-usb3"
          "-wpad-openssl"
        ];
      };
      raisecom_msg1500-x-00 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "uboot-envtools"
        ];
      };
      samknows_whitebox-v8 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "uboot-envtools"
        ];
      };
      sercomm_na502 = {
        device_packages = [
          "kmod-mt76x2"
          "kmod-mt7603"
          "kmod-usb3"
        ];
      };
      storylink_sap-g3200u3 = {
        device_packages = [
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      telco-electronics_x1 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt76"
        ];
      };
      thunder_timecloud = {
        device_packages = [
          "kmod-usb3"
          "-wpad-openssl"
        ];
      };
      totolink_a7000r = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      totolink_x5000r = {
        device_packages = [ "kmod-mt7915e" ];
      };
      tplink_archer-a6-v3 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7663-firmware-ap"
        ];
      };
      tplink_archer-c6u-v1 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7663-firmware-ap"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      tplink_eap235-wall-v1 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7663-firmware-ap"
        ];
      };
      tplink_re350-v1 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
        ];
      };
      tplink_re500-v1 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      tplink_re650-v1 = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      ubnt_edgerouter-x = {
        device_packages = [ "-wpad-openssl" ];
      };
      ubnt_edgerouter-x-sfp = {
        device_packages = [
          "-wpad-openssl"
          "kmod-i2c-algo-pca"
          "kmod-gpio-pca953x"
          "kmod-sfp"
        ];
      };
      ubnt_unifi-6-lite = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7915e"
        ];
      };
      ubnt_unifi-nanohd = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      unielec_u7621-01-16m = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
        ];
      };
      unielec_u7621-06-16m = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-sdhci-mt7620"
          "kmod-usb3"
          "-wpad-openssl"
        ];
      };
      unielec_u7621-06-64m = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-sdhci-mt7620"
          "kmod-usb3"
          "-wpad-openssl"
        ];
      };
      wavlink_wl-wn531a6 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
        ];
      };
      wevo_11acnas = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      wevo_w2914ns-v2 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      winstars_ws-wn583a6 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      xiaomi_mi-router-3-pro = {
        device_packages = [
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "uboot-envtools"
        ];
      };
      xiaomi_mi-router-3g = {
        device_packages = [
          "uboot-envtools"
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      xiaomi_mi-router-3g-v2 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
        ];
      };
      xiaomi_mi-router-4 = {
        device_packages = [
          "uboot-envtools"
          "kmod-mt7603"
          "kmod-mt76x2"
        ];
      };
      xiaomi_mi-router-4a-gigabit = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
        ];
      };
      xiaomi_mi-router-4a-gigabit-v2 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7663-firmware-ap"
        ];
      };
      xiaomi_mi-router-ac2100 = {
        device_packages = [
          "uboot-envtools"
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      xiaomi_mi-router-cr6606 = {
        device_packages = [
          "kmod-mt7915e"
          "uboot-envtools"
        ];
      };
      xiaomi_mi-router-cr6608 = {
        device_packages = [
          "kmod-mt7915e"
          "uboot-envtools"
        ];
      };
      xiaomi_mi-router-cr6609 = {
        device_packages = [
          "kmod-mt7915e"
          "uboot-envtools"
        ];
      };
      xiaomi_redmi-router-ac2100 = {
        device_packages = [
          "uboot-envtools"
          "kmod-mt7603"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
        ];
      };
      xiaoyu_xy-c5 = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-usb3"
          "-wpad-openssl"
        ];
      };
      xzwifi_creativebox-v1 = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-sdhci-mt7620"
          "kmod-usb3"
          "-wpad-openssl"
        ];
      };
      youhua_wr1200js = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      youku_yk-l2 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-sdhci-mt7620"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      yuncore_ax820 = {
        device_packages = [ "kmod-mt7915e" ];
      };
      zbtlink_zbt-we1326 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-sdhci-mt7620"
        ];
      };
      zbtlink_zbt-we3526 = {
        device_packages = [
          "kmod-sdhci-mt7620"
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      zbtlink_zbt-wg2626 = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-sdhci-mt7620"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      zbtlink_zbt-wg3526-16m = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-sdhci-mt7620"
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      zbtlink_zbt-wg3526-32m = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-sdhci-mt7620"
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      zio_freezio = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      zte_e8820s = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt76x2"
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      zyxel_nr7101 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-usb3"
          "uboot-envtools"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
        ];
      };
      zyxel_wap6805 = {
        device_packages = [
          "kmod-mt7603"
          "kmod-mt7621-qtn-rgmii"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/mt7621/packages/";
    sourceInfo = {
      hash = "sha256-58Q1coAp4J73DVWOgnp02BUDA8cwUFRYcy3QBy0fxGk=";
      name = "ramips_mt7621-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/mt7621/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc";
  feeds = import ./../../../packages/mipsel_24kc.nix;
}
