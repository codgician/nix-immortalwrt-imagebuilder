# 25.12.0-rc1 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-TFUo3ZU7OZW+Z2WzDyxSewkDTETBj2In/RRzSvXZhHE=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "000cc9f889c49a7826283307ecb3d7b7f515b517f1722091c3614d98e9a2e817";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-0rKoaP97mNB8HkdPlY6LzJSN/9kb64CQgL98MpbzgEs=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "f8ba503fc3d0185ac22500573c34d7ef";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-f8ba503fc3d0185ac22500573c34d7ef";
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
  kmods."6.12.74-1-f8ba503fc3d0185ac22500573c34d7ef" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/zynq/generic/kmods/6.12.74-1-f8ba503fc3d0185ac22500573c34d7ef/";
    sourceInfo = {
      hash = "sha256-BNQ0eSmweKy2JkT21y8Z29XdQDIoSll9h7gItI4Rao0=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/zynq/generic/kmods/6.12.74-1-f8ba503fc3d0185ac22500573c34d7ef/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-2wpFunNoqAoWoYdgl5d9bhxGilwynvZvWeGYCHCcarg=";
      name = "zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/zynq/generic/packages/packages.adb";
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
