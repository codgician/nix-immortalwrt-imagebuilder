# snapshot realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-rHxW5/XXcbm6+AiqEv4jhTIDwiQxNNU1azmgA/1PT14=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "ac651c446061d589aed8884843286c0ded1b99be44b19f5514c4b278394f8af7";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-wpc6Z08U64YsaFHTnKukjYcbMUWQ4kqCl/pb34imOvg=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "93a7b5831b8dc82b6b2fbf4c21dd2246";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-93a7b5831b8dc82b6b2fbf4c21dd2246";
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
      horaco_zx-swtgw2c48ns = {
        device_packages = [
          "rtl826x-firmware"
          "kmod-hwmon-adt7475"
        ];
      };
      mokerlink_10gt080m = {
        device_packages = [
          "kmod-phy-realtek"
          "rtl826x-firmware"
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
      sirivision_sr-st31212f = {
        device_packages = [ ];
      };
      ubnt_usw-pro-xg-10-poe = {
        device_packages = [
          "rtl826x-firmware"
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
      xikestor_sks8300-12x-v2 = {
        device_packages = [
          "kmod-hwmon-max6650"
          "kmod-hwmon-lm75"
          "kmod-thermal"
        ];
      };
      zyxel_xgs2220-30hp = {
        device_packages = [
          "kmod-hwmon-lm85"
          "kmod-hwmon-gpiofan"
          "kmod-i2c-mux-pca954x"
          "kmod-pse-realtek-mcu-uart"
          "kmod-seg-led-gpio"
        ];
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
  kmods."6.18.60-1-93a7b5831b8dc82b6b2fbf4c21dd2246" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.60-1-93a7b5831b8dc82b6b2fbf4c21dd2246/";
    sourceInfo = {
      hash = "sha256-T7U9opcTsUzoZM5GI3FX0Yzk3U3+bAaGq86GEHJcZcY=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.60-1-93a7b5831b8dc82b6b2fbf4c21dd2246/packages.adb";
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
      hash = "sha256-PV3r0NZHMhTV51xe4zrdzojFu63CK1AhDGjKJTvZHCA=";
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
