# snapshot apm821xx/nand
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-sEwoNKEAT9i8+KMYGZOfarI0HUAndA7/AJFN3RwNY+s=";
    name = "apm821xx_nand-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "5a69bd2c09380a61d911e7a2906415832ac58c986368e217cebe599feb19c705";
    filename = "immortalwrt-imagebuilder-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-z8YRRV54hDLQ4yZZEyS61tOLpybkUC1aZvq3AdRyIIc=";
    name = "apm821xx_nand-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "88ff150a3b3051693673b5e28bb884e8";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-88ff150a3b3051693673b5e28bb884e8";
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
  kmods."6.12.67-1-88ff150a3b3051693673b5e28bb884e8" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/nand/kmods/6.12.67-1-88ff150a3b3051693673b5e28bb884e8/";
    sourceInfo = {
      hash = "sha256-zLBVKvSf+fC0AdtRKVhlgYHz/Xwa3FJ6NKoBoEGXSg0=";
      name = "kmods-apm821xx_nand-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/nand/kmods/6.12.67-1-88ff150a3b3051693673b5e28bb884e8/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-KP3OOPXvNzwikrao3qO0XZcNnHT6ckOaEcQpakLc5HA=";
      name = "apm821xx_nand-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/nand/packages/packages.adb";
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
