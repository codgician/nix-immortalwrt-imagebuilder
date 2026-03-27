# 24.10.0 zynq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/zynq/generic/";
  sha256sums = {
    hash = "sha256-/bVV5suyV807p+NmpQg/lXBszc1Mrz6KJvpTK76wMqw=";
    name = "zynq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/zynq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "61174277ca0d9d5bde0138c1404b3a5e5e7fa1ece8124819efb649607bf3685a";
    filename = "immortalwrt-imagebuilder-24.10.0-zynq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-DJ2FGtRo9eb5iuSjbSxuP2H9KfqHivMAUalK8DMhEYE=";
    name = "zynq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/zynq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "71f20bcd94f6999014a90ed7e3fe5a77";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-71f20bcd94f6999014a90ed7e3fe5a77";
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
  kmods."6.6.73-1-71f20bcd94f6999014a90ed7e3fe5a77" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/zynq/generic/kmods/6.6.73-1-71f20bcd94f6999014a90ed7e3fe5a77/";
    sourceInfo = {
      hash = "sha256-GonDJMSpWt2mFbTa/7A+LtwWi8urQdAyv32ZPmSogec=";
      name = "kmods-zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/zynq/generic/kmods/6.6.73-1-71f20bcd94f6999014a90ed7e3fe5a77/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/zynq/generic/packages/";
    sourceInfo = {
      hash = "sha256-DPYUXurhpclv2TthwX7/RQj47NJxcgT1J256GIkVncw=";
      name = "zynq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/zynq/generic/packages/Packages";
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
