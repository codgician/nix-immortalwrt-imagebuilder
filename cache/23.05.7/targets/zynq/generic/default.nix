# 23.05.7 zynq/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-3pvUYIu0p0CGHV0nGfOlkx9pr7j9alyJQOqqPdgYkH0=";
    name = "zynq_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "5d5a9e13fc7d10f80d5dc5730105d1a70cc0abe8fbf4b466646271e18d1df7fb";
    filename = "immortalwrt-imagebuilder-23.05.7-zynq-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-RZW8i+OspqQM431gpiduIfxP+2KEB1WDTlMAcrDUSIg=";
    name = "zynq_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "6312037e96e6b5a9af8c80f570baa87c";
      version = "5.15.195";
    };
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
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.195-1-6312037e96e6b5a9af8c80f570baa87c";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-q8Vusr4Z6E/tC9Qj/a82oUivhlB4EVWaZbM5GB5jzlU=";
      name = "zynq_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/zynq/generic/packages/Packages";
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
