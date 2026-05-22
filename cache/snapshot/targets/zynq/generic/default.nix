# snapshot zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-Pej3XchZt2jlVdh44ziswJNdJUQ5JUQ/61N5yBZpzVU=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "b4e2eb03d18dac15e5879cfb11735da4dc8d2603ac88a7e34eb7000c81dcc2fe";
    filename = "immortalwrt-imagebuilder-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-yljXwCsYyqfPBSTexfSf9QF16oXyFGa5MCYKubBZxIw=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "d302b5740cea9e0bb424c12455293485";
      version = "6.12.89";
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
    kmods_target = "6.12.89-1-d302b5740cea9e0bb424c12455293485";
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
  kmods."6.12.89-1-d302b5740cea9e0bb424c12455293485" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.12.89-1-d302b5740cea9e0bb424c12455293485/";
    sourceInfo = {
      hash = "sha256-1WXtcAK8g4Qk8j1HUTdQ4IF5byrtANPQ8uSWr/Yfbhc=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.12.89-1-d302b5740cea9e0bb424c12455293485/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-Ey0shzHIZId5VIxoa46XIO0Iq1gbhaXbEoxcD8XF14A=";
      name = "zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/packages/packages.adb";
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
