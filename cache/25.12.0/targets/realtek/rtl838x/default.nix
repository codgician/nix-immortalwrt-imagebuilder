# 25.12.0 realtek/rtl838x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl838x/";
  sha256sums = {
    hash = "sha256-QqZCs2MdsI2spmNQdOMNSHxuhk7X8oll/ux/faeIWlo=";
    name = "realtek_rtl838x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl838x/sha256sums";
  };
  imagebuilder = {
    sha256 = "840f273a214d400710de7bfdaaba86c397da454361e64a2a55b1babccac5b5ca";
    filename = "immortalwrt-imagebuilder-25.12.0-realtek-rtl838x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WxwjHMabanJwSgP2NGQKq46xpHLvacqQZDtQSUgbZaA=";
    name = "realtek_rtl838x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl838x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "f2d389d3a86400510153d31635d46ce7";
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
    kmods_target = "6.12.87-1-f2d389d3a86400510153d31635d46ce7";
    profiles = {
      allnet_all-sg8208m = {
        device_packages = [ ];
      };
      apresia_aplgs120gtss = {
        device_packages = [ ];
      };
      d-link_dgs-1210-10mp-f = {
        device_packages = [ "realtek-poe" ];
      };
      d-link_dgs-1210-10p = {
        device_packages = [ "realtek-poe" ];
      };
      d-link_dgs-1210-16 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-20 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-26 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-28 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-28mp-f = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-lm63"
        ];
      };
      d-link_dgs-1210-28p-f = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-lm63"
        ];
      };
      engenius_ews2910p-v1 = {
        device_packages = [ "realtek-poe" ];
      };
      engenius_ews2910p-v3 = {
        device_packages = [ ];
      };
      hpe_1920-16g = {
        device_packages = [ ];
      };
      hpe_1920-24g = {
        device_packages = [ ];
      };
      hpe_1920-24g-poe-180w = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      hpe_1920-24g-poe-370w = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      hpe_1920-8g = {
        device_packages = [ ];
      };
      hpe_1920-8g-poe-180w = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      hpe_1920-8g-poe-65w = {
        device_packages = [ "realtek-poe" ];
      };
      inaba_aml2-17gp = {
        device_packages = [ ];
      };
      iodata_bsh-g24mb = {
        device_packages = [ ];
      };
      linksys_lgs310c = {
        device_packages = [ ];
      };
      netgear_gs108t-v3 = {
        device_packages = [ ];
      };
      netgear_gs110tpp-v1 = {
        device_packages = [ "realtek-poe" ];
      };
      netgear_gs110tup-v1 = {
        device_packages = [ "realtek-poe" ];
      };
      netgear_gs308t-v1 = {
        device_packages = [ ];
      };
      netgear_gs310tp-v1 = {
        device_packages = [ "realtek-poe" ];
      };
      panasonic_m16eg-pn28160k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      panasonic_m24eg-pn28240k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      panasonic_m8eg-pn28080k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      tplink_sg2008p-v1 = {
        device_packages = [ "kmod-hwmon-tps23861" ];
      };
      tplink_sg2210p-v3 = {
        device_packages = [ "kmod-hwmon-tps23861" ];
      };
      tplink_t1600g-28ts-v3 = {
        device_packages = [ ];
      };
      zyxel_gs1900-10hp-a1 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-16-a1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24-a1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24e-a1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24ep-a1 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-24hp-a1 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-24hp-b1 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-8-a1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-8-b1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-8hp-a1 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1900-8hp-b1 = {
        device_packages = [ "realtek-poe" ];
      };
    };
  };
  kmods."6.12.87-1-f2d389d3a86400510153d31635d46ce7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl838x/kmods/6.12.87-1-f2d389d3a86400510153d31635d46ce7/";
    sourceInfo = {
      hash = "sha256-IvVvyWJ1NguDjFafB3Mztg5W0x/aHrCY/J24GVfP7RM=";
      name = "kmods-realtek_rtl838x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl838x/kmods/6.12.87-1-f2d389d3a86400510153d31635d46ce7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl838x/packages/";
    sourceInfo = {
      hash = "sha256-BXTJSgXAKf4RT9pY0uaYFJOgg2WZ7zcyEwZBuFLbKFU=";
      name = "realtek_rtl838x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl838x/packages/packages.adb";
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
