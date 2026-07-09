# snapshot realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-A2YJwMvNozasXEuhQkE8kATZskgQTtYvfFcVTGjsu9E=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "42d3ccb9963c3e2ff0a5c2c622a71a28acb2df8c45b353fbfd538a303f0baeea";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/sPXVVrt0MQxBRMcI+2oPuQ8gEDpi9DgAzu1ZJJ7BGQ=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "0eec3226ebd1e3b30afab2f8afa3c39d";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-0eec3226ebd1e3b30afab2f8afa3c39d";
    profiles = {
      hasivo_f5800w-12s-plus = {
        device_packages = [
          "kmod-hasivo-mcu-wdt"
          "kmod-hasivo-mcu-sensor"
          "kmod-rtc-pcf8563"
        ];
      };
      plasmacloud_esx28 = {
        device_packages = [ "kmod-hwmon-adt7475" ];
      };
      plasmacloud_psx28 = {
        device_packages = [
          "kmod-hwmon-adt7475"
          "poemgr"
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
        ];
      };
    };
  };
  kmods."6.18.37-1-0eec3226ebd1e3b30afab2f8afa3c39d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.37-1-0eec3226ebd1e3b30afab2f8afa3c39d/";
    sourceInfo = {
      hash = "sha256-1a4GePmq17JkY0VOkWOjZK8XyE6i1v3S3A1Cy/ib2SM=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x/kmods/6.18.37-1-0eec3226ebd1e3b30afab2f8afa3c39d/packages.adb";
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
      hash = "sha256-qSk9/CRredZqMDm2XJYltG8ZnVpEv0c+/1Wj43tfwLY=";
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
