# 24.10.2 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-qeCua3bxxTWh4X8NxAVQ7Z/EOZDtUrDA1KLRaAgxH6w=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "271c9fe445a0a1d420bb97572417c45b2c6910c4029047cf4cc1f68726e00170";
    filename = "immortalwrt-imagebuilder-24.10.2-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xoAQOM2GKXvXzEd1fth3X6lO5+G8P3IrLCFshN278sw=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "cbb5c12c6bf458a411836f7c630c1738";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-cbb5c12c6bf458a411836f7c630c1738";
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
  kmods."6.6.93-1-cbb5c12c6bf458a411836f7c630c1738" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7623/kmods/6.6.93-1-cbb5c12c6bf458a411836f7c630c1738/";
    sourceInfo = {
      hash = "sha256-bVNY+nnlHrZFpoMkwVlkFBG+kVHhr9ns7uuPSck5fr8=";
      name = "kmods-mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7623/kmods/6.6.93-1-cbb5c12c6bf458a411836f7c630c1738/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-KocZ9aW224Q2ESNQiOJdqAkt3GnPtALdw3JgZ4WiAdk=";
      name = "mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7623/packages/Packages";
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
