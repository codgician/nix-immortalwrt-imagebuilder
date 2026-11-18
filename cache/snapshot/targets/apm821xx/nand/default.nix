# snapshot apm821xx/nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-Bg5EGxYoyBvD1CHoQTwg0ZEGCVC8+2H2VUNKK7psfPA=";
    name = "apm821xx_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "3163518f94692ca01253cf40b01affaa1b1d36bf6b83bba3d3da8d6a2186eee5";
    filename = "immortalwrt-imagebuilder-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gOYqMhYxPuOivCIZLM/y3dxNL/QNQt2U34kYF1pvufM=";
    name = "apm821xx_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "18f309d8450df97b5593fa28199d4098";
      version = "6.18.60";
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.18.60-1-18f309d8450df97b5593fa28199d4098";
    profiles = {
      meraki_mr24 = {
        device_packages = [
          "kmod-spi-gpio"
          "kmod-phy-at803x"
        ];
      };
      meraki_mx60 = {
        device_packages = [
          "kmod-spi-gpio"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb-dwc2"
          "kmod-usb-storage"
          "block-mount"
          "kmod-dsa-qca8k"
        ];
      };
      netgear_wndap620 = {
        device_packages = [
          "kmod-eeprom-at24"
          "swconfig"
        ];
      };
      netgear_wndap660 = {
        device_packages = [
          "kmod-eeprom-at24"
          "swconfig"
        ];
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
          "kmod-dsa-qca8k"
          "kmod-hwmon-tc654"
          "kmod-hwmon-lm90"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.18.60-1-18f309d8450df97b5593fa28199d4098" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/kmods/6.18.60-1-18f309d8450df97b5593fa28199d4098/";
    sourceInfo = {
      hash = "sha256-18EN7sS+AOD1DEzgzWUSOOPpDyewXUDFuwAhmw23lHA=";
      name = "kmods-apm821xx_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/kmods/6.18.60-1-18f309d8450df97b5593fa28199d4098/packages.adb";
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
      hash = "sha256-SUj7BJoLE/lagJbPhQFNDO20r16l+QAqmxc/0CAXT8I=";
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
