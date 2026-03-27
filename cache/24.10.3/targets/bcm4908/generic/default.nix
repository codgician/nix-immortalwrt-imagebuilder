# 24.10.3 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-pfC/KMX+CHIYzmAz5H2yqArG+JWNADLvt0ir54lAQu4=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2cb757051da969160c6ef3ab3e36847a6add98b781b696a3d5ff9da0e5a8d3a9";
    filename = "immortalwrt-imagebuilder-24.10.3-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+Tkfm8D2mBtNdZ4naT2H+42tWRyxHlFNFl6xzW23JBY=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "76db5becf28bf4aa1b4c2dbf9666c607";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-76db5becf28bf4aa1b4c2dbf9666c607";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.104-1-76db5becf28bf4aa1b4c2dbf9666c607" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm4908/generic/kmods/6.6.104-1-76db5becf28bf4aa1b4c2dbf9666c607/";
    sourceInfo = {
      hash = "sha256-xTsVPohWV970CBCKmnfMsUYfcRmuvMxguA/NzKG4Od0=";
      name = "kmods-bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm4908/generic/kmods/6.6.104-1-76db5becf28bf4aa1b4c2dbf9666c607/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-L9Ia1Eyvi0pF6GhOOLTELT/qCzoyLdMCfZYaSQEF3kI=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm4908/generic/packages/Packages";
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
