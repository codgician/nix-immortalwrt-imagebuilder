# 23.05.0 armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-J4B6rH4QPaIxnzJKqy4aTc6RSg1Nc8LKOEXYrjmReTA=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "c750b1f7d3bfdcce1388b8ee9582275cf8fb31a3f4e9da16119c1eabcb2b4d68";
    filename = "immortalwrt-imagebuilder-23.05.0-armsr-armv7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-dpGKZ8RSBsrEmiEPeRRG0rvmvZBnhbabR9aYGO/OQlk=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-Duoz6IRdIqvamqqm9Yi9hnfI4tL5FQI+I35TJTrpusg=";
      name = "armsr_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/armsr/armv7/packages/Packages";
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
