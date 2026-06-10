# snapshot apm821xx/nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-fNx5WgRw1kvuLkUg0UmBqndOO6G54OvAxsWjKksEaRI=";
    name = "apm821xx_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "3efc623c42982c498446338d461ea7e13dddf504e653d98b4ebe374306ded94b";
    filename = "immortalwrt-imagebuilder-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4ufIy9qqoEfFt6RjbVgqSSlxhe1XKdrPNYUuzyAlT7s=";
    name = "apm821xx_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "fd54b2fc79a62e69047be8ef397bd9b6";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-hw-crypto-4xx"
      "kmod-i2c-core"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.92-1-fd54b2fc79a62e69047be8ef397bd9b6";
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
          "kmod-usb-xhci-pci-renesas"
          "kmod-usb-dwc2"
          "kmod-usb-storage"
          "partx-utils"
          "kmod-ata-dwc"
        ];
      };
    };
  };
  kmods."6.12.92-1-fd54b2fc79a62e69047be8ef397bd9b6" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/kmods/6.12.92-1-fd54b2fc79a62e69047be8ef397bd9b6/";
    sourceInfo = {
      hash = "sha256-Xyi1mqeB2PqhdZC4RTsm5r6XNDDVzba0OEa7DKjWIAo=";
      name = "kmods-apm821xx_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/kmods/6.12.92-1-fd54b2fc79a62e69047be8ef397bd9b6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-z/0NSjWQB9P93khxEIirZNOhL+QoI+JGewgr6VFY94k=";
      name = "apm821xx_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/packages/packages.adb";
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
