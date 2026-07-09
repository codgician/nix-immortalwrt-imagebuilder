# 25.12.1 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-KoZqGMdd0yJLSnZuZK43PEkuOWo5zCDKgf+h06XDcbc=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "c26c0087b82bca7a28b68cec15955e4029b494262d8759fdb258fbdca587d237";
    filename = "immortalwrt-imagebuilder-25.12.1-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nxn3XUbVtHUfhE09fzmd/vwyH/bc5IC4E9ii/iE0/m4=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "819f0c41dcd9c27aca765117da086910";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-819f0c41dcd9c27aca765117da086910";
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
  kmods."6.12.94-1-819f0c41dcd9c27aca765117da086910" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/zynq/generic/kmods/6.12.94-1-819f0c41dcd9c27aca765117da086910/";
    sourceInfo = {
      hash = "sha256-JR+FXCBRfYRiAGyNdP4IVrXuPwpnHRuiAKWpb4mc02w=";
      name = "kmods-zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/zynq/generic/kmods/6.12.94-1-819f0c41dcd9c27aca765117da086910/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-ErNLpYJejDVafbE5mY6kfUxbdkznF5hLDBNmgTZrnIw=";
      name = "zynq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/zynq/generic/packages/packages.adb";
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
