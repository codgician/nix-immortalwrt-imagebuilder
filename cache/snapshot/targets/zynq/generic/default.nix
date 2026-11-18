# snapshot zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-6P8HDHvnbjC8CiEbieTocdHbb1Z0XJsMnZzhqiqc75k=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0d57cc5c1c472ce5c3c04a705274d5add43f812f2a671765e5de00bb226519b7";
    filename = "immortalwrt-imagebuilder-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZCnqLKn9BW3ZYhUmnU9XbaU1jPd2jCtpOsyKHxllztw=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "b44b1992eb17e69a85efce8dca20dbba";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-b44b1992eb17e69a85efce8dca20dbba";
    profiles = {
      avnet_zynq-zed = {
        device_packages = [ ];
      };
      bitmain_zynq-antminer-s9 = {
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
  kmods."6.18.60-1-b44b1992eb17e69a85efce8dca20dbba" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.18.60-1-b44b1992eb17e69a85efce8dca20dbba/";
    sourceInfo = {
      hash = "sha256-KSmmKkF9/RYFvEfGBArnTqXrRxUdAnH/J+p+MEfX4lU=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.18.60-1-b44b1992eb17e69a85efce8dca20dbba/packages.adb";
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
      hash = "sha256-2Lxtt8w91QL0/RnXT3QjbGMP+wX6LCJfhlE/RCuna8g=";
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
