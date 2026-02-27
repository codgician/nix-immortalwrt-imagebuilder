# snapshot armsr/armv7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-zBdlEcu2eolV35pHuMnuFlW41NolIXpjuhEgkw6FMpw=";
    name = "armsr_armv7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "ceb59a053318b7b81a128e13a84fa6eabfab41b193dab21d917f189e73a7a403";
    filename = "immortalwrt-imagebuilder-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-skfK4q6e1QDG1n5ipeW3/zG39PovIRaJd4noIzer9tQ=";
    name = "armsr_armv7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "c654dcedeb5f64a9b69e472b04a7861c";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-c654dcedeb5f64a9b69e472b04a7861c";
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
  kmods."6.12.67-1-c654dcedeb5f64a9b69e472b04a7861c" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/armsr/armv7/kmods/6.12.67-1-c654dcedeb5f64a9b69e472b04a7861c/";
    sourceInfo = {
      hash = "sha256-kVhWV25uCVTlwWwY6S5ERZ40Q0jlUIxbD07ml4B9OIg=";
      name = "kmods-armsr_armv7-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/armsr/armv7/kmods/6.12.67-1-c654dcedeb5f64a9b69e472b04a7861c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-Ldwe7tFgTuKkiYCZfJLDeGxjE3X3v9HoYnxXfrhoCwU=";
      name = "armsr_armv7-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/armsr/armv7/packages/packages.adb";
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
