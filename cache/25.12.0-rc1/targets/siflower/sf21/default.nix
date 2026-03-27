# 25.12.0-rc1 siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-G8SaIHzLCAupMWieP9U14bX2y5mfyNQ6DqiZh3DQwaE=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "f18ee8b33c2f6a897998ea2c30101b656c66e8e00b8f7135b9458e60b92ce955";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VpRAkAGGzqkZLYxkazGN3jmnwVd4BOmPGADSEPwSG/Q=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "34d2954ef8ca4994fd94712d83d336d0";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-34d2954ef8ca4994fd94712d83d336d0";
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
  kmods."6.12.74-1-34d2954ef8ca4994fd94712d83d336d0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/siflower/sf21/kmods/6.12.74-1-34d2954ef8ca4994fd94712d83d336d0/";
    sourceInfo = {
      hash = "sha256-UcXl+z5VgtOOo5GdJgPzkZVgZ/ouOqb75vW6t+t6rHo=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/siflower/sf21/kmods/6.12.74-1-34d2954ef8ca4994fd94712d83d336d0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/siflower/sf21/packages/";
    sourceInfo = {
      hash = "sha256-bl+BMufSl0r184Ml+duZJMJlPCn+wqx/ACVc0CkzgAU=";
      name = "siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/siflower/sf21/packages/packages.adb";
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
