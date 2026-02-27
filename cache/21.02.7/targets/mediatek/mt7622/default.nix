# 21.02.7 mediatek/mt7622
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7622/";
  sha256sums = {
    hash = "sha256-hsxCT+BDbnVVy/01sAQDqW7bhPat52DGh1hN3kRZdYs=";
    name = "mediatek_mt7622-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7622/sha256sums";
  };
  imagebuilder = {
    sha256 = "76fae21c03a75da54bd45b0e9e6eb60e2e1387e0ec9e5533026204bd1c49ac00";
    filename = "immortalwrt-imagebuilder-21.02.7-mediatek-mt7622.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-MDXuww4vTcJBHkKY9aD0jAbkEFwuRflkR0qqoUKDNJY=";
    name = "mediatek_mt7622-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7622/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
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
      "kmod-mt7615-firmware"
      "kmod-mt7615e"
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
      "wpad-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      bpi_bananapi-r64 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci-mtk"
        ];
      };
      bpi_bananapi-r64-rootdisk = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci-mtk"
        ];
      };
      elecom_wrc-2533gent = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-mt7615e"
          "kmod-mt7615-firmware"
          "kmod-btmtkuart"
          "swconfig"
        ];
      };
      mediatek_mt7622-rfb1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci-mtk"
        ];
      };
      mediatek_mt7622-ubi = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci-mtk"
        ];
      };
      ubnt_unifi-6-lr = {
        device_packages = [ "kmod-mt7915e" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7622/packages/";
    sourceInfo = {
      hash = "sha256-ZX13LKESfGTGHLE5vCQFsDAu/vBlhlKllMCuyv01+PM=";
      name = "mediatek_mt7622-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7622/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
