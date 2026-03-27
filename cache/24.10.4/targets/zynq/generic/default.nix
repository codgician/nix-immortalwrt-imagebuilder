# 24.10.4 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-nav2lUXCaUXCjt3IZAeQ2F94QK2q7rm5quNaT7W/1hg=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8cf82bb820257fca86a15db9a1fc39a1cf09a4ed7aa2a1b7b3b148335a7b7ad1";
    filename = "immortalwrt-imagebuilder-24.10.4-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-p4XGgMg2Duuxmj8aUgdUaKMqv9UBxu0E9he+DJEjVeM=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "29fc3338ff576714db66d4294780bb16";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-29fc3338ff576714db66d4294780bb16";
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
  kmods."6.6.110-1-29fc3338ff576714db66d4294780bb16" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/zynq/generic/kmods/6.6.110-1-29fc3338ff576714db66d4294780bb16/";
    sourceInfo = {
      hash = "sha256-nNGeTxigNNgcUE7Nlf7mDsoRVjVKl3uS9AIKqULtNtg=";
      name = "kmods-zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/zynq/generic/kmods/6.6.110-1-29fc3338ff576714db66d4294780bb16/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-faslg0AMh59mPJsm/e39oEJj1jKp/hk8tujMqSEi9yM=";
      name = "zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/zynq/generic/packages/Packages";
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
