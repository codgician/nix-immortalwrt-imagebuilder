# snapshot zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-8yiTK7K/IlFFkZiC4JU2JQ4haD9dHQBhhQnkfcfHsWE=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3655523123b034545c1b0b3383895adbeed36be7a42699dc05b1897ddce443cb";
    filename = "immortalwrt-imagebuilder-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OlGY7dhl/C24H3jnFH7JgPwslVr7aCSUGoPQgWMF3N8=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "01d3562f61e483298574c76acac49410";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-01d3562f61e483298574c76acac49410";
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
  kmods."6.12.94-1-01d3562f61e483298574c76acac49410" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.12.94-1-01d3562f61e483298574c76acac49410/";
    sourceInfo = {
      hash = "sha256-PDg2Z2cvvlKB+KNglBcqa2RDxmPwIEL2V7AoWMTKkdI=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.12.94-1-01d3562f61e483298574c76acac49410/packages.adb";
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
      hash = "sha256-UOMlZU/c572FLTus+CxxEZrLLOmOj9II8dMClgHnQOQ=";
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
