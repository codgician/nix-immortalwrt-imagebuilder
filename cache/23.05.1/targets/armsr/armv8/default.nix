# 23.05.1 armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-G7Ugs+EQ0FGVpShX3vTQi7Rvs3TJlN9xuaB1CKsdRhQ=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "626d40bf2b535231d3ed93e42dd83bebd4bab2ea1f82447c85a97d74028f5d3d";
    filename = "immortalwrt-imagebuilder-23.05.1-armsr-armv8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ApOx9wpwzSWvcod7pkJkkZHbuEzEIhUITn5eSongpqM=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "blkid"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
          "kmod-thunderx-net"
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
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/armsr/armv8/packages/";
    sourceInfo = {
      hash = "sha256-kAlA7e1J54qaPBAvD6elO3r/gdlPbuYdSxsgGEgsrn8=";
      name = "armsr_armv8-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/armsr/armv8/packages/Packages";
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
