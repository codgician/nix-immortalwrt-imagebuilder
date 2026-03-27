# 24.10.1 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-I7SeuyZNPuUGDUxFHvVbhSUL7xNgO96Q+G9AuXYKrco=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "51cbe13fd9c0589e36cda2f0168a11627cb5ea907f0a13c8e861be1b9b0e324a";
    filename = "immortalwrt-imagebuilder-24.10.1-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-DUV7AAq+JI0m8RyS0Q83VMpAH4E6ciCg5snB2W6o1xo=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "1244bd7e8bc9f1be1a33796b9c2446e6";
      version = "6.6.86";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-crypto-hw-safexcel"
      "kmod-gpio-button-hotplug"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-1244bd7e8bc9f1be1a33796b9c2446e6";
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
  kmods."6.6.86-1-1244bd7e8bc9f1be1a33796b9c2446e6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7623/kmods/6.6.86-1-1244bd7e8bc9f1be1a33796b9c2446e6/";
    sourceInfo = {
      hash = "sha256-eD5R2TiB1kXXcENhcKCnEL0HUY8ccuPVIntyQ7w1jxs=";
      name = "kmods-mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7623/kmods/6.6.86-1-1244bd7e8bc9f1be1a33796b9c2446e6/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-CAfFU2+4bKIFEbKcCSARWchVhJye+iWm2z2/0lm3nhI=";
      name = "mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7623/packages/Packages";
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
