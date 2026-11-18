# snapshot armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-5Q9mvATEnR93ddUfmJ1GAxr9gqa8BXLd3yBPLio/Csw=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "2aa0d551b0cba98ddb22c08413ea95cf4d7e3c28555cdb01aee0350bcd51702e";
    filename = "immortalwrt-imagebuilder-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+xmbxJuJuA2A6ER0WQjJr9JKRA/IItTh4lQAi+9Ql6o=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "09e0e35c576a707c58a76716919ad20f";
      version = "6.18.60";
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
      "video-support"
    ];
    kmods_target = "6.18.60-1-09e0e35c576a707c58a76716919ad20f";
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
  kmods."6.18.60-1-09e0e35c576a707c58a76716919ad20f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/kmods/6.18.60-1-09e0e35c576a707c58a76716919ad20f/";
    sourceInfo = {
      hash = "sha256-91gsSLhFN0CDhDKfpjI3kbpH+OQey2d9HyLhK6EsExg=";
      name = "kmods-armsr_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv7/kmods/6.18.60-1-09e0e35c576a707c58a76716919ad20f/packages.adb";
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
      hash = "sha256-2Xe64tfpHhMsSjcqzvyiFVmMDONJFxVS/ngn8N9x9lg=";
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
