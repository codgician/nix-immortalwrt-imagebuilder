# 23.05.2 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-OlBZQBqKfLSV8ZtrMxu2pqrF757zAHLoGUJ+PvyObzg=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7b6b6665993b648bd6199222d939f59f1d355f5a518c3b5a1c186417dff47712";
    filename = "immortalwrt-imagebuilder-23.05.2-zynq-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-0Ecy3GDO+qmZJqUm4hZLIT9L4UOdGdrQsqK57UEunN8=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/zynq/generic/profiles.json";
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
      "luci-lib-fs"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-8hEQVXzx81UbkRDPtNyLwsus3Ww69bsW/b5nBQisbII=";
      name = "zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/zynq/generic/packages/Packages";
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
