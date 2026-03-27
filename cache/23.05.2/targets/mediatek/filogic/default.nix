# 23.05.2 mediatek/filogic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mediatek/filogic/";
  sha256sums = {
    hash = "sha256-n70qfCU4Yqbnbg48ICAdwiDBEEs6syHUSBn22sJnG7U=";
    name = "mediatek_filogic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mediatek/filogic/sha256sums";
  };
  imagebuilder = {
    sha256 = "77b751be979533936b3f28379ffd47e3711c83891f83ed76531628ec3e7e0b6f";
    filename = "immortalwrt-imagebuilder-23.05.2-mediatek-filogic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-P01VW4MnSMGh0/gMwZ+6HIE3g7rOGf9iRgFmiRuNm9Q=";
    name = "mediatek_filogic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mediatek/filogic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "bridger"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-crypto-hw-safexcel"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-mt7915e"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-phy-aquantia"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      abt_asr3000-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      acelink_ew-7886cax = {
        device_packages = [
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      acer_predator-w6 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "kmod-mt7916-firmware"
          "mt7986-wo-firmware"
          "f2fsck"
          "mkf2fs"
          "automount"
        ];
      };
      asus_rt-ax59u = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      asus_tuf-ax4200 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      asus_tuf-ax6000 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      bananapi_bpi-r3 = {
        device_packages = [
          "kmod-hwmon-pwmfan"
          "kmod-i2c-gpio"
          "kmod-mt7986-firmware"
          "kmod-sfp"
          "kmod-usb3"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      bananapi_bpi-r3-mini = {
        device_packages = [
          "kmod-hwmon-pwmfan"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "kmod-nvme"
          "kmod-usb3"
          "automount"
          "f2fsck"
          "mkf2fs"
          "kmod-usb-net-cdc-mbim"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
          "luci-proto-mbim"
          "luci-proto-qmi"
        ];
      };
      cetron_ct3003-stock = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cetron_ct3003-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cmcc_a10-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cmcc_rax3000m = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
          "f2fsck"
          "mkf2fs"
        ];
      };
      cmcc_rax3000m-emmc-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
          "f2fsck"
          "mkf2fs"
        ];
      };
      cmcc_rax3000m-nand-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      confiabits_mt7981 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "automount"
        ];
      };
      cudy_re3000-v1 = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      cudy_wr3000-v1 = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      glinet_gl-mt2500 = {
        device_packages = [
          "-kmod-mt7915e"
          "-wpad-openssl"
          "f2fsck"
          "mkf2fs"
          "kmod-usb3"
          "automount"
        ];
      };
      glinet_gl-mt3000 = {
        device_packages = [
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
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
          "f2fsck"
          "mkf2fs"
        ];
      };
      h3c_magic-nx30-pro = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      h3c_magic-nx30-pro-nmbm = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      imou_lc-hx3001-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      jcg_q30 = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      jcg_q30-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      jdcloud_re-cp-03 = {
        device_packages = [
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
        ];
      };
      livinet_zr-3020 = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      livinet_zr-3020-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      mediatek_mt7981-rfb = {
        device_packages = [
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
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      mediatek_mt7986b-rfb = {
        device_packages = [
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      mediatek_mt7988a-rfb = {
        device_packages = [ "kmod-sfp" ];
      };
      mercusys_mr90x-v1 = {
        device_packages = [
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      netgear_wax220 = {
        device_packages = [
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      qihoo_360t7 = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      qihoo_360t7-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      routerich_ax3000 = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      tplink_tl-xdr4288 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_tl-xdr6086 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      tplink_tl-xdr6088 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "automount"
        ];
      };
      ubnt_unifi-6-plus = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "fdisk"
          "partx-utils"
        ];
      };
      xiaomi_mi-router-ax3000t = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_mi-router-ax3000t-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_mi-router-wr30u-112m-nmbm = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_mi-router-wr30u-stock = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_mi-router-wr30u-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      xiaomi_redmi-router-ax6000 = {
        device_packages = [
          "kmod-leds-ws2812b"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      xiaomi_redmi-router-ax6000-stock = {
        device_packages = [
          "kmod-leds-ws2812b"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      xiaomi_redmi-router-ax6000-ubootmod = {
        device_packages = [
          "kmod-leds-ws2812b"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      zbtlink_zbt-z8102ax = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-usb3"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "automount"
        ];
      };
      zyxel_ex5601-t0-stock = {
        device_packages = [
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      zyxel_ex5601-t0-ubootmod = {
        device_packages = [
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "kmod-usb3"
          "automount"
        ];
      };
      zyxel_ex5700-telenor = {
        device_packages = [
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
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "zyxel-bootconfig"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mediatek/filogic/packages/";
    sourceInfo = {
      hash = "sha256-+URE/L2JjjYuP2OHpwPwANy0EgXX3+sq683ysiohwK0=";
      name = "mediatek_filogic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/mediatek/filogic/packages/Packages";
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
