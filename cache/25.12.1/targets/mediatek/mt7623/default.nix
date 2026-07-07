# 25.12.1 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-xdwJvEUpQaVtRUA2Iol/sM1G9ZcV0pGoBWUYuJi01uc=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "3e9e3daef8d798f81bd417ea2b7442f8c4b6791b5b034e8d89df6cf1c1ecd1e6";
    filename = "immortalwrt-imagebuilder-25.12.1-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-O52agYUOq6OWgT1XQybj3rf/4QcOZzldTCZahn/x+aM=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "3a0c121e66d08f7e0d09fe9f949cea3a";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-3a0c121e66d08f7e0d09fe9f949cea3a";
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
  kmods."6.12.94-1-3a0c121e66d08f7e0d09fe9f949cea3a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7623/kmods/6.12.94-1-3a0c121e66d08f7e0d09fe9f949cea3a/";
    sourceInfo = {
      hash = "sha256-qMQaYHavVe7MwK4KcumNPhstHesqQWQHoPjJG1LO0Cc=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7623/kmods/6.12.94-1-3a0c121e66d08f7e0d09fe9f949cea3a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-vGVgYVPVg+p3G82hJTv9z84el+G1A0f7zrzuvG+V5bo=";
      name = "mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7623/packages/packages.adb";
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
