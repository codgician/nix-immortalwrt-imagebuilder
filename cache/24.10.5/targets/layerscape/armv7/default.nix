# 24.10.5 layerscape/armv7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-aRo4vJw6SUkoTHRbRZYUUb77jCk1R/ZERqxkunVssr0=";
    name = "layerscape_armv7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "38336d158be2a0ad11433bfbb864a0aa96097af477862ef5e18fb1c184f0b7fd";
    filename = "immortalwrt-imagebuilder-24.10.5-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-h/nhFPI2pRO5OLj1uCW+XWAtsRSZ7/2zic6Q5QQaQr4=";
    name = "layerscape_armv7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "cc4f805d4a317f7f6062354d0fbfc068";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
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
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-cc4f805d4a317f7f6062354d0fbfc068";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.122-1-cc4f805d4a317f7f6062354d0fbfc068" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv7/kmods/6.6.122-1-cc4f805d4a317f7f6062354d0fbfc068/";
    sourceInfo = {
      hash = "sha256-UmRLv1Mj8IFCYGMs2DLbd0vX1Tm9KRSRLXRrFtFYKsc=";
      name = "kmods-layerscape_armv7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv7/kmods/6.6.122-1-cc4f805d4a317f7f6062354d0fbfc068/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-PYZzMeZa304H2D0b1I/9ohTe0zauwf1iViXAnbsx6Zk=";
      name = "layerscape_armv7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv7/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
