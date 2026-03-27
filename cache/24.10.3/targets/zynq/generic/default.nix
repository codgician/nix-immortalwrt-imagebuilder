# 24.10.3 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-fSowM/8Ha/4zChJ8VaJsD5vclZGMm/Ibzrrra2aJdWg=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "430ab8e0c8fd7167aee35a962015f76cd59d5bd702ab1da9507c0e5627d87438";
    filename = "immortalwrt-imagebuilder-24.10.3-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-1Pwd+Ihf454d5Ayb65w5fjbJBKF2zd8Y9IFIC0AGWUE=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "1d4146f03bf89ff817d590acdaa085fe";
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
      "kmod-fs-msdos"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-storage"
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
    kmods_target = "6.6.104-1-1d4146f03bf89ff817d590acdaa085fe";
    profiles = {
      avnet_zynq-zed = {
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
  kmods."6.6.104-1-1d4146f03bf89ff817d590acdaa085fe" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/zynq/generic/kmods/6.6.104-1-1d4146f03bf89ff817d590acdaa085fe/";
    sourceInfo = {
      hash = "sha256-vH5K+jl+eOG62qofyN7OaIDGKrWIwMKqR5CehF8fsqg=";
      name = "kmods-zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/zynq/generic/kmods/6.6.104-1-1d4146f03bf89ff817d590acdaa085fe/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-rNaq1wTwOKuleqPfJlDbuNI7r0F3tw9AEkZpUysbb7U=";
      name = "zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/zynq/generic/packages/Packages";
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
