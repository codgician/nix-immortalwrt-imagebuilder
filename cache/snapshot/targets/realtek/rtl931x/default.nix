# snapshot realtek/rtl931x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-MKozAWEOqAQWBsM/YxFZwDyPZOrjYHhbUQEhBL/7b1o=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "7aacdff97a222c61b8df63c85a5e33139b32ac422499bca397f6c5ab84f10761";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-oP3eODTYbKFWFhzIdNL9il15olB9+J/7cVcbuxfh4f0=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "8ffbbb923a92f3949e37e6a18d4ba580";
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
    kmods_target = "6.12.67-1-8ffbbb923a92f3949e37e6a18d4ba580";
    profiles = {
      plasmacloud_esx28 = {
        device_packages = [ "kmod-hwmon-adt7475" ];
      };
      plasmacloud_psx28 = {
        device_packages = [
          "kmod-hwmon-adt7475"
          "poemgr"
        ];
      };
    };
  };
  kmods."6.12.67-1-8ffbbb923a92f3949e37e6a18d4ba580" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x/kmods/6.12.67-1-8ffbbb923a92f3949e37e6a18d4ba580/";
    sourceInfo = {
      hash = "sha256-xJE+EZN+m+myP3c7ufiyTJB0yDL5ft1/G1NqbSmrscc=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x/kmods/6.12.67-1-8ffbbb923a92f3949e37e6a18d4ba580/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x/packages/";
    sourceInfo = {
      hash = "sha256-Bi3QZenickZcETONfbePf3rwhx8Buy1CuOHXbAr0i+Y=";
      name = "realtek_rtl931x-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x/packages/packages.adb";
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
