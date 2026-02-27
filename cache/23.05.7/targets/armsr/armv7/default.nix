# 23.05.7 armsr/armv7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-00qzOSw7+DqyKnxr/5vbJcfcYvsY/0iibl6QGlNRHmA=";
    name = "armsr_armv7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "dfe090a060e01f06e7d473901de487ace4f335e28383df4e350d1241370e3e7e";
    filename = "immortalwrt-imagebuilder-23.05.7-armsr-armv7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-lF+yAltyodKr8LLz93nTAPKIaAU697FmR/BTjegXB28=";
    name = "armsr_armv7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "e8ef9d54e195fe5c58800169c93491a9";
      version = "5.15.195";
    };
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
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.195-1-e8ef9d54e195fe5c58800169c93491a9";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-/xFOKhAAtF1LQVfbWEsVxtt4e27Zr9GZOypKChMVlJU=";
      name = "armsr_armv7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv7/packages/Packages";
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
