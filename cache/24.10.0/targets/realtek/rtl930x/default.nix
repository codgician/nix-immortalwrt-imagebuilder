# 24.10.0 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-MRyKOfB4dr7TfsoAC6fLoK7vH45b/EacE1HCl7E43ZQ=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "db51191f374e5f21b7c0633cab3fdc759757e3add64c2d3a6a91628d2a08560b";
    filename = "immortalwrt-imagebuilder-24.10.0-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-TkRCZHcPDtenQtfIAIaR9xrbaK04Z6M1oyyMjXDr0Bc=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "2d50986af5654b81ea25e3d24a6e9716";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-2d50986af5654b81ea25e3d24a6e9716";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.6.73-1-2d50986af5654b81ea25e3d24a6e9716" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl930x/kmods/6.6.73-1-2d50986af5654b81ea25e3d24a6e9716/";
    sourceInfo = {
      hash = "sha256-Oc3LmXZ8p8H+btmi5eyGUElFuQ2dTmJzS+B/P3DutVo=";
      name = "kmods-realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl930x/kmods/6.6.73-1-2d50986af5654b81ea25e3d24a6e9716/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-OrBt5AC027HaelG+tbu6k1Rv/9UuuQlaoJeQ+VrHKJE=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/realtek/rtl930x/packages/Packages";
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
