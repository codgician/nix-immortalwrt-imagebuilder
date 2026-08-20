# snapshot apm821xx/nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-aKuo5KSY4b3IdyL2aLyLwZjbxV9CWa3iw3c5WCTD8UA=";
    name = "apm821xx_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "4dc85a139072c8f91cdf8548a2238630d88e1984ce6bb3a0f08331af60483841";
    filename = "immortalwrt-imagebuilder-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8wJIpYVl8fQFT/RswVpJFmfOodKqdB9BEx4IcPUH3x8=";
    name = "apm821xx_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "948e0f23a680226c7138cc031d707949";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-948e0f23a680226c7138cc031d707949";
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
          "kmod-phy-qca83xx"
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
          "kmod-phy-qca83xx"
          "kmod-hwmon-tc654"
          "kmod-hwmon-lm90"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.18.44-1-948e0f23a680226c7138cc031d707949" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/kmods/6.18.44-1-948e0f23a680226c7138cc031d707949/";
    sourceInfo = {
      hash = "sha256-oV2WH7CJsN7eB3oLRp+vnMbtXaKSzHv4NbWCIAFn+7k=";
      name = "kmods-apm821xx_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/nand/kmods/6.18.44-1-948e0f23a680226c7138cc031d707949/packages.adb";
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
      hash = "sha256-DVqAiRmKCLtxSdScnnhoXrp0NvBB6IZZFimSc4lYHGM=";
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
