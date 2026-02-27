# 21.02.7 mediatek/mt7623
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-7PU7yPedt6fcW0EBcDzEC/tv5EUQsZmiaebx3HMS/g4=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "96b083ca6765f05c4f0d408630c22ef1c0ac711837b7f3f6cf0b9c87181f00a2";
    filename = "immortalwrt-imagebuilder-21.02.7-mediatek-mt7623.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-s7VEhWGqdzZfftGxUkhCJUgJYw11BcHAwhbL2Ly6MBQ=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      bpi_bananapi-r2 = {
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
          "kmod-ata-ahci-mtk"
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
          "kmod-ata-ahci-mtk"
        ];
      };
      unielec_u7623-emmc = {
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
          "kmod-ata-ahci-mtk"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-UfAdyhtFxF2qIYtEkkvgs4aEfVL4M5lK6lDoasm78gc=";
      name = "mediatek_mt7623-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7623/packages/Packages";
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
