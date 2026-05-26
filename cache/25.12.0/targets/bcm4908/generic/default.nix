# 25.12.0 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-0cprh5LqdoebtT9t038F3lkOxMkuFwyuRRo4XOVu/WY=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6139cbd22e3a29c492d782409967ff4f7c9d3d9926d720526e7489494b5d9191";
    filename = "immortalwrt-imagebuilder-25.12.0-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-54ByROsQvgi3eUFdNIOwMRl0LKQktImZ9YHopiqqflo=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "6daa54b48dd1abd5985636731897b767";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.87-1-6daa54b48dd1abd5985636731897b767";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.87-1-6daa54b48dd1abd5985636731897b767" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm4908/generic/kmods/6.12.87-1-6daa54b48dd1abd5985636731897b767/";
    sourceInfo = {
      hash = "sha256-SqganPJEcCcIlkkWag8Z2bgpq0CRuz27HQZuKlEbjig=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm4908/generic/kmods/6.12.87-1-6daa54b48dd1abd5985636731897b767/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-h4Bb25IVUDLmZNAERt9ASVE1IMCkGrYiGu3O264Zxeo=";
      name = "bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm4908/generic/packages/packages.adb";
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
