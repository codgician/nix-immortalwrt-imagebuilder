# snapshot mvebu/cortexa53
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-lxm8k1nXOaC9JUnIwiJ4lzpiAy4ZVEnqNahqv0YZdkE=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "1abfc6c73d8541009d740b77538c6ed3cb1daae61e77293b79ae7c63f5aed146";
    filename = "immortalwrt-imagebuilder-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bfN/Dpz+fNUS6DPYlqnt7JgvFIJt6/6lWGWcA7Y77ns=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "be66219d104b4fdb05ad3b14f433830a";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.67-1-be66219d104b4fdb05ad3b14f433830a";
    profiles = {
      cznic_turris-mox = {
        device_packages = [
          "kmod-usb2"
          "kmod-gpio-button-hotplug"
          "kmod-rtc-ds1307"
          "kmod-i2c-pxa"
        ];
      };
      glinet_gl-mv1000 = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      globalscale_espressobin = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      globalscale_espressobin-emmc = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      globalscale_espressobin-ultra = {
        device_packages = [
          "kmod-i2c-pxa"
          "kmod-rtc-pcf8563"
          "kmod-dsa-mv88e6xxx"
        ];
      };
      globalscale_espressobin-v7 = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
      };
      globalscale_espressobin-v7-emmc = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
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
          "kmod-dsa-mv88e6xxx"
        ];
      };
      methode_udpu = {
        device_packages = [
          "f2fs-tools"
          "fdisk"
          "kmod-i2c-pxa"
          "kmod-hwmon-lm75"
          "kmod-dsa-mv88e6xxx"
        ];
      };
    };
  };
  kmods."6.12.67-1-be66219d104b4fdb05ad3b14f433830a" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa53/kmods/6.12.67-1-be66219d104b4fdb05ad3b14f433830a/";
    sourceInfo = {
      hash = "sha256-H9unFwaz0jLoAKTv7aNjvk5FIthIJ5nqV5V4AHi3pcE=";
      name = "kmods-mvebu_cortexa53-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa53/kmods/6.12.67-1-be66219d104b4fdb05ad3b14f433830a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-tbDlQ86BHJztwMToDLAFQO4cp9XaEPxf6t07mXGSwVY=";
      name = "mvebu_cortexa53-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa53/packages/packages.adb";
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
