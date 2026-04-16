# 25.12.0-rc2 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-FBLET3pRMeJuk6PHbZZdcansLWsuDpAS+B2rcyHHtM8=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "62441a62d570e36f015b4da755743ee6d4223122e7bea286df650ab9e726ae6f";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-QIqvIxabYxqPGWOVDZASip79KJqfG3A2lO1p5CC4SOM=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "c10315c1447d7564cef15f57cab01d4d";
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
    kmods_target = "6.12.79-1-c10315c1447d7564cef15f57cab01d4d";
    profiles = {
      d-link_dgs-1210-52 = {
        device_packages = [ ];
      };
      hpe_1920-48g = {
        device_packages = [ ];
      };
      hpe_1920-48g-poe = {
        device_packages = [
          "realtek-poe"
          "kmod-hwmon-gpiofan"
        ];
      };
      netgear_gs750e = {
        device_packages = [ ];
      };
      panasonic_m48eg-pn28480k = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-lm75"
          "kmod-i2c-mux-pca954x"
          "kmod-thermal"
        ];
      };
      tplink_sg2452p-v4 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-tps23861"
        ];
      };
      zyxel_gs1900-48-a1 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.79-1-c10315c1447d7564cef15f57cab01d4d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl839x/kmods/6.12.79-1-c10315c1447d7564cef15f57cab01d4d/";
    sourceInfo = {
      hash = "sha256-jWBk2PhaIJ4mWyInPfLk7P8fbbIdATHjyM+oJV6CtpE=";
      name = "kmods-realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl839x/kmods/6.12.79-1-c10315c1447d7564cef15f57cab01d4d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-GQHJQAJiCg8oq5BOKfH/x3i6wmwam7SnxLgPQjngXg8=";
      name = "realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl839x/packages/packages.adb";
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
