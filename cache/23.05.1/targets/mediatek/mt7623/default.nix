# 23.05.1 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-ceOw1s0Kfz2gd6E1WkiNvi1D0xkd4kB7sXUiUK3OqR8=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "77e5652b8188aa2b99caf1adb2afde6248ed6a8f9418e1ca85060460c17a0364";
    filename = "immortalwrt-imagebuilder-23.05.1-mediatek-mt7623.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-rTYOkLVoioCfddla94pGhQckk5YTUD6uoSl+KrvlU+c=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-JP/vv0iO+Mu3krGNOXf3W11H1KLix9IxnO0htZQiZWA=";
      name = "mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7623/packages/Packages";
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
