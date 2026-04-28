# 24.10.6 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-zrVEpse20Ar0SU1ivFy1ZfwOrwVc34/0xUhaxRpEHIE=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "da8f6994fc5da0a9f4b8ef8bed2b5b0f7084be262377a3bcb61888b90693784d";
    filename = "immortalwrt-imagebuilder-24.10.6-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ap2nRSAB8d9jgVq3IhPGM/GSneQxNnKwjT7COw3NAkM=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "af63593009dc3cf552004511eb786c1b";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-af63593009dc3cf552004511eb786c1b";
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
  kmods."6.6.133-1-af63593009dc3cf552004511eb786c1b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/zynq/generic/kmods/6.6.133-1-af63593009dc3cf552004511eb786c1b/";
    sourceInfo = {
      hash = "sha256-z8FAm2ohkke06geOj/2EpYbYQgPZC3VSCDUxadh7LRY=";
      name = "kmods-zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/zynq/generic/kmods/6.6.133-1-af63593009dc3cf552004511eb786c1b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-pkdD0VgWqYFYeiYGZOeqbMdWr0u85YN+Kp4ZLHP7OeM=";
      name = "zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/zynq/generic/packages/Packages";
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
