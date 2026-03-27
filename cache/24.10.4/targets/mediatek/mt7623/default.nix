# 24.10.4 mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-UlJZD+dL0iE9v1X57a/xvGbBQtIblZJgbCt0y+GOoDg=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "9f5609fa0b53c02267ea75ab2a611e6f7b3b9e95f482d6521694e611fad60095";
    filename = "immortalwrt-imagebuilder-24.10.4-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9u4Pfu+qhWDiRuArS/bo9H73GlRJ5eL8fz+eG2/35c4=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "9200ffd8ed7814e3d58244a6b592dd8d";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-9200ffd8ed7814e3d58244a6b592dd8d";
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
  kmods."6.6.110-1-9200ffd8ed7814e3d58244a6b592dd8d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7623/kmods/6.6.110-1-9200ffd8ed7814e3d58244a6b592dd8d/";
    sourceInfo = {
      hash = "sha256-3lbE/oicgWKMhN0y75F5TfTYauAohO2VTbbXSHZ4oPk=";
      name = "kmods-mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7623/kmods/6.6.110-1-9200ffd8ed7814e3d58244a6b592dd8d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-monINJkfJZmdSidEX5XZRXPZrQuO46YlK2BrVtVvU0Q=";
      name = "mediatek_mt7623-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mediatek/mt7623/packages/Packages";
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
