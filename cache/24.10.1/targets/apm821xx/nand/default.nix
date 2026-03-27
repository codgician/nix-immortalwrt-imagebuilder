# 24.10.1 apm821xx/nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-RnsKfYrkMa73USh+ljFMI080dB196Yzw71Hp1E6C4wc=";
    name = "apm821xx_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "9aa84b428781cb55fdc98fb039a75194c186d3e030da692c9aa2ee839404f14d";
    filename = "immortalwrt-imagebuilder-24.10.1-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-eJGlG5rKFPkCMltGObhhgsfYV7cYkFxuhsdZke8Z0Pc=";
    name = "apm821xx_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "3203f3be225a09379120faf7e9ca923e";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-3203f3be225a09379120faf7e9ca923e";
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
  kmods."6.6.86-1-3203f3be225a09379120faf7e9ca923e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/nand/kmods/6.6.86-1-3203f3be225a09379120faf7e9ca923e/";
    sourceInfo = {
      hash = "sha256-dot9eWRJuuURlBeWlphj5SyKSRTw0UDAyyDIuKUsbUM=";
      name = "kmods-apm821xx_nand-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/nand/kmods/6.6.86-1-3203f3be225a09379120faf7e9ca923e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-zjr9KzprnfLCAY0jHs+qwBRQ/sKm7cSAs/2x1Rlp2pY=";
      name = "apm821xx_nand-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/nand/packages/Packages";
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
