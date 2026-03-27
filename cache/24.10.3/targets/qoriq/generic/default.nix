# 24.10.3 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-2R/EQpTXW38ylddlmEf8SXtDYesUcoBptt6DGi5ZUM0=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "eb22f66e95006895a93c19b09b97efc3454b8b03164d06134583eb0588caafa9";
    filename = "immortalwrt-imagebuilder-24.10.3-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MS5M8HMwM/wBPveAZlgFglY+SR9viuo4iUuLf9MEzMk=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "805f00d04968e1d9640a3dc9485b0cef";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-805f00d04968e1d9640a3dc9485b0cef";
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
  kmods."6.6.104-1-805f00d04968e1d9640a3dc9485b0cef" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/qoriq/generic/kmods/6.6.104-1-805f00d04968e1d9640a3dc9485b0cef/";
    sourceInfo = {
      hash = "sha256-hcycCzZuTDYLdSjX6sDU4HJFY0Ta8TiEUew704H5vwE=";
      name = "kmods-qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/qoriq/generic/kmods/6.6.104-1-805f00d04968e1d9640a3dc9485b0cef/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-/HtXcCyv8Hz4yunublBDGp4DG+LK9VmYjeHbAbXUNoU=";
      name = "qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/qoriq/generic/packages/Packages";
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
