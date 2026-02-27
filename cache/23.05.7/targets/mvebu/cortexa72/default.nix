# 23.05.7 mvebu/cortexa72
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-MGfepXPA3lDs/BLcu+z8eryLYZvz6muB2oYVfQvKJIc=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "587c80e2ea2b42fc3754b5bf82b2c4dff4824d49845966f1dc4ee2cebe96e80e";
    filename = "immortalwrt-imagebuilder-23.05.7-mvebu-cortexa72.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-B+9uGMI9wJNA6xnpyOO4uN8JuTr895xvFanC1H+6KoI=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "a187aa70680f31c1537aec8c1cbdf90c";
      version = "5.15.195";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
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
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-a187aa70680f31c1537aec8c1cbdf90c";
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
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-L8Zyixdl3hDdA2mid8xDRrsN6DTVe8hnmQ7BDRUxe7g=";
      name = "mvebu_cortexa72-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa72/packages/Packages";
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
