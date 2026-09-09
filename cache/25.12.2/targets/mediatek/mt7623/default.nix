# 25.12.2 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-cYirYY2InyEwDYoZl2wgH7F9Bd1sgHvducThTCdkQnk=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "742fd89eac25ae6aef255648634ce4f8592c850cf094a2a4ad753015e8ae2e83";
    filename = "immortalwrt-imagebuilder-25.12.2-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-h5tWRFM2SiaaTSiTkVkt94OZJQVUEL0Yu6PFJjaCpbg=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "3a0c121e66d08f7e0d09fe9f949cea3a";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-3a0c121e66d08f7e0d09fe9f949cea3a";
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
  kmods."6.12.103-1-3a0c121e66d08f7e0d09fe9f949cea3a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7623/kmods/6.12.103-1-3a0c121e66d08f7e0d09fe9f949cea3a/";
    sourceInfo = {
      hash = "sha256-vcEo3Q0bo2dvq49C9lEqnpFbl+h/OsBGd4j6aNGpEAA=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7623/kmods/6.12.103-1-3a0c121e66d08f7e0d09fe9f949cea3a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-onz5f+JsZNNFimrx360DAWcPESZA4c3bSqAfcJwT38I=";
      name = "mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mediatek/mt7623/packages/packages.adb";
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
