# 24.10.7 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-QSruTexliW+FE/8zNdgisD4ACITAVKgzabNt4FLiTi8=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7833d14ab6be7bfe161a0bfbf1e508c156788d298499563885c7fef698f70dd3";
    filename = "immortalwrt-imagebuilder-24.10.7-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9GouxWhVrD1wdGTP3n9KKxo/tk+bykJdpu4EenGtxXs=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "f7cc8c56a5e7f81d663eefe78617d62a";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-f7cc8c56a5e7f81d663eefe78617d62a";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.159-1-f7cc8c56a5e7f81d663eefe78617d62a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm4908/generic/kmods/6.6.159-1-f7cc8c56a5e7f81d663eefe78617d62a/";
    sourceInfo = {
      hash = "sha256-mGsolmlHko5fYsv/wrGeuf09wyYrrTNrO5v25+DPY1I=";
      name = "kmods-bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm4908/generic/kmods/6.6.159-1-f7cc8c56a5e7f81d663eefe78617d62a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-ECiUryIWfD99b4/t/BFFtUkNJy0hLak93KOYerkK9eo=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm4908/generic/packages/Packages";
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
