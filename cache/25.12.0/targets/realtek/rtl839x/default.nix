# 25.12.0 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-z13hsVdE5VSli8jyJ3LfXykEs2LD8GeH535IF93f7Kc=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "a59683c8434f79fd9796a2d7ef543b0a085b4e68ded66b435e4b5d25b6a681ad";
    filename = "immortalwrt-imagebuilder-25.12.0-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-R4TuOpo0iKOGblUsDAGA+CqkJ6Lsc5kR0dxoKi2Yan4=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "e64793cc654de063701445a98f7e326f";
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
    kmods_target = "6.12.87-1-e64793cc654de063701445a98f7e326f";
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
  kmods."6.12.87-1-e64793cc654de063701445a98f7e326f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl839x/kmods/6.12.87-1-e64793cc654de063701445a98f7e326f/";
    sourceInfo = {
      hash = "sha256-OBdi+MCdj+iKKwxIAeS61td81aCGjwztHBcICKl7dR0=";
      name = "kmods-realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl839x/kmods/6.12.87-1-e64793cc654de063701445a98f7e326f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-AtBnR4HLPTWK2iWc4WzsHCtU76IYQF2ik74PvIAfsqE=";
      name = "realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl839x/packages/packages.adb";
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
