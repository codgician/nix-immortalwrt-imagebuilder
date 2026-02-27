# 21.02.7 mediatek/mt7629
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-v1lkzMXsjDMXrR+C8MPgO3MplsdLYvyIx2xjIgMhlCQ=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "d901832a667039a0aecf022310b699193aa04e99f7365a56a412717749649988";
    filename = "immortalwrt-imagebuilder-21.02.7-mediatek-mt7629.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-G2wImVSc05w1dSnZJyJxJfj5RRWyF9+crWNAuFb1nOo=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
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
      mediatek_mt7629-rfb = {
        device_packages = [ "swconfig" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-jOFdvbbGL4dcf4reKXxTrLGToChnL/vqNEm2R7d6TYM=";
      name = "mediatek_mt7629-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mediatek/mt7629/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7";
  feeds = import ./../../../packages/arm_cortex-a7.nix;
}
