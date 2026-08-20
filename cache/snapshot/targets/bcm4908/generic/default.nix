# snapshot bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-tNEYzl9r31UXbESWo68qK+ev9rU7jcDrfOkSYd+rSX8=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "40dc587bbe5441c0b16f6fe617af6343a4e277cac2ab0319924a37b8a36be7ea";
    filename = "immortalwrt-imagebuilder-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3rvx4DVn8BczhadOVg8Kk4ukqyVjDSxAT0fzZmCdug8=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "32606e64034826f5dca0ac3480405f35";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "bcm4908img"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "fdt-utils"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.103-1-32606e64034826f5dca0ac3480405f35";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.103-1-32606e64034826f5dca0ac3480405f35" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.12.103-1-32606e64034826f5dca0ac3480405f35/";
    sourceInfo = {
      hash = "sha256-aCn/UMrKPxi+sEEbymuHfGzKfAvCDld+d1xONHVmpz0=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/kmods/6.12.103-1-32606e64034826f5dca0ac3480405f35/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-nqehBSsenBdUtKXSk3B517mM/55QTOsh+j6JKwFuagE=";
      name = "bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm4908/generic/packages/packages.adb";
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
