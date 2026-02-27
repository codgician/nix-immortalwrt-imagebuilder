# 24.10.5 mvebu/cortexa72
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-BeQsEWHu2afVNX45+sExx10J1CF3L41vjXswJYQY0bY=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "c981d2a6a51b5f14dd47ebdad13f7f178d60bd6b1e5518628519f5545e8ab740";
    filename = "immortalwrt-imagebuilder-24.10.5-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3v6VLYQ/E0XUhyaJIQzzGT/ytEZlnrAPy+CTn0QhR4k=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "60f4d8871f523c69158946808c6042ac";
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
      "e2fsprogs"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-60f4d8871f523c69158946808c6042ac";
    profiles = {
      globalscale_mochabin = {
        device_packages = [ ];
      };
      iei_puzzle-m901 = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
      iei_puzzle-m902 = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
      marvell_armada7040-db = {
        device_packages = [ ];
      };
      marvell_armada8040-db = {
        device_packages = [ ];
      };
      marvell_clearfog-gt-8k = {
        device_packages = [
          "kmod-i2c-mux-pca954x"
          "kmod-crypto-hw-safexcel"
        ];
      };
      marvell_macchiatobin-doubleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      marvell_macchiatobin-singleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      mikrotik_rb5009 = {
        device_packages = [
          "kmod-i2c-gpio"
          "yafut"
        ];
      };
      solidrun_clearfog-pro = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
    };
  };
  kmods."6.6.122-1-60f4d8871f523c69158946808c6042ac" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa72/kmods/6.6.122-1-60f4d8871f523c69158946808c6042ac/";
    sourceInfo = {
      hash = "sha256-pWfT6nuEpPRKGaPkl4o7Nnxu+l6x2nENQQXg7VW1jCc=";
      name = "kmods-mvebu_cortexa72-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa72/kmods/6.6.122-1-60f4d8871f523c69158946808c6042ac/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-+dMozYs305EGlB7pJSdWsYPKd9VCZFh/5Zph+IEKKOA=";
      name = "mvebu_cortexa72-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa72/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}
