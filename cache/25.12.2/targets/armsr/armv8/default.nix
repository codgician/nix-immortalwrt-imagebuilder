# 25.12.2 armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-nLpLFuhbb63dZu0iYLWOJlZJpliuIU5kIPFDeY3o8Ts=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "a8c1ffda15e7d79854ff4afd711da3e7224e84945c79f03d80fc6cf48727cb9c";
    filename = "immortalwrt-imagebuilder-25.12.2-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qJrt/wPjOBs0f/OscJBRBhd67obd44nCbYYmHqAraAA=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "22bb9c5fbf961290730647aa15ad8277";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.103-1-22bb9c5fbf961290730647aa15ad8277";
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
          "kmod-thunderx-net"
        ];
      };
    };
  };
  kmods."6.12.103-1-22bb9c5fbf961290730647aa15ad8277" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv8/kmods/6.12.103-1-22bb9c5fbf961290730647aa15ad8277/";
    sourceInfo = {
      hash = "sha256-j8pjshZa4aGuvZ+o6QqP29NBlx5bzRiRHHVK+Kdg4Eo=";
      name = "kmods-armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv8/kmods/6.12.103-1-22bb9c5fbf961290730647aa15ad8277/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv8/packages/";
    sourceInfo = {
      hash = "sha256-3VH3uVzJHAsybr43z2YLyVSpi1Mi056Wo8usaGQHtg0=";
      name = "armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv8/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_generic";
  feeds = import ./../../../packages/aarch64_generic.nix;
}
