# 24.10.0 armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-WcIdBNOAQ651RFOtP+4b9x2liDkzDPleu8MRAdwpNEA=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "8aad4cce2266c70298b164f50aa72a2bb357a80ec6fb6ffe65ab758f37980cdf";
    filename = "immortalwrt-imagebuilder-24.10.0-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Sz4cOfOlUuFha833caGTYhEWrhYVzEjIj915JOv0Ztk=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "c276645ed35e675f9c9c7bef1069c78f";
      version = "6.6.73";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "blkid"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-c276645ed35e675f9c9c7bef1069c78f";
    profiles = {
      generic = {
        device_packages = [
          "kmod-amazon-ena"
          "kmod-e1000e"
          "kmod-vmxnet3"
          "kmod-rtc-rx8025"
          "kmod-i2c-mux-pca954x"
          "kmod-gpio-pca953x"
          "partx-utils"
          "kmod-wdt-sp805"
          "kmod-mvneta"
          "kmod-mvpp2"
          "kmod-fsl-dpaa1-net"
          "kmod-fsl-dpaa2-net"
          "kmod-fsl-enetc-net"
          "kmod-dwmac-imx"
          "kmod-fsl-fec"
          "kmod-dwmac-rockchip"
          "kmod-dwmac-sun8i"
          "kmod-phy-aquantia"
          "kmod-phy-broadcom"
          "kmod-phy-marvell"
          "kmod-phy-marvell-10g"
          "kmod-sfp"
          "kmod-atlantic"
          "kmod-bcmgenet"
          "kmod-octeontx2-net"
          "kmod-renesas-net-avb"
          "kmod-phy-realtek"
          "kmod-phy-smsc"
        ];
      };
    };
  };
  kmods."6.6.73-1-c276645ed35e675f9c9c7bef1069c78f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv7/kmods/6.6.73-1-c276645ed35e675f9c9c7bef1069c78f/";
    sourceInfo = {
      hash = "sha256-F2+qrzqST8wsZHjAhiNsNWFE8eDA4g28o11D/1D/8e8=";
      name = "kmods-armsr_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv7/kmods/6.6.73-1-c276645ed35e675f9c9c7bef1069c78f/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-Sp9FWDGXz1mCBjrDyd04hKQaJYernV/5jOc3NaloF58=";
      name = "armsr_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv7/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a15_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a15_neon-vfpv4.nix;
}
