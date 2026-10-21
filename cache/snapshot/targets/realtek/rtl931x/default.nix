# snapshot realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-Foqnpo6p/PRinIHtVHGyJhDIBWIqKuGE+TGUXChD+8E=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "f28307abd90dfde52a057186249ec38fa0819ed83851f552ca740cb6bf802b62";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/u5qdmbPQpi0Fztw+J+j5LDn0PrmaV++v1pWS/WHh7Y=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "7742651ae32e3a6e029cf1279987b9dd";
      version = "6.18.55";
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
    kmods_target = "6.18.55-1-7742651ae32e3a6e029cf1279987b9dd";
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
  kmods."6.18.55-1-7742651ae32e3a6e029cf1279987b9dd" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.55-1-7742651ae32e3a6e029cf1279987b9dd/";
    sourceInfo = {
      hash = "sha256-egupcyFZTrWllw6KnIde0pYkkM5c6fpZM0VSC9MkTIw=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.55-1-7742651ae32e3a6e029cf1279987b9dd/packages.adb";
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
      hash = "sha256-Sx3Ibia/LIoOUDA6wFY1zbqeg4ZKNrRCKVIxSY8hAIc=";
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
