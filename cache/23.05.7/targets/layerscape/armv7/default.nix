# 23.05.7 layerscape/armv7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-IPd6ktnYKzTheXCythK+khbpru/r1KTwYCiBdtciJvY=";
    name = "layerscape_armv7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "2d37ae7f4ff9bb8877122a207e0302f42e46ce6c007340ea28f368caf604808e";
    filename = "immortalwrt-imagebuilder-23.05.7-layerscape-armv7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-++nYdsnCibXgZmG3DwgwQJRrXe+0sT04wv7ucjjQhJA=";
    name = "layerscape_armv7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "811c82f0da26ddc3ee4a7d7b5c75c7f2";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
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
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
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
      "partx-utils"
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
    kmods_target = "5.15.195-1-811c82f0da26ddc3ee4a7d7b5c75c7f2";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ "layerscape-rcw" ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-vaOIaQp2mINc2hGQB1IaIB6ObIxXYPCsyUxMyKh2LiI=";
      name = "layerscape_armv7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv7/packages/Packages";
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
