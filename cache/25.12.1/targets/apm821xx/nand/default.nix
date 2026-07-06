# 25.12.1 apm821xx/nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-qOi4anaxbisguiRB/oU8DH+cMTnZ8koAVshVolZ8e30=";
    name = "apm821xx_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "383975e9e1cb1500865cc97b744668f48424c37c528f57f234debcc84a2fbc81";
    filename = "immortalwrt-imagebuilder-25.12.1-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-PPF77sBmj4Hi12tMo5AFUGg4b+D3pxaUNw6sjHG2NiA=";
    name = "apm821xx_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "84a22a529f2ac5476c9d170e046c0748";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-84a22a529f2ac5476c9d170e046c0748";
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
  kmods."6.12.94-1-84a22a529f2ac5476c9d170e046c0748" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/nand/kmods/6.12.94-1-84a22a529f2ac5476c9d170e046c0748/";
    sourceInfo = {
      hash = "sha256-uzWAFyQRWgz7RYvAeQIZzixcYuM29Sm+cPihx3bgdQw=";
      name = "kmods-apm821xx_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/nand/kmods/6.12.94-1-84a22a529f2ac5476c9d170e046c0748/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-dpQ2Fp59EOgSb/YQsXniB9IEaFFFuYZ9PxXIJW+eDCg=";
      name = "apm821xx_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/nand/packages/packages.adb";
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
