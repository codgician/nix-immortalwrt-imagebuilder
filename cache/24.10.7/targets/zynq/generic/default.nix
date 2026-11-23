# 24.10.7 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-mQweZcGQ/LKdZBJwG7fFOlvuj7zipKK+XYcWSV/U/fM=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "fca9db90725e93d9f47754cb3d26521be74bf5761933cb2a618287ddc15303a2";
    filename = "immortalwrt-imagebuilder-24.10.7-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SOrfLCXU00/vdhS8fm3DLTsiSa6egl7vQZ+oXTOKliI=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "af63593009dc3cf552004511eb786c1b";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-af63593009dc3cf552004511eb786c1b";
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
  kmods."6.6.159-1-af63593009dc3cf552004511eb786c1b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/zynq/generic/kmods/6.6.159-1-af63593009dc3cf552004511eb786c1b/";
    sourceInfo = {
      hash = "sha256-X+cIsPMrnwA+s3MaeD73Ae/2VKkQf+h6TJyekXk0488=";
      name = "kmods-zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/zynq/generic/kmods/6.6.159-1-af63593009dc3cf552004511eb786c1b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-G5pjdGquvhJzo0QQYDeBvlUHQS8g2kOcSPnDbXxaX2I=";
      name = "zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/zynq/generic/packages/Packages";
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
