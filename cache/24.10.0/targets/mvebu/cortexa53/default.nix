# 24.10.0 mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-mf/PHjVF1FyaMLeuavQqKYQvTrX5sB9/KzotzGo9RNU=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "3261f67c22d2ade5cd1179656710c9adc7c32155f03aecbed4fb9200b91fb52d";
    filename = "immortalwrt-imagebuilder-24.10.0-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6RvhjuqGCZ4KVH7TZoqh+0lrLJqRW+VeP/0mhOuaSmk=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "f4da4bd938d095d008d2ee11e66adb71";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-f4da4bd938d095d008d2ee11e66adb71";
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
  kmods."6.6.73-1-f4da4bd938d095d008d2ee11e66adb71" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa53/kmods/6.6.73-1-f4da4bd938d095d008d2ee11e66adb71/";
    sourceInfo = {
      hash = "sha256-bnu54jymJdk3J0g5h1QAdVZ/JgfEiwecPQAvj5oDgNo=";
      name = "kmods-mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa53/kmods/6.6.73-1-f4da4bd938d095d008d2ee11e66adb71/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-Y/LKQQaU6IfBLytkLbztBoaT0xk0btm+fOOXhzsN8YU=";
      name = "mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa53/packages/Packages";
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
