# 25.12.0-rc1 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-FEzsI6FueAn6Qe+jPoZZlgi9Xv9mLq8V9qPvBpCXIEg=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "8ae964230c39a7f20266bf85901778deb882533bc993e39d6f8ab89264b428e2";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/BqSikW8lcqr/rYMPfEFypSdYP589ZHLFGGZ4lca8k0=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "e073fd3cac8c594166036bd1d9b1aa7e";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-e073fd3cac8c594166036bd1d9b1aa7e";
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
  kmods."6.12.74-1-e073fd3cac8c594166036bd1d9b1aa7e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl839x/kmods/6.12.74-1-e073fd3cac8c594166036bd1d9b1aa7e/";
    sourceInfo = {
      hash = "sha256-sUlxAOwlK843DkPy0riVkRImD5iAmWX4EKBjjyekfGA=";
      name = "kmods-realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl839x/kmods/6.12.74-1-e073fd3cac8c594166036bd1d9b1aa7e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-bYbaDpzkeFQy0ODwSg0A1pgq+oMOFI/8hFNB3hWeh4M=";
      name = "realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl839x/packages/packages.adb";
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
