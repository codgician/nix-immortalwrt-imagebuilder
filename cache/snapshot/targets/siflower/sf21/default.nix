# snapshot siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-Xeqhds0Pu/vub8EiarHPdoQEbZ+oZCoNQE35wOPWruw=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "53974ee85433fc06dfb256a8161bd57e62115bc2d0da63cbf11298064504daf7";
    filename = "immortalwrt-imagebuilder-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9obw+/+C51kfEdu/EUQbUuHsevPXqn37sbBlPO+jVW0=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "73f572f6e157330e55120f336d7feb9a";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-73f572f6e157330e55120f336d7feb9a";
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
  kmods."6.12.77-1-73f572f6e157330e55120f336d7feb9a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.12.77-1-73f572f6e157330e55120f336d7feb9a/";
    sourceInfo = {
      hash = "sha256-Yyt9muQkG/HgGk2ZxRvBvGnNE9MsurGQRXagsEzy3rY=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.12.77-1-73f572f6e157330e55120f336d7feb9a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/packages/";
    sourceInfo = {
      hash = "sha256-+FGsBquCUHjp6oH2HlnwzobHisPSxUJmNJH8WyLF5uA=";
      name = "siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/packages/packages.adb";
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
