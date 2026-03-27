# 24.10.0 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-g/Kg5l+I1FfFphy0FMYq5SmG612LCZpxBzbEoOAPsQE=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "24cb0456e319bda654d6c4106d3632ce5b9256ee7e7e7124c513814bf3cb2edd";
    filename = "immortalwrt-imagebuilder-24.10.0-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sQNDwnQkNJwFMOnP7JWAxDnRe1Mm8jHa3sx3dKwTiUo=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "81a4b6148397a5fafa58b0c955005a2a";
      version = "6.6.73";
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-81a4b6148397a5fafa58b0c955005a2a";
    profiles = {
      watchguard_firebox-m300 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-rs5c372a"
          "kmod-tpm-i2c-atmel"
        ];
      };
    };
  };
  kmods."6.6.73-1-81a4b6148397a5fafa58b0c955005a2a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/qoriq/generic/kmods/6.6.73-1-81a4b6148397a5fafa58b0c955005a2a/";
    sourceInfo = {
      hash = "sha256-x8EvBiLsvKeS9+yXx5A48zvGBjrp+yzLpShtA/6qVfw=";
      name = "kmods-qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/qoriq/generic/kmods/6.6.73-1-81a4b6148397a5fafa58b0c955005a2a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-7weuIuXG+3K66V1Yyktq48eZPG0RIXgv6GzIK+zsIbo=";
      name = "qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/qoriq/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc64_e5500";
  feeds = import ./../../../packages/powerpc64_e5500.nix;
}
