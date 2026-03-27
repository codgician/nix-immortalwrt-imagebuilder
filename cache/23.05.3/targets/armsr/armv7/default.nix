# 23.05.3 armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-P9tSX5vNjhdZO1SnC/zQnMVTlwFQU0RU8y/DlnSvW/Q=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "c0628835880809a26d49ef50ceeefe6b58b83b17217d04c0e7d0c475bc1a33fd";
    filename = "immortalwrt-imagebuilder-23.05.3-armsr-armv7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-PLMpx2ZuUMh5xCAOy7RFpzb9egR4XA6CcJOWM+dVoYg=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/armsr/armv7/profiles.json";
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
          "kmod-renesas-net-avb"
          "kmod-phy-realtek"
          "kmod-phy-smsc"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-oJeQX86T5uAZei81NaDMQUFo8XfKbcg6ieJIaqZvUhw=";
      name = "armsr_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/armsr/armv7/packages/Packages";
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
