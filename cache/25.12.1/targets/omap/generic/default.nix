# 25.12.1 omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-PssR5MyDvkRKPaFG+DeH9g5VI+1awBhLS8IGljE5b80=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0271cc5eb8c345a6369d9e8a0e14ca24b3a04ee799e7c7547b7da0f51e8b2968";
    filename = "immortalwrt-imagebuilder-25.12.1-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ymGEQ6foKciZ7iZ8EDo7Sn/P1iYEfFu1sAGxKbaXywg=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "f57da677721aa77e7b3878c1c47e9000";
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
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-f57da677721aa77e7b3878c1c47e9000";
    profiles = {
      ti_am335x-bone-black = {
        device_packages = [ ];
      };
      ti_am335x-evm = {
        device_packages = [ ];
      };
      ti_omap3-beagle = {
        device_packages = [
          "kmod-usb-net-asix"
          "kmod-usb-net-asix-ax88179"
          "kmod-usb-net-hso"
          "kmod-usb-net-kaweth"
          "kmod-usb-net-pegasus"
          "kmod-usb-net-mcs7830"
          "kmod-usb-net-smsc95xx"
          "kmod-usb-net-dm9601-ether"
        ];
      };
      ti_omap4-panda = {
        device_packages = [ "kmod-usb-net-smsc95xx" ];
      };
    };
  };
  kmods."6.12.94-1-f57da677721aa77e7b3878c1c47e9000" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/omap/generic/kmods/6.12.94-1-f57da677721aa77e7b3878c1c47e9000/";
    sourceInfo = {
      hash = "sha256-3iAkEvkFNB/YDRPxMpCQr5XvZ5Q3mGxnRDXDiS+XTHI=";
      name = "kmods-omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/omap/generic/kmods/6.12.94-1-f57da677721aa77e7b3878c1c47e9000/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-2sV9dkd2JuMvAxxXttvQDbTo9kM1FfA0QoFcUALWjyY=";
      name = "omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/omap/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a8_vfpv3";
  feeds = import ./../../../packages/arm_cortex-a8_vfpv3.nix;
}
