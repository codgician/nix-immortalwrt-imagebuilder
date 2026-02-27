# 21.02.7 zynq/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-pOhL90Y2tQgZjl7nKYOF2D3IE33hCZK671G6/n7zDLE=";
    name = "zynq_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/zynq/generic/sha256sums";
  };
  imagebuilder = null;
  profiles.sourceInfo = {
    hash = "sha256-zP5RJyhB6+XwywCJ50GQOFvouQZFOrdA1aOgfpHSpHY=";
    name = "zynq_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/zynq/generic/profiles.json";
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
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-fs-msdos"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb-storage"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-Pkxv3FF6Z/glOZ7NoIUpuE3xedFv2IZdriJzGxrbgeU=";
      name = "zynq_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/zynq/generic/packages/Packages";
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
