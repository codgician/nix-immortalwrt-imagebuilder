# 23.05.3 mvebu/cortexa72
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-VGbHQ2bxeYfLoKRZFTWaKVvqw2UusLvbcseuBFQrKuw=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "2e902a0e54d27b16f255f6fe88ea46a6da2bc763839f2ef0c2e38de83c97d1e1";
    filename = "immortalwrt-imagebuilder-23.05.3-mvebu-cortexa72.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-TmXIGfRL1qgLEItakvjx4QekX4HuZk2xWlgOJCCTY1M=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = null;
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
      "ipv6helper"
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
    kmods_target = "null-null-null";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-/B05Zwzt8VD3Cm4cMdWYHVIWYTfexUkfjPCvfppS+7c=";
      name = "mvebu_cortexa72-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mvebu/cortexa72/packages/Packages";
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
