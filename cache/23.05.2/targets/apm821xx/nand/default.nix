# 23.05.2 apm821xx/nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-5ZyP6vyzhNZ8gHySUMdU5SfP5MuZpT2kL60sB9ZdgPY=";
    name = "apm821xx_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "e9c513236ddf4d9e6580475539a910bfab696b617d0d769f3acf100cd14d6150";
    filename = "immortalwrt-imagebuilder-23.05.2-apm821xx-nand.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-jyx30+YvmCI2jDFlYXn0Oe7+4adRjWWHGgU/CMbaL/w=";
    name = "apm821xx_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-i2c-core"
      "kmod-leds-gpio"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      meraki_mr24 = {
        device_packages = [
          "kmod-spi-gpio"
          "-swconfig"
        ];
      };
      meraki_mx60 = {
        device_packages = [
          "kmod-spi-gpio"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb-dwc2"
          "kmod-usb-storage"
          "block-mount"
        ];
      };
      netgear_wndap620 = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
      netgear_wndap660 = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
      netgear_wndr4700 = {
        device_packages = [
          "badblocks"
          "block-mount"
          "e2fsprogs"
          "kmod-hwmon-drivetemp"
          "kmod-dm"
          "kmod-fs-ext4"
          "kmod-fs-vfat"
          "kmod-usb-ledtrig-usbport"
          "kmod-md-mod"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-nls-iso8859-15"
          "kmod-nls-utf8"
          "kmod-usb3"
          "kmod-usb-dwc2"
          "kmod-usb-storage"
          "partx-utils"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-0JlrHSa4BhGZFLMW1Ir/pOc5dDi/MzXng4UTznv9tWw=";
      name = "apm821xx_nand-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/nand/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_464fp";
  feeds = import ./../../../packages/powerpc_464fp.nix;
}
