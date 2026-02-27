# snapshot bcm4908/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-C1AUXvjfqUvGf2J7kDuS+W2ZylF5AcB+VuM0szfBBgo=";
    name = "bcm4908_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ae4e8b590735a9c6e35fa2dfae9b7da5d3432f693ce6cdba0fe32dcd202d9143";
    filename = "immortalwrt-imagebuilder-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dJSrh4OOiyAtl25jXbO/PWEf9GZ6JXQb+L5oZshDz1I=";
    name = "bcm4908_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "5c9ce3e9c690769f1e30888d14c79714";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-5c9ce3e9c690769f1e30888d14c79714";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.67-1-5c9ce3e9c690769f1e30888d14c79714" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm4908/generic/kmods/6.12.67-1-5c9ce3e9c690769f1e30888d14c79714/";
    sourceInfo = {
      hash = "sha256-myN5NW1gGXHLes3enIITaLEeSVXuX5mqAhvSz4f08S0=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm4908/generic/kmods/6.12.67-1-5c9ce3e9c690769f1e30888d14c79714/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-yKmK7FEgCLgLXaHByKPNku6pTgZiHAmHnrLH3nmC8pY=";
      name = "bcm4908_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm4908/generic/packages/packages.adb";
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
