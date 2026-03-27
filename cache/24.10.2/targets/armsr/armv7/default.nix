# 24.10.2 armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-TLMQTz8iCpRnDA0AUKMCSxtMAJMta/qCD5uipQQC9go=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "5ff5270e3a061cfb14859a8533975d1b7e35203ed86be9ae81fad2bc36948069";
    filename = "immortalwrt-imagebuilder-24.10.2-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4vdA08ZecjnElEVtaF3SIucTpc43zWfNaTmHGXj9+ac=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "6939a0cf8b6dbbf193d0d38aebf99616";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-6939a0cf8b6dbbf193d0d38aebf99616";
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
  kmods."6.6.93-1-6939a0cf8b6dbbf193d0d38aebf99616" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/armsr/armv7/kmods/6.6.93-1-6939a0cf8b6dbbf193d0d38aebf99616/";
    sourceInfo = {
      hash = "sha256-BppVJLsgTI96bowovOcU+TT5y9vnPKofu1VhDY3ICqA=";
      name = "kmods-armsr_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/armsr/armv7/kmods/6.6.93-1-6939a0cf8b6dbbf193d0d38aebf99616/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-bkaA5Uwmtgf3dysXVtro2pCgx3wTK3OrF1IMkDSDCEA=";
      name = "armsr_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/armsr/armv7/packages/Packages";
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
