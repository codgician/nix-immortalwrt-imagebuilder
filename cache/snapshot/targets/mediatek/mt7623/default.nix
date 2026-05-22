# snapshot mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-eb47SM6jYEtS4nKELqyl1S/bVTihs7lOHs8e21nMcOk=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "1607f17871a947f848405751e40073ebf48f392d16f764b11ec37d3a76cf9837";
    filename = "immortalwrt-imagebuilder-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-J2l/hoy0OKmRGC0+Mp3E1QNqJmyhQfpcbhdR2674p1A=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "6327bef36745c7cf35197d565b185499";
      version = "6.18.31";
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
    kmods_target = "6.18.31-1-6327bef36745c7cf35197d565b185499";
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
  kmods."6.18.31-1-6327bef36745c7cf35197d565b185499" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.31-1-6327bef36745c7cf35197d565b185499/";
    sourceInfo = {
      hash = "sha256-vMAPWTi9VrhhlcGpCLvSz8iHCnCqu6RNs6diBEhJLQg=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.31-1-6327bef36745c7cf35197d565b185499/packages.adb";
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
      hash = "sha256-54xxB6uCP59VrxoLNTgxcdBcdPwugMyyR9tXSxft/RA=";
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
