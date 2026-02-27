# snapshot mediatek/mt7623
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-f/3hdApYXi89DRxJZ/3pOAKruXuccsaJt7wpCORtrWM=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "47391467f8d818c513ca596c45a8ab2243834789d7c212b11ab13bfd4cf6de6d";
    filename = "immortalwrt-imagebuilder-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4QlJxic51JwaDTjIQ5pMKjg8EmP8Ina7UPRvm0A1caA=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "7dc52bd3f2175bec679a4caae6eb61b9";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-7dc52bd3f2175bec679a4caae6eb61b9";
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
  kmods."6.12.67-1-7dc52bd3f2175bec679a4caae6eb61b9" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7623/kmods/6.12.67-1-7dc52bd3f2175bec679a4caae6eb61b9/";
    sourceInfo = {
      hash = "sha256-3M7ShCA1LNB+12cprarJnxEg2zS40OxVwGm6pMWm7Xo=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7623/kmods/6.12.67-1-7dc52bd3f2175bec679a4caae6eb61b9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-n+YO8ANPceXFXboUonqFV5aQM57Q0b0DRZmgntzXawE=";
      name = "mediatek_mt7623-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7623/packages/packages.adb";
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
