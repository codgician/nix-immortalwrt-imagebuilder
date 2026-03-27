# 23.05.4 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-hMXBwV5Qo2OyFpmbe6F7Ne+Ism6U1n8S8j5Uj8fBew8=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "91e8b212f294897b741aa87a8ec21e810608ea3e40b5c224137d37683767b860";
    filename = "immortalwrt-imagebuilder-23.05.4-zynq-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-o9i+3rU5zEQweg4rnYiYrnFnFM4a/+NVMdcCvMJoZME=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-fs-msdos"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-storage"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-cjPEsr7n264UK8O22Zekun9H3MlDJwFFGfGxW2XA938=";
      name = "zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/zynq/generic/packages/Packages";
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
