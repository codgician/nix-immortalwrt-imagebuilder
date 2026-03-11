# snapshot realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-HFFV3Mh+IwIwjXGW97n2qyGFtpKOSC2163r/UNrckAI=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "3583259f626f7ba3c194b7f4639cd4bf650bb83a7999dddb0f06dbc7cae59b0e";
    filename = "immortalwrt-imagebuilder-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Lb3i8agDgcVH6Qm+iUHaP2TaMkkd6VDAf4A/xUdXN4c=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "d911fd1053ac057db6d4fbaf633024d5";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-d911fd1053ac057db6d4fbaf633024d5";
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
  kmods."6.12.74-1-d911fd1053ac057db6d4fbaf633024d5" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/kmods/6.12.74-1-d911fd1053ac057db6d4fbaf633024d5/";
    sourceInfo = {
      hash = "sha256-Wq1z3YfjXOtH/P2IbW8cTDWyhkWdTcLlCsy4bC5XNr4=";
      name = "kmods-realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/kmods/6.12.74-1-d911fd1053ac057db6d4fbaf633024d5/packages.adb";
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
      hash = "sha256-cdkbTka+UHG0gEv6mTxTlUDozfFhsN0KZp4I16WBU78=";
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
