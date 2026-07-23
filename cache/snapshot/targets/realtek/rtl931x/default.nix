# snapshot realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-mOAvHuxZMBxmPJB1AZT5rrCEOijIx9yFVQ0oHuw9ApY=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "866c76a4062083613b8a77276f709fdd2a180bb9df0d97efbfa5b0406eafd41f";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XJ+ymCEoCy7yMQ9O8U4ghhltIve1NBDMzySardHpVbU=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "61af19fdc0e8bae6b50653cb7c4b4c44";
      version = "6.18.39";
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
    kmods_target = "6.18.39-1-61af19fdc0e8bae6b50653cb7c4b4c44";
    profiles = {
      hasivo_f5800w-12s-plus = {
        device_packages = [
          "kmod-hasivo-mcu-wdt"
          "kmod-hasivo-mcu-sensor"
          "kmod-rtc-pcf8563"
        ];
      };
      hasivo_s1300wp-8xgt-4s-plus = {
        device_packages = [
          "kmod-phy-realtek"
          "kmod-rtc-pcf8563"
          "rtl826x-firmware"
          "kmod-hasivo-mcu-wdt"
          "kmod-hasivo-mcu-sensor"
          "kmod-pse-hasivo-hs104"
          "kmod-mfd-hasivo-stc8"
        ];
      };
      plasmacloud_esx28 = {
        device_packages = [ "kmod-hwmon-adt7475" ];
      };
      plasmacloud_psx28 = {
        device_packages = [
          "kmod-hwmon-adt7475"
          "kmod-pse-realtek-mcu-i2c"
        ];
      };
      ubnt_usw-pro-xg-8-poe = {
        device_packages = [
          "rtl826x-firmware"
          "kmod-hwmon-adt7475"
          "kmod-pse-realtek-mcu-i2c"
        ];
      };
      xikestor_sks8300-12x-v1 = {
        device_packages = [ ];
      };
      zyxel_xs1930-10 = {
        device_packages = [
          "kmod-hwmon-lm85"
          "kmod-hwmon-gpiofan"
        ];
      };
      zyxel_xs1930-12f = {
        device_packages = [
          "kmod-hwmon-lm85"
          "kmod-hwmon-gpiofan"
        ];
      };
      zyxel_xs1930-12hp = {
        device_packages = [
          "kmod-hwmon-lm85"
          "kmod-hwmon-gpiofan"
          "kmod-pse-realtek-mcu-i2c"
        ];
      };
    };
  };
  kmods."6.18.39-1-61af19fdc0e8bae6b50653cb7c4b4c44" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.39-1-61af19fdc0e8bae6b50653cb7c4b4c44/";
    sourceInfo = {
      hash = "sha256-nkhEJBJeQipM1eYFnUvUrSsmPX43GXZQfx/Svh3n/AQ=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.39-1-61af19fdc0e8bae6b50653cb7c4b4c44/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/packages/";
    sourceInfo = {
      hash = "sha256-bauDIdzCoHeRYssU46QNMR1jNzC+76nU7ikHj3RzpsQ=";
      name = "realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/packages/packages.adb";
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
