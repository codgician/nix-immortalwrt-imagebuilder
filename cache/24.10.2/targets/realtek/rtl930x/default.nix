# 24.10.2 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-/NaaPlrg5oWQ97eigJIcohyBeNIWvtkEh1PcGZGt/es=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "e4ffe0f3b9a603d717f07a6bd9c005a8accb728412d5e885e9492e23b277bba5";
    filename = "immortalwrt-imagebuilder-24.10.2-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZvO/LYkeYH95cbP9oN7OmNpnpmKzJLEWP6lsWJNSmXg=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "7f02f7c60b19747b6ab7a1e2cd17f845";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-7f02f7c60b19747b6ab7a1e2cd17f845";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.6.93-1-7f02f7c60b19747b6ab7a1e2cd17f845" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl930x/kmods/6.6.93-1-7f02f7c60b19747b6ab7a1e2cd17f845/";
    sourceInfo = {
      hash = "sha256-BVH27Fk3zQh3R+A82Ito9+vHFAmjb/nt4qWnG1w/F/I=";
      name = "kmods-realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl930x/kmods/6.6.93-1-7f02f7c60b19747b6ab7a1e2cd17f845/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-wVaJUUW4vdaQJdRJP74saAGKgv+yoz39aB407yIPg1k=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/realtek/rtl930x/packages/Packages";
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
