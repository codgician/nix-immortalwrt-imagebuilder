# 24.10.5 apm821xx/nand
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-3zutAzzbhyo0f7CaAjx1xTZwO6eNDtuu3eA7IKOA7jI=";
    name = "apm821xx_nand-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "4ac15dfb814bd99ad46cd79cb7d85ab01258e78de276d3af95ec33df5bb05bf9";
    filename = "immortalwrt-imagebuilder-24.10.5-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HpoVZ2CoTlkylyApzjyN4/94ASwLV4CxKInsP6gOZsU=";
    name = "apm821xx_nand-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "6fd7481ef059a6a690b4d358183427f8";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-hw-crypto-4xx"
      "kmod-i2c-core"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.122-1-6fd7481ef059a6a690b4d358183427f8";
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
          "kmod-ata-dwc"
        ];
      };
    };
  };
  kmods."6.6.122-1-6fd7481ef059a6a690b4d358183427f8" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/nand/kmods/6.6.122-1-6fd7481ef059a6a690b4d358183427f8/";
    sourceInfo = {
      hash = "sha256-OFdAJGOu/uuUr4YXnvO2JsrnGJn+X/IvhfcNjoSR3vA=";
      name = "kmods-apm821xx_nand-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/nand/kmods/6.6.122-1-6fd7481ef059a6a690b4d358183427f8/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-suj8zY/0i9ahjid4AO0iiXp6kff3cWJ5BBWETAV8D8g=";
      name = "apm821xx_nand-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/nand/packages/Packages";
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
