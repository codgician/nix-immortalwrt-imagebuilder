# snapshot mvebu/cortexa72
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-BhztVpqIcLALWrI+63BuV9ODPu54zENi/E8xmSgLmqQ=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "347919adc9e67edeb1783fb720b78d0f255586fc158a9e4f0db44f10326ce8c0";
    filename = "immortalwrt-imagebuilder-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-H6kLpqLRuazd1r8dGZRRFdWas6dV90Hc68zNUoW1nRc=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "893429c825098c37f3bdd9a7a3699323";
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
    kmods_target = "6.12.67-1-893429c825098c37f3bdd9a7a3699323";
    profiles = {
      checkpoint_v-80 = {
        device_packages = [
          "kmod-dsa-mv88e6xxx"
          "kmod-hwmon-nct7802"
          "kmod-rtc-ds1307"
        ];
      };
      checkpoint_v-81 = {
        device_packages = [
          "kmod-dsa-mv88e6xxx"
          "kmod-hwmon-nct7802"
          "kmod-rtc-ds1307"
        ];
      };
      globalscale_mochabin = {
        device_packages = [ "kmod-dsa-mv88e6xxx" ];
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
          "kmod-dsa-mv88e6xxx"
        ];
      };
      solidrun_clearfog-pro = {
        device_packages = [
          "kmod-i2c-mux-pca954x"
          "kmod-dsa-mv88e6xxx"
        ];
      };
    };
  };
  kmods."6.12.67-1-893429c825098c37f3bdd9a7a3699323" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa72/kmods/6.12.67-1-893429c825098c37f3bdd9a7a3699323/";
    sourceInfo = {
      hash = "sha256-Z0zDSRDYvy4aK4VgVhe2c0lzgg3J/n+T11MZb2mUtoI=";
      name = "kmods-mvebu_cortexa72-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa72/kmods/6.12.67-1-893429c825098c37f3bdd9a7a3699323/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-MxVetNyKiq0cmk/JeZIO4rrQaJPKr6mT9x0KizFED84=";
      name = "mvebu_cortexa72-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mvebu/cortexa72/packages/packages.adb";
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
