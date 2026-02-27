# 24.10.5 zynq/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-p3TfUMPl6uwg+55inzRrapGfTT6u5hHZGu++4MbCVk4=";
    name = "zynq_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "c898715f2516aad0ca670c0dad6bcc0b646cd8eaeb98ec41fdde0bafbfa6032b";
    filename = "immortalwrt-imagebuilder-24.10.5-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mT7GuuWCH5oju7GnwlliCWQWTjV6Dw4yFbD02fu6Egk=";
    name = "zynq_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "af63593009dc3cf552004511eb786c1b";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-af63593009dc3cf552004511eb786c1b";
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
  kmods."6.6.122-1-af63593009dc3cf552004511eb786c1b" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/zynq/generic/kmods/6.6.122-1-af63593009dc3cf552004511eb786c1b/";
    sourceInfo = {
      hash = "sha256-3SuYRL/NAPpOoIAMb/wkQ94NQgAtOCdPo+qmXEA3vqU=";
      name = "kmods-zynq_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/zynq/generic/kmods/6.6.122-1-af63593009dc3cf552004511eb786c1b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-sJDUZoGmg7gP/Nd2WhmYas0Hwx2qsHzi9CrbbO0b/vs=";
      name = "zynq_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/zynq/generic/packages/Packages";
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
