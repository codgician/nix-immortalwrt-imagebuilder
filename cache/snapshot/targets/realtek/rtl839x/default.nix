# snapshot realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-AWxprQV2U1gV8kWL7sgtgRJWB4ErDKX7c1udXWJCqxY=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "878fa75faa4418c0ccee3ed21b81ae4b0996c2339c66ae819d8cbc9d9c0dbcf5";
    filename = "immortalwrt-imagebuilder-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8W2II34x/4QkZr4huevmZ7NlMmOIPVhEbGoHU7lW3e8=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "aaef68481161c2bc16343d6ee44095aa";
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
    kmods_target = "6.18.37-1-aaef68481161c2bc16343d6ee44095aa";
    profiles = {
      d-link_dgs-1210-52 = {
        device_packages = [ ];
      };
      edgecore_ecs4100-12ph = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-hwmon-adt7470"
          "kmod-hwmon-lm75"
          "kmod-thermal"
          "realtek-poe"
        ];
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
      zyxel_gs1900-48hp-a1 = {
        device_packages = [ "realtek-poe" ];
      };
      zyxel_gs1920-24hp-v1 = {
        device_packages = [ "kmod-hwmon-lm85" ];
      };
      zyxel_gs1920-24hp-v2 = {
        device_packages = [ "kmod-hwmon-lm85" ];
      };
    };
  };
  kmods."6.18.37-1-aaef68481161c2bc16343d6ee44095aa" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/kmods/6.18.37-1-aaef68481161c2bc16343d6ee44095aa/";
    sourceInfo = {
      hash = "sha256-OhVqZqiGHwDM3kx5LUvgV1XINdUPkQQsGmBew5At3ak=";
      name = "kmods-realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/kmods/6.18.37-1-aaef68481161c2bc16343d6ee44095aa/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-QzHXjaTuSX44qY/fkUiAv5obICkYij+RsbnuwEOQbSU=";
      name = "realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/packages/packages.adb";
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
