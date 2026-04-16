# 25.12.0-rc2 armsr/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-zQpRST7ALEo8oEyIQuVb+w0tamn2M0ohlv0LB4w9JkU=";
    name = "armsr_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "de7284954f8478816c9ab358ccceda3f0d21b4c10debe46ef49ba9ba258f2275";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9hNOf4UhDfRcm+r9r+PxVYgygHyfbhLO0vhy+I9EQLs=";
    name = "armsr_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "06ef23bfd06d29e8d38da9d312be09c9";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-06ef23bfd06d29e8d38da9d312be09c9";
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
  kmods."6.12.79-1-06ef23bfd06d29e8d38da9d312be09c9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv8/kmods/6.12.79-1-06ef23bfd06d29e8d38da9d312be09c9/";
    sourceInfo = {
      hash = "sha256-VO4pVXIX0Ix0dDKVZCSiNCrbqzrUrlYds7IEdA4rPOk=";
      name = "kmods-armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv8/kmods/6.12.79-1-06ef23bfd06d29e8d38da9d312be09c9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv8/packages/";
    sourceInfo = {
      hash = "sha256-X532qp3mYMkRQXVyVHj+9h0poLwpymmdLslaN0YGrS4=";
      name = "armsr_armv8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/armsr/armv8/packages/packages.adb";
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
