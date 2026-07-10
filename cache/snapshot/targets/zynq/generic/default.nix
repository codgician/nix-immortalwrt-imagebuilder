# snapshot zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-q8rSNRgrGBLwfTw4IO5f0RLmLpDkvGt6E5S3JRH9cGE=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8440bc9a4846bddd9d5477518a0383991ce2695278041cffe985c72be227ec91";
    filename = "immortalwrt-imagebuilder-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-yrrzph0/XXbuRl2Aj5LZaD50zLw8oONxQvaUkVwotqA=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "4af7daa6ffa2a576a2a354cde50a3545";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-fs-msdos"
      "kmod-nft-offload"
      "kmod-usb-storage"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
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
    kmods_target = "6.12.94-1-4af7daa6ffa2a576a2a354cde50a3545";
    profiles = {
      avnet_zynq-zed = {
        device_packages = [ ];
      };
      bitmain_zynq-antminer-s9 = {
        device_packages = [ ];
      };
      digilent_zynq-zybo = {
        device_packages = [ ];
      };
      digilent_zynq-zybo-z7 = {
        device_packages = [ ];
      };
      xlnx_zynq-zc702 = {
        device_packages = [
          "kmod-can"
          "kmod-can-xilinx-can"
        ];
      };
    };
  };
  kmods."6.12.94-1-4af7daa6ffa2a576a2a354cde50a3545" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.12.94-1-4af7daa6ffa2a576a2a354cde50a3545/";
    sourceInfo = {
      hash = "sha256-8vrg8ZOVsRkkh/99wxj6kSi2YHU4daiy4TcOcLejPi8=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.12.94-1-4af7daa6ffa2a576a2a354cde50a3545/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-St2D59yVIaBhiDVJBI8mnIYBeryi3FvY+WWYr+WFFsw=";
      name = "zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_neon";
  feeds = import ./../../../packages/arm_cortex-a9_neon.nix;
}
