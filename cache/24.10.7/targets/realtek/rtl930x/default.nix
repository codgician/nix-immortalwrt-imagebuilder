# 24.10.7 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-i24xxMhLVxVlI1NIdfapYhY9Nb2xs+q5+LUnGENOcjo=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "554a12bf1b488ea72fa0566a186cd63d64d87246415136de518140c85e82a31a";
    filename = "immortalwrt-imagebuilder-24.10.7-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RONLRra5bEhlL9vuMUOGqUV4mDrt3SMwzxzwd7wOGrc=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "642e30b67e820e0a31964f419920f81e";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-642e30b67e820e0a31964f419920f81e";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.6.159-1-642e30b67e820e0a31964f419920f81e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/realtek/rtl930x/kmods/6.6.159-1-642e30b67e820e0a31964f419920f81e/";
    sourceInfo = {
      hash = "sha256-cAg0QZKxl9ZqGur8O2kdnlLlmcITOsEAiYNftlLyNtU=";
      name = "kmods-realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/realtek/rtl930x/kmods/6.6.159-1-642e30b67e820e0a31964f419920f81e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-YMLbzTMGaTqTy5dpAm53sRkkiEoWCMAe3bIA1kolFrA=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/realtek/rtl930x/packages/Packages";
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
