# 24.10.2 apm821xx/nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-/qgWyitbtS+JEsf3vUo/UT2IHQLNTPXRr/y3/8d7bDk=";
    name = "apm821xx_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "873d88f013801a5ca9c9202ed1a8975696623db6692e03ac06f580586e9b10eb";
    filename = "immortalwrt-imagebuilder-24.10.2-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-o2xHK+YcjiBh9SxxSLaZArAjVSe5hKM1So4CyBn9fAg=";
    name = "apm821xx_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "620d58839af87f1a4a5cb3feab641cc4";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-620d58839af87f1a4a5cb3feab641cc4";
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
  kmods."6.6.93-1-620d58839af87f1a4a5cb3feab641cc4" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/nand/kmods/6.6.93-1-620d58839af87f1a4a5cb3feab641cc4/";
    sourceInfo = {
      hash = "sha256-QUakNH6Lkn8eGHMD5KA9hUt3qq+qhHzyOTshdoZ27Xk=";
      name = "kmods-apm821xx_nand-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/nand/kmods/6.6.93-1-620d58839af87f1a4a5cb3feab641cc4/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-3kucKsTj9MHsKNKIQHQ0HplF1xh/+toFT60T3pfEFDw=";
      name = "apm821xx_nand-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/nand/packages/Packages";
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
