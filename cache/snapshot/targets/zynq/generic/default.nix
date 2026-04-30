# snapshot zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-FpI8p/fYAPF4mfNFfglFitleQlNcdNyvJSOHWaykuPg=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "f5fa16b18624a072fd441adf5fefa5a59909d15982d74d34b3bdd12a82b5f61d";
    filename = "immortalwrt-imagebuilder-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+sSfPy8BqioqByJ5dEIilcI3kkLAtcwJrWmzJiCUn1c=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "43e25e25ddde37148de1dccd28481aaa";
      version = "6.12.80";
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
    kmods_target = "6.12.80-1-43e25e25ddde37148de1dccd28481aaa";
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
  kmods."6.12.80-1-43e25e25ddde37148de1dccd28481aaa" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.12.80-1-43e25e25ddde37148de1dccd28481aaa/";
    sourceInfo = {
      hash = "sha256-kQPllWxFNMc6N8zaE+MfC+Lf7adeKsVaW1HHhzl4hTc=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/zynq/generic/kmods/6.12.80-1-43e25e25ddde37148de1dccd28481aaa/packages.adb";
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
      hash = "sha256-1aY2x4qGSlLuG+Lp64BPwXoyIFnWtPx9AlO4D/0unyY=";
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
