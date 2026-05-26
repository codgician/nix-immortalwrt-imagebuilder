# 25.12.0 siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-sgm0gR4RdSxTvS7F4FiMQq5Gkwv8tv8rSu/jmooDbgI=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "a07234f80da2ea196974992970dad251ed296d9bbbd11e9bdc2ce5cc96b2d620";
    filename = "immortalwrt-imagebuilder-25.12.0-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Fpiy2JsE08bWnEhDo5TdLwxYK07AT8ArmauG6j0UU1U=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "7a287d373e3bab6a7c9d2d149fc91e29";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-7a287d373e3bab6a7c9d2d149fc91e29";
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
  kmods."6.12.87-1-7a287d373e3bab6a7c9d2d149fc91e29" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/siflower/sf21/kmods/6.12.87-1-7a287d373e3bab6a7c9d2d149fc91e29/";
    sourceInfo = {
      hash = "sha256-18UTY9AjZDpWs3Scmmf6EfABRLQ9RKoCXfDnXNnzHI0=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/siflower/sf21/kmods/6.12.87-1-7a287d373e3bab6a7c9d2d149fc91e29/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/siflower/sf21/packages/";
    sourceInfo = {
      hash = "sha256-38wvHxu5m1iMyvSsjTF2Hg2F+KSMnTOdX0oEU9tjRMY=";
      name = "siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/siflower/sf21/packages/packages.adb";
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
