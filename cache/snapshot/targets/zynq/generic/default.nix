# snapshot zynq/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-NXWwmkLrCgdquZ6+rX9Yv+Kg52N1XFsBSOqY8jR3fug=";
    name = "zynq_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "47c7a78b89eab8623cea56459fcf875a781e5f5a5ec37d6d58859f16fbaf52fb";
    filename = "immortalwrt-imagebuilder-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-LKPTPyDAe5I/PWupJksWtcNWNoEzpnvg7ciE9NpCC50=";
    name = "zynq_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "6d3bbaae097baf859fa95479eb003051";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-6d3bbaae097baf859fa95479eb003051";
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
  kmods."6.12.67-1-6d3bbaae097baf859fa95479eb003051" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/zynq/generic/kmods/6.12.67-1-6d3bbaae097baf859fa95479eb003051/";
    sourceInfo = {
      hash = "sha256-0NcyZDxuIUjd5fODTf/DH3keBpCQWqzFKJLcNW2y1fQ=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/zynq/generic/kmods/6.12.67-1-6d3bbaae097baf859fa95479eb003051/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-LItFXRaCfHZADOZ+/6yesgHofD88oOW1jK4zAWE3VwI=";
      name = "zynq_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/zynq/generic/packages/packages.adb";
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
