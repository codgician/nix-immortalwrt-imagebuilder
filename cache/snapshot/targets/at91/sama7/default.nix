# snapshot at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-sIJLT9c/keOs0QNnhrJItvOyO+dcxf5jLaNIkE9Xsdo=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "08f0ae34a2d645473db5e0f86d1c65bc6edeb7e5d0db1b2058e7f89baf649b9e";
    filename = "immortalwrt-imagebuilder-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZdcubGywm+n2tZxIdVpNPWT0SQ2MBNGLFR5bOrbwZEo=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "5fd272f5a705c3f8182c44ae4d75b7f8";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.92-1-5fd272f5a705c3f8182c44ae4d75b7f8";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.92-1-5fd272f5a705c3f8182c44ae4d75b7f8" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.92-1-5fd272f5a705c3f8182c44ae4d75b7f8/";
    sourceInfo = {
      hash = "sha256-B//ovaYTxov01yLpRBBBPlaUimEiMM/8UMF47Q74GIY=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.92-1-5fd272f5a705c3f8182c44ae4d75b7f8/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-dfUPfruKfBMq097xIYeKqdV+Rmp9ufH/zKscDApegwA=";
      name = "at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_vfpv4.nix;
}
