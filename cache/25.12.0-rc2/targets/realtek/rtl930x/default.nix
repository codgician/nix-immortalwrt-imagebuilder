# 25.12.0-rc2 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-tt9SgfwEhTUpAgc7g8s9dgANf7yPvMekxgOiIvun7fc=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "2daaaf66c70204f93af6acf79b105d447185008485642eb0811e3f3bdfa2ed70";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Pb4KFOf/PUeJvXlY59p/FWZtx64JRM9hf/eOryw84iM=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "7edf2a6497fcf223a58f493c6d14cdad";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.79-1-7edf2a6497fcf223a58f493c6d14cdad";
    profiles = {
      hasivo_s1100w-8xgt-se = {
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
  kmods."6.12.79-1-7edf2a6497fcf223a58f493c6d14cdad" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x/kmods/6.12.79-1-7edf2a6497fcf223a58f493c6d14cdad/";
    sourceInfo = {
      hash = "sha256-Mn08GDYo31JOPvbZb/4q3obN/OQfpZmsSJVFwQL7/JM=";
      name = "kmods-realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x/kmods/6.12.79-1-7edf2a6497fcf223a58f493c6d14cdad/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-Dk9tMwJ7vuyw9JVCcuDzlwlgXKd1DwnnOFtGhy0vN5I=";
      name = "realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x/packages/packages.adb";
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
