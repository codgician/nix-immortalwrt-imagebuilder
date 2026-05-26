# 25.12.0 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-p+pvSu510mme5KkA97ewqhiBLmV72hIXmaIfbqmsRmQ=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "be51a0bb64c14ba75fa98cdf6a1d8f4661e2fa880cb37b1aacb83feb134fa5da";
    filename = "immortalwrt-imagebuilder-25.12.0-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vZ4XJOAsWOEanOtYoC86qoLSSbqggi9Yv8dpWKfVhXA=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "ae3174d86acb0f64bd08a9fb7ada3475";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-ae3174d86acb0f64bd08a9fb7ada3475";
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
  kmods."6.12.87-1-ae3174d86acb0f64bd08a9fb7ada3475" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x/kmods/6.12.87-1-ae3174d86acb0f64bd08a9fb7ada3475/";
    sourceInfo = {
      hash = "sha256-m99aqZKCMWNckjZD8iCniyoqBahx4zSMCNMY4ozW6hw=";
      name = "kmods-realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x/kmods/6.12.87-1-ae3174d86acb0f64bd08a9fb7ada3475/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-WSfvMsw1s8jBgHNMNgfROHcDEYpao7bG1ZyfLlAuk6o=";
      name = "realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x/packages/packages.adb";
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
