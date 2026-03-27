# 23.05.3 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-zY4G2/Ely+1pVMQWg27I9QIQlfMI39emesk1gTjx8Lc=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "054f657d0a8bb8b744087ba0c5f8dea37f87c37702b723b1ff76458b4c9e53c0";
    filename = "immortalwrt-imagebuilder-23.05.3-realtek-rtl930x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Sumr/dzftaJ+tGwuKsGOpT3e+lbmmAvnwPzqym0+bYU=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "ip-bridge"
      "ip-full"
      "kmod-gpio-button-hotplug"
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
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "opkg"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "tc-bpf"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-LMaJz/T/3Q694JRl0GLvm76Nykf5522M+z+FJ5W9R5E=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/realtek/rtl930x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
