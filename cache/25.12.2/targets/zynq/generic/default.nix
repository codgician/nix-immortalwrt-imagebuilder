# 25.12.2 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-VCD8i1EmD9Zdywa3XrjSwx1CSm4/LgmSN3l1ws1Zjlw=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "77c8d9d25dc502a830d2fca0043fe8726f3434a8828c169e5f764de5d63d53dd";
    filename = "immortalwrt-imagebuilder-25.12.2-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WmMKLrTo8ItVnDeyU/KzOE36dv1v8GK9yrnFsUBKPs4=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "819f0c41dcd9c27aca765117da086910";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "kmod-usb-storage"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.103-1-819f0c41dcd9c27aca765117da086910";
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
  kmods."6.12.103-1-819f0c41dcd9c27aca765117da086910" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/zynq/generic/kmods/6.12.103-1-819f0c41dcd9c27aca765117da086910/";
    sourceInfo = {
      hash = "sha256-uRLja/uSY0eWDWgkBc9/XOHfYPRz7ly/xY5Mt42V7Po=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/zynq/generic/kmods/6.12.103-1-819f0c41dcd9c27aca765117da086910/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-noMSm3U+i0717X0uK9L2QkX3FIiwEQMtiQP5cFvPMvc=";
      name = "zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/zynq/generic/packages/packages.adb";
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
