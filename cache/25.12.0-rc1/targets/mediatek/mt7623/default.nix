# 25.12.0-rc1 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-L/c5FvuD9Kf9TwyPox3mY+mOfzrUAVTtqbXbDHqvc08=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "af0d2dcade751af066dd4cf60912a62f8ee975a52c2fba5b69befdece651b3ba";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-cEPNXJYXvieit8bj7vuU0AEo5S2YigGSKGq/i9AJimI=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "48a2aa95f5b253fbf7c53afdeee83822";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-48a2aa95f5b253fbf7c53afdeee83822";
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
  kmods."6.12.74-1-48a2aa95f5b253fbf7c53afdeee83822" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7623/kmods/6.12.74-1-48a2aa95f5b253fbf7c53afdeee83822/";
    sourceInfo = {
      hash = "sha256-ysMDI5JAVnhwP87i7RN7EkdfDloFVhweBdxEFTwt79c=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7623/kmods/6.12.74-1-48a2aa95f5b253fbf7c53afdeee83822/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-BVtsKQXEbqDv3CSlgSzIOp6qAvQ318xbS5BpJuzx6KA=";
      name = "mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7623/packages/packages.adb";
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
