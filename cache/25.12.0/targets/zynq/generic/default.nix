# 25.12.0 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-PSbHc2UuGJCN9hjEC1wbAUS4yYEGYP6xAtjVPNEoLls=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "23818b8c411506b1e4eaf3c7b95c85b8050ba2face8cb9698a4ac4582c9c0027";
    filename = "immortalwrt-imagebuilder-25.12.0-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2V2SzMYApdtl9dCRZ6AubaeVSgWSOflaNc6MsN+hlDs=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "5280559dfb35c2b661407e4fa70bd095";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-5280559dfb35c2b661407e4fa70bd095";
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
  kmods."6.12.87-1-5280559dfb35c2b661407e4fa70bd095" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/zynq/generic/kmods/6.12.87-1-5280559dfb35c2b661407e4fa70bd095/";
    sourceInfo = {
      hash = "sha256-uOZOdbDVHdhf4OdRj8liuVmZNEByoBtsmutKF5xIRy0=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/zynq/generic/kmods/6.12.87-1-5280559dfb35c2b661407e4fa70bd095/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-4kmYrnvdacTYOMwpz5oWGBebh/oyB9q5sjhMMvThrCk=";
      name = "zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/zynq/generic/packages/packages.adb";
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
