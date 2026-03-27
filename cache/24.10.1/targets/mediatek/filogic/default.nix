# 24.10.1 mediatek/filogic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/filogic/";
  sha256sums = {
    hash = "sha256-Pa0pO13qQJUn3vnyDosqHvUec6YFV4p2TKc9mfo7LLg=";
    name = "mediatek_filogic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/filogic/sha256sums";
  };
  imagebuilder = {
    sha256 = "271dbd7958e7ad4030457d492a6dfbf2b49cd7e19d0a00a808b4592027d85a54";
    filename = "immortalwrt-imagebuilder-24.10.1-mediatek-filogic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/DiJ4GmFzUJrI4cMFHsnCT1JjSCu5YxVcn3RQYkswyU=";
    name = "mediatek_filogic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/filogic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "f2c63d42896f12da2b55f2c2b626e7be";
      version = "6.6.86";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "bridger"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-crypto-hw-safexcel"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-phy-aquantia"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.86-1-f2c63d42896f12da2b55f2c2b626e7be";
    profiles = {
      abt_asr3000 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      acelink_ew-7886cax = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      acer_predator-w6 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "kmod-mt7916-firmware"
          "mt7986-wo-firmware"
          "f2fsck"
          "mkf2fs"
          "automount"
        ];
      };
      acer_predator-w6d = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7916-firmware"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
        ];
      };
      acer_vero-w6m = {
        device_packages = [
          "kmod-leds-ktd202x"
          "kmod-mt7915e"
          "kmod-mt7916-firmware"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
        ];
      };
      arcadyan_mozart = {
        device_packages = [
          "kmod-hwmon-pwmfan"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-mt7996-firmware"
        ];
      };
      asus_rt-ax59u = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      asus_tuf-ax4200 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      asus_tuf-ax6000 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      bananapi_bpi-r3 = {
        device_packages = [
          "kmod-hwmon-pwmfan"
          "kmod-i2c-gpio"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "kmod-sfp"
          "kmod-usb3"
          "f2fsck"
          "mkf2fs"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      bananapi_bpi-r3-mini = {
        device_packages = [
          "kmod-hwmon-pwmfan"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "kmod-phy-airoha-en8811h"
          "kmod-usb3"
          "f2fsck"
          "mkf2fs"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      bananapi_bpi-r4 = {
        device_packages = [
          "kmod-hwmon-pwmfan"
          "kmod-i2c-mux-pca954x"
          "kmod-eeprom-at24"
          "kmod-mt7996-firmware"
          "kmod-mt7996-233-firmware"
          "kmod-rtc-pcf8563"
          "kmod-sfp"
          "kmod-usb3"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "mt7988-wo-firmware"
        ];
      };
      bananapi_bpi-r4-poe = {
        device_packages = [
          "kmod-hwmon-pwmfan"
          "kmod-i2c-mux-pca954x"
          "kmod-eeprom-at24"
          "kmod-mt7996-firmware"
          "kmod-mt7996-233-firmware"
          "kmod-rtc-pcf8563"
          "kmod-sfp"
          "kmod-usb3"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "mt7988-wo-firmware"
          "mt7988-2p5g-phy-firmware"
        ];
      };
      cetron_ct3003 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cetron_ct3003-ubootmod = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cmcc_a10-stock = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cmcc_a10-ubootmod = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cmcc_rax3000m = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
          "f2fsck"
          "mkf2fs"
        ];
      };
      cmcc_rax3000me = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
          "f2fsck"
          "mkf2fs"
        ];
      };
      comfast_cf-e393ax = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      confiabits_mt7981 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      cudy_ap3000-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_ap3000outdoor-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_m3000-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_re3000-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_tr3000-v1 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "automount"
        ];
      };
      cudy_tr3000-v1-ubootmod = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "automount"
        ];
      };
      cudy_wr3000-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_wr3000s-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      dlink_aquila-pro-ai-m30-a1 = {
        device_packages = [
          "kmod-leds-gca230718"
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      dlink_aquila-pro-ai-m60-a1 = {
        device_packages = [
          "kmod-leds-gca230718"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      edgecore_eap111 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      gatonetworks_gdsp = {
        device_packages = [
          "fitblk"
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "kmod-usb3"
          "mt7981-wo-firmware"
          "-kmod-phy-aquantia"
        ];
      };
      glinet_gl-mt2500 = {
        device_packages = [
          "-wpad-openssl"
          "f2fsck"
          "mkf2fs"
          "kmod-usb3"
          "automount"
        ];
      };
      glinet_gl-mt3000 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-hwmon-pwmfan"
          "kmod-usb3"
          "automount"
        ];
      };
      glinet_gl-mt6000 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
          "f2fsck"
          "mkf2fs"
        ];
      };
      glinet_gl-x3000 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "mkf2fs"
          "kmod-fs-f2fs"
          "kmod-hwmon-pwmfan"
          "kmod-usb3"
          "kmod-usb-serial-option"
          "kmod-usb-storage"
          "kmod-usb-net-qmi-wwan"
          "uqmi"
          "automount"
        ];
      };
      glinet_gl-xe3000 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "mkf2fs"
          "kmod-fs-f2fs"
          "kmod-hwmon-pwmfan"
          "kmod-usb3"
          "kmod-usb-serial-option"
          "kmod-usb-storage"
          "kmod-usb-net-qmi-wwan"
          "uqmi"
          "automount"
        ];
      };
      h3c_magic-nx30-pro = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      h3c_magic-nx30-pro-nmbm = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      huasifei_wh3000-emmc = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb-net-cdc-mbim"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "kmod-usb3"
          "automount"
          "f2fsck"
          "mkf2fs"
          "uqmi"
        ];
      };
      imou_lc-hx3001 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      jcg_q30-pro = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      jdcloud_re-cp-03 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
        ];
      };
      keenetic_kn-3811 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
        ];
      };
      keenetic_kn-3911 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-phy-airoha-en8811h"
        ];
      };
      konka_komi-a31 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      livinet_zr-3020 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      livinet_zr-3020-ubootmod = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      mediatek_mt7981-rfb = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "kmod-usb3"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "mt7981-wo-firmware"
        ];
      };
      mediatek_mt7986a-rfb-nand = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      mediatek_mt7986b-rfb = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      mediatek_mt7988a-rfb = {
        device_packages = [
          "mt7988-2p5g-phy-firmware"
          "kmod-sfp"
        ];
      };
      mercusys_mr90x-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      mercusys_mr90x-v1-ubi = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      netcore_n60 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      netcore_n60-pro = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      netgear_wax220 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      netis_nx31 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      nokia_ea0326gmp = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      openembed_som7981 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-crypto-hw-atmel"
          "kmod-eeprom-at24"
          "kmod-gpio-beeper"
          "kmod-rtc-pcf8563"
          "kmod-usb-net-cdc-mbim"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "kmod-usb3"
          "automount"
          "uqmi"
        ];
      };
      openwrt_one = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-rtc-pcf8563"
          "kmod-usb3"
          "kmod-nvme"
          "kmod-phy-airoha-en8811h"
        ];
      };
      qihoo_360t7 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      routerich_ax3000 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      routerich_ax3000-ubootmod = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "kmod-usb3"
          "mt7981-wo-firmware"
        ];
      };
      ruijie_rg-x60-pro = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      smartrg_sdg-8612 = {
        device_packages = [
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-hwmon-pwmfan"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      smartrg_sdg-8614 = {
        device_packages = [
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-hwmon-pwmfan"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      smartrg_sdg-8622 = {
        device_packages = [
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-hwmon-pwmfan"
          "kmod-mt7915e"
          "kmod-mt7915-firmware"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      smartrg_sdg-8632 = {
        device_packages = [
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-hwmon-pwmfan"
          "kmod-mt7915e"
          "kmod-mt7915-firmware"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      smartrg_sdg-8733 = {
        device_packages = [
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-hwmon-pwmfan"
          "kmod-mt7996-firmware"
          "kmod-phy-aquantia"
          "kmod-usb3"
          "mt7988-wo-firmware"
        ];
      };
      smartrg_sdg-8733a = {
        device_packages = [
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-hwmon-pwmfan"
          "mt7988-2p5g-phy-firmware"
          "kmod-mt7996-233-firmware"
          "kmod-phy-aquantia"
          "mt7988-wo-firmware"
        ];
      };
      smartrg_sdg-8734 = {
        device_packages = [
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-hwmon-pwmfan"
          "kmod-mt7996-firmware"
          "kmod-phy-aquantia"
          "kmod-sfp"
          "kmod-usb3"
          "mt7988-wo-firmware"
        ];
      };
      tplink_re6000xd = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      tplink_tl-xdr4288 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_tl-xdr6086 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_tl-xdr6088 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_tl-xtr8488 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
          "kmod-mt7915-firmware"
        ];
      };
      ubnt_unifi-6-plus = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "fdisk"
          "partx-utils"
        ];
      };
      unielec_u7981-01-emmc = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "f2fsck"
          "mkf2fs"
          "fdisk"
          "partx-utils"
          "automount"
        ];
      };
      unielec_u7981-01-nand = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "f2fsck"
          "mkf2fs"
          "fdisk"
          "partx-utils"
          "automount"
        ];
      };
      wavlink_wl-wn586x3 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_mi-router-ax3000t = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_mi-router-ax3000t-ubootmod = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_mi-router-wr30u-stock = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_mi-router-wr30u-ubootmod = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_redmi-router-ax6000-stock = {
        device_packages = [
          "kmod-leds-ws2812b"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      xiaomi_redmi-router-ax6000-ubootmod = {
        device_packages = [
          "kmod-leds-ws2812b"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      yuncore_ax835 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      zbtlink_zbt-z8102ax = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "automount"
        ];
      };
      zbtlink_zbt-z8103ax = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      zyxel_ex5601-t0-stock = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      zyxel_ex5601-t0-ubootmod = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      zyxel_ex5700-telenor = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7916-firmware"
          "kmod-ubootenv-nvram"
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      zyxel_nwa50ax-pro = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "zyxel-bootconfig"
        ];
      };
    };
  };
  kmods."6.6.86-1-f2c63d42896f12da2b55f2c2b626e7be" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/filogic/kmods/6.6.86-1-f2c63d42896f12da2b55f2c2b626e7be/";
    sourceInfo = {
      hash = "sha256-bHQPEv7NpUjPmDsrKMeiFn6Cb16bT0Cjrw8fWvT5rXM=";
      name = "kmods-mediatek_filogic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/filogic/kmods/6.6.86-1-f2c63d42896f12da2b55f2c2b626e7be/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/filogic/packages/";
    sourceInfo = {
      hash = "sha256-VNVAki3e9QboJUr0ADq+ribKTxz9qGC86/wiDhNk5bc=";
      name = "mediatek_filogic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/filogic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
