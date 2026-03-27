# 25.12.0-rc1 apm821xx/nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-My5y7QaPKxRmIEAMOsZfeMelWwOu9/mr0QKH09WYNxM=";
    name = "apm821xx_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "dd6623f77914046166aa628584d15a2aeba5cd273e7adf4a852afb7f9ef820cb";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5FzjzOuG5zr9uE03olnlQXUsJ2FkVGr4OECWOganoMk=";
    name = "apm821xx_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "8d92823a28a3fbaa22a9726fd608e8da";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.74-1-8d92823a28a3fbaa22a9726fd608e8da";
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
  kmods."6.12.74-1-8d92823a28a3fbaa22a9726fd608e8da" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/nand/kmods/6.12.74-1-8d92823a28a3fbaa22a9726fd608e8da/";
    sourceInfo = {
      hash = "sha256-LyVcFuUknwQxyUmvOLOdpbwhKn1SOseVOVrmdict7nM=";
      name = "kmods-apm821xx_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/nand/kmods/6.12.74-1-8d92823a28a3fbaa22a9726fd608e8da/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-ItySQUcHALZv77/DJCb3DpwLNYJ5ZvB3eMNRgHVKWks=";
      name = "apm821xx_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/nand/packages/packages.adb";
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
