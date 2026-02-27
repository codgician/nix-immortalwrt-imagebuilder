# 21.02.7 bcm4908/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-1q39ttT05CDa6zSg4HFxPdiN7akClLC+ccEbJPM89cE=";
    name = "bcm4908_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "c9af7ca7e668fbbd978847876f07442b94cf500411196f735719d484f798cbb9";
    filename = "immortalwrt-imagebuilder-21.02.7-bcm4908-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-0upJDpd3yJrryvNzhKup7/fb6K0JXLe7dMFIJ2Ww2QY=";
    name = "bcm4908_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "bcm4908img"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdt-utils"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-Tgw0fnyzsnMkVIgprcq//3YydjS6/Y5BKJmXn1aGJwQ=";
      name = "bcm4908_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm4908/generic/packages/Packages";
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
