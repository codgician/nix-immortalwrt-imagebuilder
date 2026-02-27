# snapshot realtek/rtl930x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-/QXUIQH1ylNDz7m03c9ljRJ46zHyR8Nrm9g0g0ULl6w=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "744d6ec255c52a51bc6ca6bbe327540abdbc9fba733a0520633790ff3ebdb3c4";
    filename = "immortalwrt-imagebuilder-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-fQ3GYxGJodcI3y+5O4DC1/BUw7sC6jRgqTwmZiReZ6U=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "08a4cee5c70f9f2da5045ad6f19a0dfb";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-08a4cee5c70f9f2da5045ad6f19a0dfb";
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
      xikestor_sks8300-8t = {
        device_packages = [ "kmod-hwmon-lm75" ];
      };
      xikestor_sks8300-8x = {
        device_packages = [ ];
      };
      xikestor_sks8310-8x = {
        device_packages = [ ];
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
  kmods."6.12.67-1-08a4cee5c70f9f2da5045ad6f19a0dfb" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x/kmods/6.12.67-1-08a4cee5c70f9f2da5045ad6f19a0dfb/";
    sourceInfo = {
      hash = "sha256-Im/6JnF/MahYHPeAfbxUA5UbWfmON/T1rEq/r6HgiRI=";
      name = "kmods-realtek_rtl930x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x/kmods/6.12.67-1-08a4cee5c70f9f2da5045ad6f19a0dfb/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-mjCunVs9+CKMlVWBbJIKdyMimBuIXi0iqHMuLeEKlmA=";
      name = "realtek_rtl930x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x/packages/packages.adb";
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
