# 24.10.4 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-XbOZZS4lMG55AXvlOqnnpm3499gtNCdp04pB0EvyKFw=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "706371b16c47ba11b5c6fb42dba6731b572578d3c7356f15a548bf249db5d5fe";
    filename = "immortalwrt-imagebuilder-24.10.4-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jeAHTlAgrUhi96Gzi7KQrtPnLrB2NujMmA/JNlQEwt0=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "eccd6b134f3b0c83c9eb01cf6c0a3149";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-eccd6b134f3b0c83c9eb01cf6c0a3149";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.6.110-1-eccd6b134f3b0c83c9eb01cf6c0a3149" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl930x/kmods/6.6.110-1-eccd6b134f3b0c83c9eb01cf6c0a3149/";
    sourceInfo = {
      hash = "sha256-qDDwmD1xfWuKEUaKX4NfsG9zGPeI/7zpwSsXGwtswps=";
      name = "kmods-realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl930x/kmods/6.6.110-1-eccd6b134f3b0c83c9eb01cf6c0a3149/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-D1LdjGmDr4bVMY4mLwN0f90XMKMuIx+k8YFJZIz1eEc=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/realtek/rtl930x/packages/Packages";
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
