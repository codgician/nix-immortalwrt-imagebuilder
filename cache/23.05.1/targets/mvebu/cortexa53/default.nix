# 23.05.1 mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-H+l9GGmeGRhofcHwM4hHHqe9FU7d8Gmuo0nIcJRB/G0=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "23e61e529d79ea507e5eac7c87e6a7d5d5ba98a145908e7236471849d5d2fcc8";
    filename = "immortalwrt-imagebuilder-23.05.1-mvebu-cortexa53.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-SIeNJGO8vyRqDhnJX99ElOI76lQCcef55YQlNlENFb4=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
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
      "luci-lib-fs"
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
      glinet_gl-mv1000 = {
        device_packages = [ ];
      };
      globalscale_espressobin = {
        device_packages = [ ];
      };
      globalscale_espressobin-emmc = {
        device_packages = [ ];
      };
      globalscale_espressobin-ultra = {
        device_packages = [
          "kmod-i2c-pxa"
          "kmod-rtc-pcf8563"
        ];
      };
      globalscale_espressobin-v7 = {
        device_packages = [ ];
      };
      globalscale_espressobin-v7-emmc = {
        device_packages = [ ];
      };
      marvell_armada-3720-db = {
        device_packages = [ ];
      };
      methode_edpu = {
        device_packages = [
          "f2fs-tools"
          "fdisk"
          "kmod-i2c-pxa"
          "kmod-hwmon-lm75"
        ];
      };
      methode_udpu = {
        device_packages = [
          "f2fs-tools"
          "fdisk"
          "kmod-i2c-pxa"
          "kmod-hwmon-lm75"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-VmwV6L5pIXaB2ZEuLcTvamGCZJAcNu6msyCrHUAZiog=";
      name = "mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mvebu/cortexa53/packages/Packages";
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
