# 24.10.6 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-7HYew1cpOGoNGgPSWZ6/BMGbUmUlw+VqS/HbxzSKBGs=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "165740569b2db060983e5529d02b1279fed570120fd511ca6ab521d2767c41a7";
    filename = "immortalwrt-imagebuilder-24.10.6-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ShinNmADw9SDbjnTneP69rhwmY9uwnA91J5TE++99AQ=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "dcb0eec03b98148be405fa61a5043552";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-dcb0eec03b98148be405fa61a5043552";
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
  kmods."6.6.133-1-dcb0eec03b98148be405fa61a5043552" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/qoriq/generic/kmods/6.6.133-1-dcb0eec03b98148be405fa61a5043552/";
    sourceInfo = {
      hash = "sha256-J8ggZD1VL1jlixigpRSBGNaWf7BV8IF4C/puJO+7q1A=";
      name = "kmods-qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/qoriq/generic/kmods/6.6.133-1-dcb0eec03b98148be405fa61a5043552/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-3EzBlo7ZZtr4o1gvPevI+wfk7xZCwxPlajLDTi85AUU=";
      name = "qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/qoriq/generic/packages/Packages";
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
