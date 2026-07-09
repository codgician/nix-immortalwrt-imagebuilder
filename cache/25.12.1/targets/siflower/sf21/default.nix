# 25.12.1 siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-iNwzJdAduRxFsBfEekbYhKltQgDyMu2HDnrA3n5NPNw=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "d9b8aa37bbae8c53e0a6f9bd8508476736238ac5fd76d8232ba707a0e398b756";
    filename = "immortalwrt-imagebuilder-25.12.1-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jtu7jMlZPpl404V+ixt99TNOvOekDYmkKp5+C+tDPVw=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "827f68999068bb3702faed074dda96fc";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-827f68999068bb3702faed074dda96fc";
    profiles = {
      bananapi_bpi-rv2-nand = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-phy-sf21-usb"
          "kmod-phy-airoha-en8811h"
          "kmod-rtc-pcf8563"
          "kmod-i2c-designware-platform"
        ];
      };
      bananapi_bpi-rv2-nor = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-phy-sf21-usb"
          "kmod-phy-airoha-en8811h"
          "kmod-rtc-pcf8563"
          "kmod-i2c-designware-platform"
        ];
      };
    };
  };
  kmods."6.12.94-1-827f68999068bb3702faed074dda96fc" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/siflower/sf21/kmods/6.12.94-1-827f68999068bb3702faed074dda96fc/";
    sourceInfo = {
      hash = "sha256-+BUNPsjUxG+u0Btt9cwEzlTJorm5G/LvpRV6DOxwtSQ=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/siflower/sf21/kmods/6.12.94-1-827f68999068bb3702faed074dda96fc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/siflower/sf21/packages/";
    sourceInfo = {
      hash = "sha256-cHOHh2UhYK4lBjl2BMjrw62v0e+5uR43DA8PF59/qB0=";
      name = "siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/siflower/sf21/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_generic";
  feeds = import ./../../../packages/riscv64_generic.nix;
}
