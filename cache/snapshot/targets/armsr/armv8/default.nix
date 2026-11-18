# snapshot armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-QQo9ewCsUzk9IGfgGdvEf2XgxIMrtB1PM4mNL8/fYHw=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "b5c410895f5b333649716d08f6e28d2114d02897fdaa79d2f49158dd6659b9e5";
    filename = "immortalwrt-imagebuilder-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-BLYNTKxbgu2lcS7fRq+xsb5JNrJ1ls2RtK6JJ/aHGqw=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "ca4ac53e6c9aa21e53cc26c32238ee5e";
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
    kmods_target = "6.18.60-1-ca4ac53e6c9aa21e53cc26c32238ee5e";
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
  kmods."6.18.60-1-ca4ac53e6c9aa21e53cc26c32238ee5e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.18.60-1-ca4ac53e6c9aa21e53cc26c32238ee5e/";
    sourceInfo = {
      hash = "sha256-0Tx1Xt4RM+xb++R+D8e5y/lSD+ZadTQ0BbelQnCG3SE=";
      name = "kmods-armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.18.60-1-ca4ac53e6c9aa21e53cc26c32238ee5e/packages.adb";
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
      hash = "sha256-tCKdPr+HkBFCgG6GPmhNvfqwCDAdPOvKlpb5z3/9X0w=";
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
