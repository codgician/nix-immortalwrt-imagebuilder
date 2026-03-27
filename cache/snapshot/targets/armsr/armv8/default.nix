# snapshot armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-ptcdlHVm3eqcuGjk6gHdsya4i7GlNokrNE4jwqaxi2k=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "4c2ccbe78339f6a443fc9a8f51f608fab0eeb61df994857950304172b2772280";
    filename = "immortalwrt-imagebuilder-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Boe1igtsRifMgTIAuaVYJbMeGEaqeQIu40iWDcOCBtE=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "bd9c58751b85a4aec83502ce9c9ff4fc";
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
    kmods_target = "6.12.77-1-bd9c58751b85a4aec83502ce9c9ff4fc";
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
  kmods."6.12.77-1-bd9c58751b85a4aec83502ce9c9ff4fc" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.12.77-1-bd9c58751b85a4aec83502ce9c9ff4fc/";
    sourceInfo = {
      hash = "sha256-iw+XexXtVs1aGf0gVxU1RCURzeQUSuYv+/p8EdAvFAo=";
      name = "kmods-armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.12.77-1-bd9c58751b85a4aec83502ce9c9ff4fc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/packages/";
    sourceInfo = {
      hash = "sha256-qq39ThCMUQ9oAFCE1U8mu1Qd7G5QWY9BKAt/kjN692Y=";
      name = "armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/packages/packages.adb";
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
