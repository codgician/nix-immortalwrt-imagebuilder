# 24.10.5 armsr/armv8
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-1rVbzLa6D3/S1B9a6gokULSELnTD18aivrC/nLem8xU=";
    name = "armsr_armv8-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "049f249ed7a0d72ae7cf798c3a1a7f55292a37dda927f67f4dfa577a47b4e26c";
    filename = "immortalwrt-imagebuilder-24.10.5-armsr-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-fW8FfMWF+cOngStGVafL1zrV6WceBGKnAguRX++QnKI=";
    name = "armsr_armv8-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "07f627a3918c58c773f85279718bb442";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-07f627a3918c58c773f85279718bb442";
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
  kmods."6.6.122-1-07f627a3918c58c773f85279718bb442" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv8/kmods/6.6.122-1-07f627a3918c58c773f85279718bb442/";
    sourceInfo = {
      hash = "sha256-4jiCIBxlHCG92pDbJzhFbsVUwqpIGSKnUr8c4w6ezrA=";
      name = "kmods-armsr_armv8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv8/kmods/6.6.122-1-07f627a3918c58c773f85279718bb442/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv8/packages/";
    sourceInfo = {
      hash = "sha256-fcuCJxL7z+t1NhlNraKukM5eXtMMggRaQHxsxCfk6wg=";
      name = "armsr_armv8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/armsr/armv8/packages/Packages";
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
