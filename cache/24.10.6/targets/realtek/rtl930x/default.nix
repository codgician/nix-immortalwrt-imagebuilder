# 24.10.6 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-uEWCeAXtU6OaaiDoj2Pc8VkmLiFeOsASlQI4Ht5a+80=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "6d554a5db60d60e8bd21fb71dcdcedc8c9b5d483a0c2b45a7e68a0669168a180";
    filename = "immortalwrt-imagebuilder-24.10.6-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-r7paX+XzgNcYMAGBduPqMnt6U4xvv38bEVGLIfyYC+w=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "642e30b67e820e0a31964f419920f81e";
      version = "6.6.133";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "odhcp6c"
      "opkg"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.133-1-642e30b67e820e0a31964f419920f81e";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.6.133-1-642e30b67e820e0a31964f419920f81e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl930x/kmods/6.6.133-1-642e30b67e820e0a31964f419920f81e/";
    sourceInfo = {
      hash = "sha256-0XprK4m1h7lm7Lx3SZrl0f07Y9k0oaU5J5jYy1y9xK4=";
      name = "kmods-realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl930x/kmods/6.6.133-1-642e30b67e820e0a31964f419920f81e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-cnJyjq8Ok5CleS1/W1ug+CDyXGHvEwJJ9MKX/XLkrdQ=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/realtek/rtl930x/packages/Packages";
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
