# 25.12.0-rc2 armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-OLi0bwwIPM6A/n6UfsjpibYSrsVsBAst5kqkhf9RuOc=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "e24794905f2870df43b6d0ed6979a059b40faaf8c05db1c5de7089c7befbbd62";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-LwtXJy7IaZHvVCg3ySXU/GmIaSTtXl/ZMiXqquiyeg0=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "c575110ccca25fb199070aa19185a912";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-c575110ccca25fb199070aa19185a912";
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
  kmods."6.12.79-1-c575110ccca25fb199070aa19185a912" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv7/kmods/6.12.79-1-c575110ccca25fb199070aa19185a912/";
    sourceInfo = {
      hash = "sha256-NdgZDyS7Od/ckNOG3E6XNDpdqO0l3LXJOzb6WPrW+ck=";
      name = "kmods-armsr_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv7/kmods/6.12.79-1-c575110ccca25fb199070aa19185a912/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-Vh+SNd7i7O39u7mA5h8L6U8HEje9wF8/3J36Vi506iI=";
      name = "armsr_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv7/packages/packages.adb";
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
