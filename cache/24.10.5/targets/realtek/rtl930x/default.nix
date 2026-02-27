# 24.10.5 realtek/rtl930x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-IZX5y/ADX8+sO8m3vYo7WScciHuuAA7Mfp6gQGnYkMQ=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "8228bdc989629b3378c50370a5b37fcbb1cadde488d1cf29657750e5c90cf795";
    filename = "immortalwrt-imagebuilder-24.10.5-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UlKWQN+uya0aYCRacl8bvKZi2LeVL+2YS6JQp59R+Fk=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "642e30b67e820e0a31964f419920f81e";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-642e30b67e820e0a31964f419920f81e";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.6.122-1-642e30b67e820e0a31964f419920f81e" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl930x/kmods/6.6.122-1-642e30b67e820e0a31964f419920f81e/";
    sourceInfo = {
      hash = "sha256-+bP1jgObTuWKgPSXiPw37X32mluw192DYjjvyhztwLo=";
      name = "kmods-realtek_rtl930x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl930x/kmods/6.6.122-1-642e30b67e820e0a31964f419920f81e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-1dib3w+q9w6lFkx69pIbi7qYjSjrGDlGa263iEWO7Ok=";
      name = "realtek_rtl930x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/realtek/rtl930x/packages/Packages";
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
