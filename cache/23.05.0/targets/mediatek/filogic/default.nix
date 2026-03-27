# 23.05.0 mediatek/filogic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/filogic/";
  sha256sums = {
    hash = "sha256-F0/SNAaY9W24D8pa/8l0OHHaos2jxocx3709w4L5RAU=";
    name = "mediatek_filogic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/filogic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8326eea12070257d0ba44e21c441e31e36587b617f653da5fca0cba0c9ae9850";
    filename = "immortalwrt-imagebuilder-23.05.0-mediatek-filogic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-YBU51HlcsvrwElrNTtI55cFM0+U9/JreO1jwfBaT/Zo=";
    name = "mediatek_filogic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/filogic/profiles.json";
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
      acer_predator-w6 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "kmod-mt7916-firmware"
          "mt7986-wo-firmware"
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
        ];
      };
      asus_tuf-ax4200 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      asus_tuf-ax6000 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
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
        ];
      };
      bananapi_bpi-r3-mini = {
        device_packages = [
          "kmod-hwmon-pwmfan"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "kmod-usb3"
          "automount"
          "f2fsck"
          "mkf2fs"
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
      cudy_wr3000-v1 = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
        ];
      };
      glinet_gl-mt3000 = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
          "kmod-hwmon-pwmfan"
          "kmod-usb3"
        ];
      };
      glinet_gl-mt6000 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
          "e2fsprogs"
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
      jcg_q30-ubootmod = {
        device_packages = [
          "kmod-mt7981-firmware"
          "mt7981-wo-firmware"
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
      tplink_tl-xdr4288 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      tplink_tl-xdr6086 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
        ];
      };
      tplink_tl-xdr6088 = {
        device_packages = [
          "kmod-usb3"
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
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
      zyxel_ex5601-t0-stock = {
        device_packages = [
          "kmod-mt7986-firmware"
          "mt7986-wo-firmware"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/filogic/packages/";
    sourceInfo = {
      hash = "sha256-Snt62uMS5LeQp55hfRI3JXCL5udkp4fAgQ+3dZO2jNo=";
      name = "mediatek_filogic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/filogic/packages/Packages";
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
