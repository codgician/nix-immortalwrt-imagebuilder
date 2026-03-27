# 24.10.4 tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-+Jv5eLOOJ3KU4mo6Vry/kMAiVnaX8qlsh+3I7F+Y0rw=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "eebbd8aeaaa80c0ac885dac71f9e1ab254ebe5d62b756b4c2e3dc24eaf43b095";
    filename = "immortalwrt-imagebuilder-24.10.4-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dF3UmospqjHYxFLC3J3WC5MHwrohYemM4qMUg4K5GEs=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "1695c8bae96e3c1383b2c776b6f12bb8";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-1695c8bae96e3c1383b2c776b6f12bb8";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.110-1-1695c8bae96e3c1383b2c776b6f12bb8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/tegra/generic/kmods/6.6.110-1-1695c8bae96e3c1383b2c776b6f12bb8/";
    sourceInfo = {
      hash = "sha256-ZWjutBhBXbqelo0PhmE03sVQQD05M/y8tZ9/wGgg2hM=";
      name = "kmods-tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/tegra/generic/kmods/6.6.110-1-1695c8bae96e3c1383b2c776b6f12bb8/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-OgpD5pIcz7Lvcu95gF7GY4eqh9/Moe1l0E9py4i+Co8=";
      name = "tegra_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/tegra/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}
