# 24.10.1 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-vE6VQmW3Qcf+Smm14pcfkKIqUIM/NP0au4W4TDGLZTI=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d8698f29af7332df2123aa4ff324ec1bac94b228ec6df1fd476ac38573af2af1";
    filename = "immortalwrt-imagebuilder-24.10.1-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-P5v5NZKhP9wkIC/mZxR+cK0csSoRoprImD8ADlHsVsE=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "a3a0210d72410802edb0578926a8da24";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-a3a0210d72410802edb0578926a8da24";
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
  kmods."6.6.86-1-a3a0210d72410802edb0578926a8da24" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/zynq/generic/kmods/6.6.86-1-a3a0210d72410802edb0578926a8da24/";
    sourceInfo = {
      hash = "sha256-LBh3QOzxeLCB/D2NCzWlQ8EWKhhVPZlhg1FXBuM0Pwo=";
      name = "kmods-zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/zynq/generic/kmods/6.6.86-1-a3a0210d72410802edb0578926a8da24/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-pGc+9qT04BHLYaQh1+6Xf8WQw6uhlaNygiR28ujoH/0=";
      name = "zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/zynq/generic/packages/Packages";
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
