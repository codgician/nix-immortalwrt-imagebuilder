# 24.10.5 armsr/armv7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-kPgoDT/4kY4kF/M/fem9xGqjVIbO/RKYSGX0iqqQ4iQ=";
    name = "armsr_armv7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "989b25026591cac1dfb05fc03e3aa78d6a8750b6ef71eaed5e42485d5fc6d819";
    filename = "immortalwrt-imagebuilder-24.10.5-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-N/UZtbO3zd0ws7kXWrQUAC1GX3qNnfKShAXVOYh7zF4=";
    name = "armsr_armv7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "9b6a36f17bb35e59cb53ceb1989c3e04";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-9b6a36f17bb35e59cb53ceb1989c3e04";
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
  kmods."6.6.122-1-9b6a36f17bb35e59cb53ceb1989c3e04" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv7/kmods/6.6.122-1-9b6a36f17bb35e59cb53ceb1989c3e04/";
    sourceInfo = {
      hash = "sha256-a2zsW1aT6nd6Qn4CW2XmStUunnZPiQeg2uB4Z8RN6Kg=";
      name = "kmods-armsr_armv7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv7/kmods/6.6.122-1-9b6a36f17bb35e59cb53ceb1989c3e04/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-40AIENOQ7tggcpGBDodJj2nRTmWPhx1sD6wI2dy8PUc=";
      name = "armsr_armv7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv7/packages/Packages";
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
