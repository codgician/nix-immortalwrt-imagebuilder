# 25.12.1 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-/j/dCeBwkCH6FfY+20fuczX/IPWbheXPa+gEPMhao/E=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "4283893a79060cf25adba0c8da22b7ca82a58a1a1317846df11c14b1a84c8e90";
    filename = "immortalwrt-imagebuilder-25.12.1-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VYZQQr0y2VfRjooLZXHSpdtkMzB0MxkRece0/y6AL6I=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "5974165323247118f7f9a844509da7cc";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-5974165323247118f7f9a844509da7cc";
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
  kmods."6.12.94-1-5974165323247118f7f9a844509da7cc" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x/kmods/6.12.94-1-5974165323247118f7f9a844509da7cc/";
    sourceInfo = {
      hash = "sha256-VrknJ1jFjJ9ByqbVUZWPQbYBrFGcPYA12iWsDRClVEE=";
      name = "kmods-realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x/kmods/6.12.94-1-5974165323247118f7f9a844509da7cc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-sXEyv7qnk0mPpzdIljIegZA/GoCS+BYiahcglRY+Ns4=";
      name = "realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl930x/packages/packages.adb";
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
