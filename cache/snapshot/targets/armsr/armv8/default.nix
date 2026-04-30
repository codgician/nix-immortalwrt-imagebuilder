# snapshot armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-gY60ByIBNsMu8xOEIKcNMa5YMC3m9uotP4orIZJ1avI=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "5c192d8de14e103062d25477ecba03a57966bb3b1ff39e95f58017b4a2946fd9";
    filename = "immortalwrt-imagebuilder-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZFefv+m98Y2fBfgoXGV4HPEvhf8/J9wTxzvJi2MqZz4=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "e3799e0ee621c9b4ec9a135a7bc1d262";
      version = "6.12.80";
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
    kmods_target = "6.12.80-1-e3799e0ee621c9b4ec9a135a7bc1d262";
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
  kmods."6.12.80-1-e3799e0ee621c9b4ec9a135a7bc1d262" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.12.80-1-e3799e0ee621c9b4ec9a135a7bc1d262/";
    sourceInfo = {
      hash = "sha256-Y6Le8e6wjiS+UgtsyEMqHTE+hpPqB9KQ6kpeJw4nwNA=";
      name = "kmods-armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/armsr/armv8/kmods/6.12.80-1-e3799e0ee621c9b4ec9a135a7bc1d262/packages.adb";
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
      hash = "sha256-g/DwK4Jyj1lsYlWezejxNPXNaiOIN4puDOyo704sb2c=";
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
