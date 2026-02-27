# snapshot mediatek/filogic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/filogic/";
  sha256sums = {
    hash = "sha256-gHawrMs9PGT6NCBs6fvxjgudy4a7lp4LE5Kzf1SO3Ak=";
    name = "mediatek_filogic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/filogic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0c002de6502ded41faf330d59d26f5c8bd2cb950cf1039cfb1771635f9c5984c";
    filename = "immortalwrt-imagebuilder-mediatek-filogic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+8+0upi/H3UvgjHvS0OVzHKf5SigtOKZRVE4ALgRXAU=";
    name = "mediatek_filogic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/filogic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "69afcb1bd0e414d0a14c5d2f7e2eca42";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "bridger"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-crypto-hw-safexcel"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.67-1-69afcb1bd0e414d0a14c5d2f7e2eca42";
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
          "automount"
        ];
      };
      acer_predator-w6x-stock = {
        device_packages = [
          "kmod-usb3"
          "kmod-leds-ws2812b"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      acer_predator-w6x-ubootmod = {
        device_packages = [
          "kmod-usb3"
          "kmod-leds-ws2812b"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
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
      asiarf_ap7986-003 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      asus_rt-ax52 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      asus_rt-ax57m = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
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
      asus_tuf-ax4200q = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
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
      asus_zenwifi-bt8 = {
        device_packages = [
          "kmod-usb3"
          "mt7988-2p5g-phy-firmware"
          "kmod-mt7996-firmware"
          "mt7988-wo-firmware"
          "automount"
        ];
      };
      asus_zenwifi-bt8-ubootmod = {
        device_packages = [
          "kmod-usb3"
          "mt7988-2p5g-phy-firmware"
          "kmod-mt7996-firmware"
          "mt7988-wo-firmware"
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
          "kmod-eeprom-at24"
          "kmod-hwmon-pwmfan"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "kmod-phy-airoha-en8811h"
          "kmod-usb3"
          "e2fsprogs"
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
          "automount"
        ];
      };
      bananapi_bpi-r4-lite = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-gpio-pca953x"
          "kmod-i2c-mux-pca954x"
          "kmod-rtc-pcf8563"
          "kmod-sfp"
          "kmod-usb3"
          "e2fsprogs"
          "mkf2fs"
          "mt7987-2p5g-phy-firmware"
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
          "automount"
          "mt7988-2p5g-phy-firmware"
        ];
      };
      buffalo_wsr-6000ax8 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
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
      comfast_cf-wr632ax = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-hwmon-pwmfan"
          "kmod-usb3"
          "automount"
        ];
      };
      comfast_cf-wr632ax-ubootmod = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-hwmon-pwmfan"
          "kmod-usb3"
          "automount"
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
      creatlentem_clt-r30b1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      creatlentem_clt-r30b1-112m = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
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
      cudy_ap3000wall-v1 = {
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
      cudy_tr3000-256mb-v1 = {
        device_packages = [
          "kmod-usb3"
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
      cudy_wbr3000uax-v1 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_wbr3000uax-v1-ubootmod = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_wr3000-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_wr3000e-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_wr3000h-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-phy-motorcomm"
        ];
      };
      cudy_wr3000p-v1 = {
        device_packages = [
          "kmod-usb3"
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
      elecom_wrc-x3000gs3 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      gatonetworks_gdsp = {
        device_packages = [
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "fitblk"
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "kmod-usb3"
          "mt7981-wo-firmware"
          "automount"
        ];
      };
      glinet_gl-mt2500 = {
        device_packages = [
          "-wpad-openssl"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-usb3"
          "automount"
        ];
      };
      glinet_gl-mt2500-airoha = {
        device_packages = [
          "-wpad-openssl"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-usb3"
          "kmod-phy-airoha-en8811h"
          "airoha-en8811h-firmware"
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
      huasifei_wh3000-pro = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-hwmon-pwmfan"
          "kmod-usb3"
          "f2fsck"
          "mkf2fs"
          "automount"
        ];
      };
      imou_hx21 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      iptime_ax3000m = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      iptime_ax3000q = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      iptime_ax3000se = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      iptime_ax3000sm = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      iptime_ax7800m-6e = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7916-firmware"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "kmod-hwmon-gpiofan"
          "kmod-usb3"
          "automount"
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
      kebidumei_ax3000-u22 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      keenetic_kn-1812 = {
        device_packages = [
          "kmod-mt7992-firmware"
          "kmod-usb3"
          "mt7988-2p5g-phy-firmware"
          "mt7988-wo-firmware"
        ];
      };
      keenetic_kn-3711 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      keenetic_kn-3811 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
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
      mediatek_mt7987a-rfb = {
        device_packages = [
          "mt7987-2p5g-phy-firmware"
          "kmod-sfp"
        ];
      };
      mediatek_mt7988a-rfb = {
        device_packages = [
          "mt7988-2p5g-phy-firmware"
          "kmod-sfp"
          "kmod-phy-aquantia"
        ];
      };
      mercusys_mr80x-v3 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      mercusys_mr85x = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-phy-airoha-en8811h"
          "swconfig"
          "kmod-switch-rtl8367s"
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
      netcraze_nc-1812 = {
        device_packages = [
          "kmod-mt7992-firmware"
          "kmod-usb3"
          "mt7988-2p5g-phy-firmware"
          "mt7988-wo-firmware"
        ];
      };
      netgear_eax17 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      netgear_wax220 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      netis_nx30v2 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
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
      nradio_c8-668gl = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb-serial-option"
          "kmod-usb-net-cdc-ether"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb3"
          "automount"
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
      openfi_6c = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      openwrt_one = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-rtc-pcf8563"
          "kmod-usb3"
          "kmod-phy-airoha-en8811h"
          "automount"
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
          "automount"
        ];
      };
      routerich_ax3000-v1 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "kmod-usb3"
          "mt7981-wo-firmware"
          "automount"
        ];
      };
      routerich_be7200 = {
        device_packages = [
          "mt7987-2p5g-phy-firmware"
          "kmod-mt7992-firmware"
          "kmod-regulator-userspace-consumer"
          "kmod-usb3"
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
          "automount"
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
          "automount"
        ];
      };
      snr_snr-cpe-ax2 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      teltonika_rutc50 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "kmod-gpio-nxp-74hc164"
          "uqmi"
          "automount"
        ];
      };
      tenbay_wr3000k = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      tenda_be12-pro = {
        device_packages = [
          "mt7987-2p5g-phy-firmware"
          "airoha-en8811h-firmware"
          "kmod-phy-airoha-en8811h"
          "kmod-mt7992-firmware"
        ];
      };
      totolink_x6000r = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      tplink_archer-ax80-v1 = {
        device_packages = [
          "kmod-leds-lp5523"
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_archer-ax80-v1-eu = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_be450 = {
        device_packages = [
          "kmod-mt7992-firmware"
          "kmod-usb3"
          "automount"
          "mt7988-2p5g-phy-firmware"
          "mt7988-wo-firmware"
        ];
      };
      tplink_fr365-v1 = {
        device_packages = [
          "fitblk"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "automount"
        ];
      };
      tplink_re6000xd = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      tplink_tl-7dr7230-v1 = {
        device_packages = [
          "mt7988-2p5g-phy-firmware"
          "kmod-mt7992-firmware"
          "mt7988-wo-firmware"
        ];
      };
      tplink_tl-7dr7230-v2 = {
        device_packages = [
          "mt7988-2p5g-phy-firmware"
          "kmod-mt7992-firmware"
          "mt7988-wo-firmware"
        ];
      };
      tplink_tl-7dr7250-v1 = {
        device_packages = [
          "mt7988-2p5g-phy-firmware"
          "kmod-mt7992-firmware"
          "mt7988-wo-firmware"
          "kmod-phy-airoha-en8811h"
          "airoha-en8811h-firmware"
        ];
      };
      tplink_tl-xdr4288 = {
        device_packages = [
          "fitblk"
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_tl-xdr6086 = {
        device_packages = [
          "fitblk"
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_tl-xdr6088 = {
        device_packages = [
          "fitblk"
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_tl-xtr8488 = {
        device_packages = [
          "fitblk"
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
      wavlink_wl-wn536ax6-a = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      wavlink_wl-wn551x3 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "automount"
        ];
      };
      wavlink_wl-wn573hx3 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      wavlink_wl-wn586x3 = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      wavlink_wl-wn586x3b = {
        device_packages = [
          "kmod-mt7915e"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      widelantech_wap430x = {
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
      zbtlink_zbt-z8102ax-v2 = {
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
      zbtlink_zbt-z8103ax-c = {
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
  kmods."6.12.67-1-69afcb1bd0e414d0a14c5d2f7e2eca42" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/filogic/kmods/6.12.67-1-69afcb1bd0e414d0a14c5d2f7e2eca42/";
    sourceInfo = {
      hash = "sha256-bHAqi8oncfdLlkIls0PTnl0d8OZWpj9njr5Sdwdp1W4=";
      name = "kmods-mediatek_filogic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/filogic/kmods/6.12.67-1-69afcb1bd0e414d0a14c5d2f7e2eca42/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/filogic/packages/";
    sourceInfo = {
      hash = "sha256-iSff+crbNd2hlIT/Sdze2pP5VHBXJHvUaO/VS/EsD9U=";
      name = "mediatek_filogic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/filogic/packages/packages.adb";
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
