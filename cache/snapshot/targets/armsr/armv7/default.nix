# snapshot armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-HT8YVFeP4RDkoJjR76b3uef72HMfOfbF5jr9F9AH2ks=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "d2cc530862c816c7eb62ef9dda3af13b3cea88f31d5eac6a5b50b94b33b52701";
    filename = "immortalwrt-imagebuilder-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OZ591rm06NSuIiNB3MEpWiViuTRNsD18M5I8Hu7RN4k=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "b9a246164944cc1df9181dcc6d138d37";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-b9a246164944cc1df9181dcc6d138d37";
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
  kmods."6.12.77-1-b9a246164944cc1df9181dcc6d138d37" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/kmods/6.12.77-1-b9a246164944cc1df9181dcc6d138d37/";
    sourceInfo = {
      hash = "sha256-KtHPBBzENYmoFqViLGv/16o8oXmOakXe/ZOrZqUJLss=";
      name = "kmods-armsr_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/kmods/6.12.77-1-b9a246164944cc1df9181dcc6d138d37/packages.adb";
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
      hash = "sha256-Iae4ji60YGMOXU4+7DzD1FsGMendxAsSqNf4OKeMC9I=";
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
