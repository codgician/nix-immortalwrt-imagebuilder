# 23.05.0 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-OPyKsD1o3qJqZbAY6yM64Ep4wNaky7tIkomD5BqwmCM=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "14ae29038078d8fbcca0b705cd2d2aa8d6aaba82a78b55ebdc0b0780a5c5de20";
    filename = "immortalwrt-imagebuilder-23.05.0-layerscape-armv7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Xp1lmfWsjHocHhs3ysIFxvrpV7Dm1I/HzDFYbMKOUL8=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = null;
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
      "ipv6helper"
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
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
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
    kmods_target = "null-null-null";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-iC0Wrj1ivYb4wESv9gVXNDJekvnMHD3U5VVC8ld4rKs=";
      name = "layerscape_armv7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/layerscape/armv7/packages/Packages";
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
