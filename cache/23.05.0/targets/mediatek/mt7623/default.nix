# 23.05.0 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-/cs4oNtsNY95M7qHLTiU4AsB+4S4fWbeu6eQrzv8DVU=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "942db6b3bcf317c3887d9a93f14639b9aec6620959a3836b7c54a8ae50652fa4";
    filename = "immortalwrt-imagebuilder-23.05.0-mediatek-mt7623.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-c34XLDhA5nYLA0JnvXfe8Jao9Q3zf7ODo0qqpF/+A+s=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7623/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-xk1Ll7Uu/eCi0zu+2Ikhpg34IycGsW2ov2Z8keamLvc=";
      name = "mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7623/packages/Packages";
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
