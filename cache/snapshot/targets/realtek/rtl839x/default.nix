# snapshot realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-GAUBN/ZU/Wd9Gk3ym7yTgTJNlEuAsP1XgMjvPUML6AE=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "c7ad20849f9109f5fb40e63046b096cc50eaec21c4d6807b613e1a9384bcf5da";
    filename = "immortalwrt-imagebuilder-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zS0PB3agzii3dXOmWu2Kjh7PmQ/8vUcM6gEMdcv5Nic=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "4c020a69ea8570d3fab8aa132685240b";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-4c020a69ea8570d3fab8aa132685240b";
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
      zyxel_gs1920-24hp-v2 = {
        device_packages = [ "kmod-hwmon-lm85" ];
      };
    };
  };
  kmods."6.12.74-1-4c020a69ea8570d3fab8aa132685240b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/kmods/6.12.74-1-4c020a69ea8570d3fab8aa132685240b/";
    sourceInfo = {
      hash = "sha256-TcaXOiZfnLZKwioQFf5b+xvRbLHYzyYTRWeAFOiYGsY=";
      name = "kmods-realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl839x/kmods/6.12.74-1-4c020a69ea8570d3fab8aa132685240b/packages.adb";
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
      hash = "sha256-Yk1pYD6lukettSqqPeaPzHEpA6i3x/2RaLM94KGgQqI=";
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
