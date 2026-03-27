# 25.12.0-rc1 armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-EdBEXfxYmS8f9AkWXA9CGczOveh8HvwZGWpONm748Wk=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "fcd5dd4b061970bbce95427043400caf80d9b2f174024c8ee43d185ea4bd1bd3";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-++sSUmEWOpq5mkkzmvLAkiAryn3uejhNd1v5LFUnjmg=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "2a26ec78c90cf7adf8eb2a68fc8a7739";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-2a26ec78c90cf7adf8eb2a68fc8a7739";
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
  kmods."6.12.74-1-2a26ec78c90cf7adf8eb2a68fc8a7739" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/armsr/armv8/kmods/6.12.74-1-2a26ec78c90cf7adf8eb2a68fc8a7739/";
    sourceInfo = {
      hash = "sha256-ViazDJhxEBdgo/H5B0YpTipbVFTYyEwSFfkVxPjkJng=";
      name = "kmods-armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/armsr/armv8/kmods/6.12.74-1-2a26ec78c90cf7adf8eb2a68fc8a7739/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/armsr/armv8/packages/";
    sourceInfo = {
      hash = "sha256-4HW5xjBZiNY2KefKrTBayvZ4GlvoIpu5rW8229qzWZs=";
      name = "armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/armsr/armv8/packages/packages.adb";
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
