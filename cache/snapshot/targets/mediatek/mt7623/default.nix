# snapshot mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-VLeNNNTrCx0cn619N2CxQ4bme4rla3JJX62aGkGLTY8=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "d466efd872ddf8974d1440ef9d0fd3afe8aff23f12e36e9d68636d9aad74d0c0";
    filename = "immortalwrt-imagebuilder-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-22DTu2YOJL9bowvrfJZTYDQ4FGsmsuxdWtndM429SJk=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "89529c3e9273c9aa3086793189a5e0cf";
      version = "6.18.34";
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
    kmods_target = "6.18.34-1-89529c3e9273c9aa3086793189a5e0cf";
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
  kmods."6.18.34-1-89529c3e9273c9aa3086793189a5e0cf" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.34-1-89529c3e9273c9aa3086793189a5e0cf/";
    sourceInfo = {
      hash = "sha256-H8MuuyTqvlpKtCsKd97VUO0Q/RVCXNYALILi/+4I9nY=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.34-1-89529c3e9273c9aa3086793189a5e0cf/packages.adb";
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
      hash = "sha256-L4zrlL29HlcsonIcHcKON1hcnVXWm/vmmH/xEq63IQU=";
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
