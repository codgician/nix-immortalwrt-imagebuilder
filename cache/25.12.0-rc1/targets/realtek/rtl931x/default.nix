# 25.12.0-rc1 realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-JzpmbvzZfuDPLp9FM3JzKSNLMQ6Zl7xEVZAytzS+BHc=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "3934edcf26608c99aa4ca26e4ca955ca0d4f014aa7f452c30acde72a894a56f2";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AhDxTJzNZj6tnlCOO4VEA1n7rSbazQyBEd0btODYv9A=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "2153e105229ba2739d68fa8f2cc6076d";
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
    kmods_target = "6.12.74-1-2153e105229ba2739d68fa8f2cc6076d";
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
  kmods."6.12.74-1-2153e105229ba2739d68fa8f2cc6076d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x/kmods/6.12.74-1-2153e105229ba2739d68fa8f2cc6076d/";
    sourceInfo = {
      hash = "sha256-OJSU6YP+A3cUZU73k1qxa77Srj3Qdk2zzjyDLdRQ57I=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x/kmods/6.12.74-1-2153e105229ba2739d68fa8f2cc6076d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x/packages/";
    sourceInfo = {
      hash = "sha256-7Y3bYTIp/E08kIF5ggO38ZcIeD7+DKoK/tEHDIrMORk=";
      name = "realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x/packages/packages.adb";
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
