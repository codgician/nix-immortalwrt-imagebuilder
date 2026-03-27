# 24.10.4 armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-I3nIYqfKvVVpoSrn621kKmeBNY2ddV0YkjXK6vgwr5U=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "443383a520a1c81105dc0ca4ea629c48d5ed441e528ba1c54d9a9c51c2859d86";
    filename = "immortalwrt-imagebuilder-24.10.4-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NEf79SYytDfU8pGSHZc/8BObEJ65aMt2MIYsD9a1eQE=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "d05c98b926045f06706fd406231ae8f2";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-d05c98b926045f06706fd406231ae8f2";
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
  kmods."6.6.110-1-d05c98b926045f06706fd406231ae8f2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/armsr/armv7/kmods/6.6.110-1-d05c98b926045f06706fd406231ae8f2/";
    sourceInfo = {
      hash = "sha256-MG6DIU2gFaalbGKho6cLg/XN5hbkRDbqw60ArFu20y0=";
      name = "kmods-armsr_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/armsr/armv7/kmods/6.6.110-1-d05c98b926045f06706fd406231ae8f2/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-9vRamZpGC9sj2ThmubxVAT/uAFbDn5z3hMSeVAIi5js=";
      name = "armsr_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/armsr/armv7/packages/Packages";
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
