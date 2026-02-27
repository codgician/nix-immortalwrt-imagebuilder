# 21.02.7 mvebu/cortexa72
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-HHMVFG80PIH5sFvRIBN34gmHjqvyGPUpfBkdahSQp6E=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "b8171d0f7e28a00ce0140ae5ec770047f2c03d1b637bef3c63bd0923d97f3293";
    filename = "immortalwrt-imagebuilder-21.02.7-mvebu-cortexa72.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-tvaosRG3i3gqA+FcF3AlvgTsvBY0ZztUFWXW9ipXNbM=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
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
      "e2fsprogs"
      "ethtool"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      iei_puzzle-m901 = {
        device_packages = [ ];
      };
      iei_puzzle-m902 = {
        device_packages = [ ];
      };
      marvell_armada7040-db = {
        device_packages = [ ];
      };
      marvell_armada8040-db = {
        device_packages = [ ];
      };
      marvell_macchiatobin-doubleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      marvell_macchiatobin-singleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-bU3eoXnkazMBrFLovovq2nAnUbpuEh/Pt4F0ZpaVBaQ=";
      name = "mvebu_cortexa72-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa72/packages/Packages";
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
