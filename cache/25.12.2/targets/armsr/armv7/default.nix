# 25.12.2 armsr/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv7/";
  sha256sums = {
    hash = "sha256-KNdw5XsHlH5xY/SlkEHrsLhwAHTmaw3IjpfObOYNCL4=";
    name = "armsr_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "59ac47bea06302cf6173840b1a891b80671d457c6791cdef848bb93cbae928ce";
    filename = "immortalwrt-imagebuilder-25.12.2-armsr-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-s/WnvNi9rjWAetOnSuYtyz8jE6TbM23bnrhLKxYIUwk=";
    name = "armsr_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "73888c49b77572fad3a7217df03f2436";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.103-1-73888c49b77572fad3a7217df03f2436";
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
  kmods."6.12.103-1-73888c49b77572fad3a7217df03f2436" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv7/kmods/6.12.103-1-73888c49b77572fad3a7217df03f2436/";
    sourceInfo = {
      hash = "sha256-XYkB2vxaEVoXwkNOLGgcI13puQWs0pSQsuPGDdaaguI=";
      name = "kmods-armsr_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv7/kmods/6.12.103-1-73888c49b77572fad3a7217df03f2436/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv7/packages/";
    sourceInfo = {
      hash = "sha256-pNSwVPr4acbIYSRInERAIgL+oT4c6Cf3EEUCPceHK+Y=";
      name = "armsr_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/armsr/armv7/packages/packages.adb";
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
