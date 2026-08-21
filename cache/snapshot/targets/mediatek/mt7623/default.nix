# snapshot mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-aYZw04skD1aJZjWadre4wjbvL2uuyZm9/TC76I3Rpj4=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "d1995a27e19df92867725014d7cc5a467474537e639ee57a5ba30b1054122d63";
    filename = "immortalwrt-imagebuilder-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nE6uWKNiLnf1gldkPTvCl3JY4ATANHfwEKo1O/136BA=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "632dd3804c099a119595265c764c721f";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-632dd3804c099a119595265c764c721f";
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
  kmods."6.18.44-1-632dd3804c099a119595265c764c721f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.44-1-632dd3804c099a119595265c764c721f/";
    sourceInfo = {
      hash = "sha256-gLr6rOWPFXdrSdtzldt42GLUYJfKgOur8qN5InIBB8E=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.44-1-632dd3804c099a119595265c764c721f/packages.adb";
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
      hash = "sha256-6/YECXqgKu4vXdt/3Cz9chYXZOvpfTu6+fXptE59PBE=";
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
