# 25.12.2 siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-9ccFVRTC81Ms2Nw5EXpRIqFeRhDatv8Q02ocLcW+S+Y=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "340eaf010b466645c7ba937f51b6ba1ee48f00115be479058adcef38ce507c89";
    filename = "immortalwrt-imagebuilder-25.12.2-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WMkWmO9fSMIoNOC3mdcSKizlbD4PaTjlQVGyTmzTd/g=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "827f68999068bb3702faed074dda96fc";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-827f68999068bb3702faed074dda96fc";
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
  kmods."6.12.103-1-827f68999068bb3702faed074dda96fc" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/siflower/sf21/kmods/6.12.103-1-827f68999068bb3702faed074dda96fc/";
    sourceInfo = {
      hash = "sha256-I+xRoBXl7piv2hzrVQAIvwFQBCAe2Rcb+HHb+kwgT94=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/siflower/sf21/kmods/6.12.103-1-827f68999068bb3702faed074dda96fc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/siflower/sf21/packages/";
    sourceInfo = {
      hash = "sha256-mGH+MIdwkW+Knyya1F4nk4x8ddo2zf6OB1MRTXdGOEs=";
      name = "siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/siflower/sf21/packages/packages.adb";
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
