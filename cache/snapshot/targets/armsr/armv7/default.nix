# snapshot armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-4i7Qd9Np26PgCHufxLdEOdSptmb41hw8l0FxKuoqvVc=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "48a370205dfcf561e9ab0e7a1938f4ca103433582d5d4a1e2aaf03ab8edc2b01";
    filename = "immortalwrt-imagebuilder-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gE94/Ttp5pMtLhAmmzsj1o7g6WzvZYmPID1iTXJbfU8=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "5c9f0f9eb4f8d1d53b034c85e27cb3b3";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.92-1-5c9f0f9eb4f8d1d53b034c85e27cb3b3";
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
  kmods."6.12.92-1-5c9f0f9eb4f8d1d53b034c85e27cb3b3" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/kmods/6.12.92-1-5c9f0f9eb4f8d1d53b034c85e27cb3b3/";
    sourceInfo = {
      hash = "sha256-QQZdMv7JQpRidp8IkJbquCe+d55qYeISRJvIKJw6QJI=";
      name = "kmods-armsr_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/kmods/6.12.92-1-5c9f0f9eb4f8d1d53b034c85e27cb3b3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-cGheOVaaPq72FzOkgy+plL2+zMP06glf9mXqP33z428=";
      name = "armsr_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/packages/packages.adb";
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
