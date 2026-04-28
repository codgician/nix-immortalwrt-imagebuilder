# 24.10.6 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-J1nFe3Da3+BxNgeddiOh98MOiPs/AxKOil8YdY1jfDE=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "dc5d767c34d8f4860f8dee5207c79a139c55852c15dc4e498eea1d348c0c38c1";
    filename = "immortalwrt-imagebuilder-24.10.6-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mLrNkqwEg6U+NhXVtKGDNTQTwdkX2DTmMQuup5Fwuxg=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "49d74398db7b9ec04ad1169cdba3303c";
      version = "6.6.133";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "odhcp6c"
      "opkg"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.133-1-49d74398db7b9ec04ad1169cdba3303c";
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
      zyxel_gs1900-48 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.133-1-49d74398db7b9ec04ad1169cdba3303c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl839x/kmods/6.6.133-1-49d74398db7b9ec04ad1169cdba3303c/";
    sourceInfo = {
      hash = "sha256-ExCZI3p9YCizG4eQE7Y/GOcOTk3v7T1kcPEAMkeQI5w=";
      name = "kmods-realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl839x/kmods/6.6.133-1-49d74398db7b9ec04ad1169cdba3303c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-i58x29LcdxryhzE6qlWVrHbqmb5089mHUuZ/dTejPwU=";
      name = "realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl839x/packages/Packages";
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
