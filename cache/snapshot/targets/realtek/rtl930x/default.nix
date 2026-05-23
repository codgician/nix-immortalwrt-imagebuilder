# snapshot realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-Ac9/kVBZz/m5KeSvuvGWoteE0ZuZtcGj43tvo4canjY=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "94ab51e4875b18404da6adc33d3ddbc5e8e5445eb238bd66ca0c095c45d74774";
    filename = "immortalwrt-imagebuilder-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-POUyJOtq5gZ5jj3/FFh7a5+V2Zt3096R2ieHyjT4Oac=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "4da898d8b8b192accd0a5537f6a87b6d";
      version = "6.18.31";
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
    kmods_target = "6.18.31-1-4da898d8b8b192accd0a5537f6a87b6d";
    profiles = {
      d-link_dgs-1250-28x = {
        device_packages = [ "kmod-hwmon-lm75" ];
      };
      hasivo_s1100w-8xgt-se = {
        device_packages = [ "rtl8264b-firmware" ];
      };
      hasivo_s1100wp-8gt-se = {
        device_packages = [ ];
      };
      hasivo_s600wp-5gt-2sx-se = {
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
      xikestor_sks7300-4x4t = {
        device_packages = [ "kmod-hwmon-lm75" ];
      };
      xikestor_sks8300-12e2t2x = {
        device_packages = [ "rtl8261n-firmware" ];
      };
      xikestor_sks8300-8t = {
        device_packages = [
          "kmod-hwmon-lm75"
          "rtl8261n-firmware"
        ];
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
          "rtl8261n-firmware"
        ];
      };
      zyxel_xgs1930-28hp = {
        device_packages = [ "kmod-hwmon-gpiofan" ];
      };
      zyxel_xmg1915-10e = {
        device_packages = [ ];
      };
      zyxel_xmg1915-10ep = {
        device_packages = [ "realtek-poe" ];
      };
    };
  };
  kmods."6.18.31-1-4da898d8b8b192accd0a5537f6a87b6d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/kmods/6.18.31-1-4da898d8b8b192accd0a5537f6a87b6d/";
    sourceInfo = {
      hash = "sha256-hL/K9SiPb27oveQMFF3FA727hw2vkl5z23kAa6glpfc=";
      name = "kmods-realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x/kmods/6.18.31-1-4da898d8b8b192accd0a5537f6a87b6d/packages.adb";
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
      hash = "sha256-GvPhnunVSP/aXYXWvpt8fm6keL8jvzhpUeraXsvNRDg=";
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
