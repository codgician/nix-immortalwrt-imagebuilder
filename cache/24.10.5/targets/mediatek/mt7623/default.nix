# 24.10.5 mediatek/mt7623
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-a9bEEImdm0jBJq3EB6XG2CLaYuLg/1h4BP6eUb/a8LQ=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "57f723d396d73755f6c7d773ee94ebbcf1c9d385ed723f511165bd8221d3bbc3";
    filename = "immortalwrt-imagebuilder-24.10.5-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-81XoCjMoIyMKm7uvLyS7K0lIrm/cDmkhWajHWTOTdw4=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "ba6dc5ecc8b637d655e670a8bc1bb184";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-ba6dc5ecc8b637d655e670a8bc1bb184";
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
  kmods."6.6.122-1-ba6dc5ecc8b637d655e670a8bc1bb184" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7623/kmods/6.6.122-1-ba6dc5ecc8b637d655e670a8bc1bb184/";
    sourceInfo = {
      hash = "sha256-9TpkGFzc2r/vcM0vUbO2+yNzIQeYi2SNzUTdv3uH0ZU=";
      name = "kmods-mediatek_mt7623-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7623/kmods/6.6.122-1-ba6dc5ecc8b637d655e670a8bc1bb184/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-8bsQJg3BME1e5Ol4ex3aod/rN+3q7Bh8yDrzxo8fhMc=";
      name = "mediatek_mt7623-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7623/packages/Packages";
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
