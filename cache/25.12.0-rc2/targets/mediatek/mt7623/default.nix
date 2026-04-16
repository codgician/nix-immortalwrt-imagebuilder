# 25.12.0-rc2 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-nxSj68y8c/M4QdHyggqqRYJjKqB+8MCmSPIS7YgNCqc=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "2b9ca2f1a8e6ee1632e920868675151a0c0907ed472417c435227db8a6071596";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KyUduLc6oyi0D5wAo+a3h+vV+mFqlHRQApF0IEIov70=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "804ac05e8b020f43904359a61e53435d";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-804ac05e8b020f43904359a61e53435d";
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
  kmods."6.12.79-1-804ac05e8b020f43904359a61e53435d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7623/kmods/6.12.79-1-804ac05e8b020f43904359a61e53435d/";
    sourceInfo = {
      hash = "sha256-AaYMB/ixKXqE3c+jMzqsz3H3++hvOJXWPOPoWIni/UM=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7623/kmods/6.12.79-1-804ac05e8b020f43904359a61e53435d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-vDT+3zWaMFGzdmmYK5RmvEdC+k/Yx/PIvqwNMxbH2UQ=";
      name = "mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7623/packages/packages.adb";
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
