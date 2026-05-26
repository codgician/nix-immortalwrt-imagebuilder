# 25.12.0 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-FO+AfSaYpp2LngIAdM+2u6np5TGlwklMIIluxrNEBs8=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "1fa854832128aadd99382722f526d157497cc1bdda7578f8646de797d2eab986";
    filename = "immortalwrt-imagebuilder-25.12.0-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UQ1h0qS1Sxj9w3CvrB6dxJbC//lnBOgVbW9TG2/C+sY=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8938b62299aaeef42678df6c99d4e748";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-8938b62299aaeef42678df6c99d4e748";
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
  kmods."6.12.87-1-8938b62299aaeef42678df6c99d4e748" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7623/kmods/6.12.87-1-8938b62299aaeef42678df6c99d4e748/";
    sourceInfo = {
      hash = "sha256-NeYcDXiOlwwEG95ynyJyvNUuulnlllKoG4NPGtQ9sZo=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7623/kmods/6.12.87-1-8938b62299aaeef42678df6c99d4e748/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-lceEwoo5IsuL4+ynERVQ2Xb/oHPid5bOipOLEvdMHOY=";
      name = "mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7623/packages/packages.adb";
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
