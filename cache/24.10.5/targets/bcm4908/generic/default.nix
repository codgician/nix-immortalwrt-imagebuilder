# 24.10.5 bcm4908/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-3UlK3U3H4rxTaODkmJy5rpcT//fFBntbXDlhJUxQkZM=";
    name = "bcm4908_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9efce3eeb93213b24cbbc1ea100492e59df2e399b5fb3e539d3b7ed2abeec581";
    filename = "immortalwrt-imagebuilder-24.10.5-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AglsSmwSJFnHSUej8552iv1x0nJRK3YpuBClt8GxErE=";
    name = "bcm4908_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "f7cc8c56a5e7f81d663eefe78617d62a";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "bcm4908img"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdt-utils"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
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
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-f7cc8c56a5e7f81d663eefe78617d62a";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.122-1-f7cc8c56a5e7f81d663eefe78617d62a" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm4908/generic/kmods/6.6.122-1-f7cc8c56a5e7f81d663eefe78617d62a/";
    sourceInfo = {
      hash = "sha256-pjgnCVAlUvqWPwffKIieQoJvfXttbtx6lKko6smMWQo=";
      name = "kmods-bcm4908_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm4908/generic/kmods/6.6.122-1-f7cc8c56a5e7f81d663eefe78617d62a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-LG+J6tJIMj+0b+fFpSuS2eH457oqLT4e/B9mad0cbqY=";
      name = "bcm4908_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm4908/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
