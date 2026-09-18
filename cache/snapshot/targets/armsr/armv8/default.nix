# snapshot armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-3jfNT0UJoIu/ZmVIfjruESt+KfbnfQ8msp8MaQxsRfQ=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "6e9451665fbcea8b9f533935995bf7969f038fce0c94c94e2c02998e4b1c6ea6";
    filename = "immortalwrt-imagebuilder-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8lSkKTqk049zSSAOcTlwkx394sGIvSXWBcRcO0xHKy4=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "2e107f3f74eefa4459193e9332551c74";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-2e107f3f74eefa4459193e9332551c74";
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
  kmods."6.18.52-1-2e107f3f74eefa4459193e9332551c74" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.18.52-1-2e107f3f74eefa4459193e9332551c74/";
    sourceInfo = {
      hash = "sha256-SMUSDitl5hbZ0mWrIgE+oL4ulvEfVX/wJJq3BtmOV0Y=";
      name = "kmods-armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.18.52-1-2e107f3f74eefa4459193e9332551c74/packages.adb";
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
      hash = "sha256-8Ql6xrkAsktnWjVWUoVf/lqFyyqHZiXKbJ4YzwvagB4=";
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
