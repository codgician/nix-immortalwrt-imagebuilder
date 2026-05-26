# 25.12.0 armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-nqeqjzpi4HwxzJSgwDCbU3llErypYfeNOFKTqxXqu8k=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "6c80c6d04b0ed12be97727ba2077c0d9f7f585a9ac99d807b3badd71107e6106";
    filename = "immortalwrt-imagebuilder-25.12.0-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Atp/ZsJLUSxOgULoviqAD0lruq2UqmqUMd/nlKGXVxc=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "f7a8a8646e96c19daac9037f5eb814ca";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-f7a8a8646e96c19daac9037f5eb814ca";
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
  kmods."6.12.87-1-f7a8a8646e96c19daac9037f5eb814ca" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/armsr/armv8/kmods/6.12.87-1-f7a8a8646e96c19daac9037f5eb814ca/";
    sourceInfo = {
      hash = "sha256-TLlnQE2oZWoBK66Uw2Bs6pF+XGyzC94G48si13pkHkc=";
      name = "kmods-armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/armsr/armv8/kmods/6.12.87-1-f7a8a8646e96c19daac9037f5eb814ca/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/armsr/armv8/packages/";
    sourceInfo = {
      hash = "sha256-dQL/3ITdMdWEbkpuKLYYRoUVQRPd5FLFqY2oFOebBAg=";
      name = "armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/armsr/armv8/packages/packages.adb";
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
