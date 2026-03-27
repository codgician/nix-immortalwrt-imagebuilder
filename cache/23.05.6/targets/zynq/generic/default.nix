# 23.05.6 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-C6jViPVC9j7frKbD9QSxSXIIbgYt2FP/QWRF9FNjCqA=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "73d49efa6cc68c9d6a5b439111cdd104091d712c630b192e7de3abd1883d2dc7";
    filename = "immortalwrt-imagebuilder-23.05.6-zynq-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-tC5rQeK1u+a8yKBrvfA5BrlMhfRinEqrF2nCllyO4jo=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "6312037e96e6b5a9af8c80f570baa87c";
      version = "5.15.189";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.189-1-6312037e96e6b5a9af8c80f570baa87c";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-AqhoUCGSqxLMw84V6ss4ZAS7jEI5q17mY6bLXNmbGrk=";
      name = "zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/zynq/generic/packages/Packages";
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
