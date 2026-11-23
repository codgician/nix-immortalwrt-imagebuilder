# 24.10.7 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-wC0DYQ6P/j6+UIrqGfvyuTSsj4UR5eqw5X+PK4PxCCU=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "c5aa86d69d3dd9c6e3d1a100b18f47bacf68baa7331d93771da0a410b2316995";
    filename = "immortalwrt-imagebuilder-24.10.7-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Nbymt27JtcducZnyD9rylnzDfYEdsORUMdVsqJ9rlBg=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "cc4f805d4a317f7f6062354d0fbfc068";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-cc4f805d4a317f7f6062354d0fbfc068";
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
  kmods."6.6.159-1-cc4f805d4a317f7f6062354d0fbfc068" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/layerscape/armv7/kmods/6.6.159-1-cc4f805d4a317f7f6062354d0fbfc068/";
    sourceInfo = {
      hash = "sha256-jUrwA2S+SOOi5FpL+jH9HTATg5YpKJL/OYmWMslGGGw=";
      name = "kmods-layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/layerscape/armv7/kmods/6.6.159-1-cc4f805d4a317f7f6062354d0fbfc068/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-Ps45HNPmOt3+PDysSJ2ARN2LQ9t21mNjO63TyUteBf0=";
      name = "layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/layerscape/armv7/packages/Packages";
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
