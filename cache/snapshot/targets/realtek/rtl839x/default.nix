# snapshot realtek/rtl839x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-T/ickr1UMytsfSkfZ2MQZoXXL8u0nn03Zc79SXBp24o=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "b404cd99f82d708f7af5fc135d474901622de33e66cb1ce9326482f3cf92f671";
    filename = "immortalwrt-imagebuilder-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-wo60+D5cEG+FZUUGFTt8i8kBTL2dafCfMqJ/V2t+sFY=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "86c9d64be8dabba2ea9f0b9e3a6e6cf0";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-86c9d64be8dabba2ea9f0b9e3a6e6cf0";
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
      zyxel_gs1920-24hp-v1 = {
        device_packages = [ "kmod-hwmon-lm85" ];
      };
    };
  };
  kmods."6.12.67-1-86c9d64be8dabba2ea9f0b9e3a6e6cf0" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl839x/kmods/6.12.67-1-86c9d64be8dabba2ea9f0b9e3a6e6cf0/";
    sourceInfo = {
      hash = "sha256-FvaWbLgwMMEfYVEw2OAZj7/FW5/GEgOH3DsvI6IxmOU=";
      name = "kmods-realtek_rtl839x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl839x/kmods/6.12.67-1-86c9d64be8dabba2ea9f0b9e3a6e6cf0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-yQ8Ru5LpUtRAjgz0u9xt87JCuQh/lpMmaRrD/htPtO4=";
      name = "realtek_rtl839x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl839x/packages/packages.adb";
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
