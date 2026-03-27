# snapshot realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-n11MzRq2Ync33AsOQVMZx1MkGOzCTlRATgT3sCSMTyI=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "9bf81715897ee958ef1df5acd78b342df6fdbddfb018cf3621d89af818a0959c";
    filename = "immortalwrt-imagebuilder-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OTgZm2kEg4uAGYRL3aqASKDXALazLC+FGbRkTyDNa0o=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "d911fd1053ac057db6d4fbaf633024d5";
      version = "6.12.77";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "odhcp6c"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.77-1-d911fd1053ac057db6d4fbaf633024d5";
    profiles = {
      hasivo_s1100w-8xgt-se = {
        device_packages = [ ];
      };
      hasivo_s1100wp-8gt-se = {
        device_packages = [ ];
      };
      plasmacloud_mcx3 = {
        device_packages = [ "poemgr" ];
      };
      plasmacloud_psx10 = {
        device_packages = [ "poemgr" ];
      };
      plasmacloud_psx8 = {
        device_packages = [ "poemgr" ];
      };
      tplink_tl-st1008f-v2 = {
        device_packages = [ "kmod-gpio-pca953x" ];
      };
      vimin_vm-s100-0800ms = {
        device_packages = [ ];
      };
      xikestor_sks8300-12e2t2x = {
        device_packages = [ ];
      };
      xikestor_sks8300-8t = {
        device_packages = [ "kmod-hwmon-lm75" ];
      };
      xikestor_sks8300-8x = {
        device_packages = [ ];
      };
      xikestor_sks8310-8x = {
        device_packages = [ "kmod-hwmon-lm75" ];
      };
      zyxel_xgs1010-12-a1 = {
        device_packages = [ ];
      };
      zyxel_xgs1210-12-a1 = {
        device_packages = [ ];
      };
      zyxel_xgs1210-12-b1 = {
        device_packages = [ ];
      };
      zyxel_xgs1250-12-a1 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
      zyxel_xgs1250-12-b1 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.12.77-1-d911fd1053ac057db6d4fbaf633024d5" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/kmods/6.12.77-1-d911fd1053ac057db6d4fbaf633024d5/";
    sourceInfo = {
      hash = "sha256-Vm0b0/PMoMb79jWrjxVxXr21k2goz2MwOl0nhxsIXYE=";
      name = "kmods-realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/kmods/6.12.77-1-d911fd1053ac057db6d4fbaf633024d5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-xtyCTL4F3OVv4m7esX4UxC3sUy8YPBKCYjRm6KxyunM=";
      name = "realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
