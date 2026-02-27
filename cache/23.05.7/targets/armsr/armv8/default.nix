# 23.05.7 armsr/armv8
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv8/";
  sha256sums = {
    hash = "sha256-kgwHENWYKqOh5VzRgnZJHud0EOjoQQu0CNtTW2c6rqQ=";
    name = "armsr_armv8-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "a55b659c31b016c577b21082e38a878f1689ebb12ad25262fa745b276eab4bb1";
    filename = "immortalwrt-imagebuilder-23.05.7-armsr-armv8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-W5RATm8bjYYvpDF/o3OdRq3cY9gekhWyGVQ8SD48JGM=";
    name = "armsr_armv8-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "f5023b6424d7d658770c39d8cb8c3553";
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
    kmods_target = "5.15.195-1-f5023b6424d7d658770c39d8cb8c3553";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv8/packages/";
    sourceInfo = {
      hash = "sha256-k2G/77uTXq2S02vW3Psf9Yfi4tfU9c05/eAOnkeaYKM=";
      name = "armsr_armv8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/armsr/armv8/packages/Packages";
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
