# snapshot mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-/fEK4h9e1C6NL08kR4UGFUUmW0L+zkXHMFPs+r4bJXA=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "4a426544be30004900a1d2328df98407cfece727a60dcd5ee45a2247b47b7404";
    filename = "immortalwrt-imagebuilder-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-cJBHM97c1G+PIpLq1mBfffie8YIDbLkGm8OmXsjZ/S8=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "0c68b41e5ce5aa74329bf179e1e0294d";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-crypto-hw-safexcel"
      "kmod-gpio-button-hotplug"
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
    ];
    kmods_target = "6.18.52-1-0c68b41e5ce5aa74329bf179e1e0294d";
    profiles = {
      bananapi_bpi-r2 = {
        device_packages = [
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb3"
          "kmod-ata-ahci"
        ];
      };
      unielec_u7623-02 = {
        device_packages = [
          "kmod-fs-vfat"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-mmc"
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci"
        ];
      };
      unielec_u7623-02-emmc-512m-legacy = {
        device_packages = [
          "kmod-fs-vfat"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-mmc"
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci"
          "partx-utils"
        ];
      };
    };
  };
  kmods."6.18.52-1-0c68b41e5ce5aa74329bf179e1e0294d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.52-1-0c68b41e5ce5aa74329bf179e1e0294d/";
    sourceInfo = {
      hash = "sha256-80QVRdFK5HmFjWcpQFFrEpJfqNs8nm8wYE765XqWECg=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.52-1-0c68b41e5ce5aa74329bf179e1e0294d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-WP7X+J3rxXHAcppdUyDb45zTqzoBfsx848wpMCTeEH4=";
      name = "mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
