# snapshot armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-eHTC1zGhRV8t0h21IQ9DH2VJP0D3dUP1KaW7+t3FgMg=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "35277c5359da27b344a875ce88da9bcc3463b328ec894bb0d88d92251ae3afc7";
    filename = "immortalwrt-imagebuilder-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Crt+hTp18xY59P/ee6NKEIsv4oZIgtDANgGCat8UETQ=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "f7533620b288537fe48d5146a49caff5";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-f7533620b288537fe48d5146a49caff5";
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
  kmods."6.12.94-1-f7533620b288537fe48d5146a49caff5" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.12.94-1-f7533620b288537fe48d5146a49caff5/";
    sourceInfo = {
      hash = "sha256-wSo6FrV3RCHcn6adsdbj8TrPdtwe+mM/oCFB75RAs4U=";
      name = "kmods-armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.12.94-1-f7533620b288537fe48d5146a49caff5/packages.adb";
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
      hash = "sha256-Ka3TKWnVX9r+Nqp/DU5LhLLwQ6JAoMXIqzcwh8/ooEw=";
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
