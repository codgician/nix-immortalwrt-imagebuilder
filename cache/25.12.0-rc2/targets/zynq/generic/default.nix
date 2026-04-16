# 25.12.0-rc2 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-jM1h0w6eIDpGocAqISOwCgufmqP05JXpr+SHoBmZIJc=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "89a3de6c9477c99342eaf9b8458b4ff63567404966b5317cf8d2e5c46dad4789";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-BImDITvCw0PBt91xqJBDUl9+UDp3wTAHPJqIGzPlC3U=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "937a6da04d35ca7b70da86c660764e9d";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-937a6da04d35ca7b70da86c660764e9d";
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
  kmods."6.12.79-1-937a6da04d35ca7b70da86c660764e9d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/zynq/generic/kmods/6.12.79-1-937a6da04d35ca7b70da86c660764e9d/";
    sourceInfo = {
      hash = "sha256-uf3d0+Nxoq7YavsQADRlEA1iVqZKZAh/uW1FB9Xy3ho=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/zynq/generic/kmods/6.12.79-1-937a6da04d35ca7b70da86c660764e9d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-3Mr745tlDprwHZupVsdUBuBoTx3OCjdLkQPyzyDurEk=";
      name = "zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/zynq/generic/packages/packages.adb";
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
