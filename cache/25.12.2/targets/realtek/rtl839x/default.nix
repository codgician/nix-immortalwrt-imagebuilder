# 25.12.2 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-Sg9dXiT1IM9Wv/hfu+cJgO//Hzs+5QbcLlsD+a9meo4=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "cd1077b82443c651c866c1ffb08d1a6800a06686fc576a9422a96f4118d96fc4";
    filename = "immortalwrt-imagebuilder-25.12.2-realtek-rtl839x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rrDz/4X8Ql7EZUcqhQJQStGVwoFQNg9XI/AxirEwa5c=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "5e0098bc0b41d485d029fdfc53107fd2";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-5e0098bc0b41d485d029fdfc53107fd2";
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
  kmods."6.12.103-1-5e0098bc0b41d485d029fdfc53107fd2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl839x/kmods/6.12.103-1-5e0098bc0b41d485d029fdfc53107fd2/";
    sourceInfo = {
      hash = "sha256-0V//mHT3KSyho9rv+L44OO8Bfev7iZP4DjJq7WH7asc=";
      name = "kmods-realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl839x/kmods/6.12.103-1-5e0098bc0b41d485d029fdfc53107fd2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-iROCQ3qk8ZgR5mw3mIZ5kzkRjRJIhT6Qi+9dpgsbUaE=";
      name = "realtek_rtl839x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl839x/packages/packages.adb";
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
