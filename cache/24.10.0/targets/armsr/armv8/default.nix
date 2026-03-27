# 24.10.0 armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-FeuAnDE25GYp/cCnN5l8pVkyy6P4DscGAEpJUDEvRuY=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "1e9817eb0a699a9bdf432d5fcf2cb5fcb8cac9398de60b5ceef4eed81092bada";
    filename = "immortalwrt-imagebuilder-24.10.0-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tgmTcGa3EV2bbms1b7dKxXqpIoUrbUlTP3dGMGHH37Y=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "a7eafb055ecc4891236a188e564e21ff";
      version = "6.6.73";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-a7eafb055ecc4891236a188e564e21ff";
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
  kmods."6.6.73-1-a7eafb055ecc4891236a188e564e21ff" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv8/kmods/6.6.73-1-a7eafb055ecc4891236a188e564e21ff/";
    sourceInfo = {
      hash = "sha256-VSu/+DujRUWNq8X1zhujgS+gOd1aQC4AwmyBgcFG2s4=";
      name = "kmods-armsr_armv8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv8/kmods/6.6.73-1-a7eafb055ecc4891236a188e564e21ff/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv8/packages/";
    sourceInfo = {
      hash = "sha256-gIdI/xiMZkilDXUHmEkqXarKED+CI9GOqnTYGTxDiSI=";
      name = "armsr_armv8-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/armsr/armv8/packages/Packages";
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
