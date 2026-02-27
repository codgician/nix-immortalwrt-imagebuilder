# snapshot siflower/sf21
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-23/IOuiY0QKbQeBnWLtoCj/Ad71KB9slUoRtBvCDp5M=";
    name = "siflower_sf21-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "0fa03cde354f89517170cbde758cb1149c7e11e91cfbddcb82beb2871094beb8";
    filename = "immortalwrt-imagebuilder-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-05oEgwihfNPBaBrjIbUvHObbEoIwIgdnC2yOa2eFpzM=";
    name = "siflower_sf21-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "8e1af4c3a6e1c3d318c0f656c01dfb60";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.67-1-8e1af4c3a6e1c3d318c0f656c01dfb60";
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
  kmods."6.12.67-1-8e1af4c3a6e1c3d318c0f656c01dfb60" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/siflower/sf21/kmods/6.12.67-1-8e1af4c3a6e1c3d318c0f656c01dfb60/";
    sourceInfo = {
      hash = "sha256-GdpB1L9PZ3iA6kcsEh0009xW5awGaydSr0zpajfOlf0=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/siflower/sf21/kmods/6.12.67-1-8e1af4c3a6e1c3d318c0f656c01dfb60/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/siflower/sf21/packages/";
    sourceInfo = {
      hash = "sha256-B6YkAFqsnOk7eWykhIKsHiPG/P+aHJWBb1PByY/imks=";
      name = "siflower_sf21-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/siflower/sf21/packages/packages.adb";
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
