# 21.02.7 omap/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-denU0e2jd7WMN1IbJLPFGusFXp5wP1uSVzqF/AJa9+g=";
    name = "omap_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/omap/generic/sha256sums";
  };
  imagebuilder = null;
  profiles.sourceInfo = {
    hash = "sha256-xYdxsdGsJJLGROqjru7B1h3DrzuaHSHHPDf3b9OGNKk=";
    name = "omap_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
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
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      ti_am335x-bone-black = {
        device_packages = [ ];
      };
      ti_am335x-evm = {
        device_packages = [ ];
      };
      ti_omap3-beagle = {
        device_packages = [
          "kmod-usb-net-asix"
          "kmod-usb-net-asix-ax88179"
          "kmod-usb-net-hso"
          "kmod-usb-net-kaweth"
          "kmod-usb-net-pegasus"
          "kmod-usb-net-mcs7830"
          "kmod-usb-net-smsc95xx"
          "kmod-usb-net-dm9601-ether"
        ];
      };
      ti_omap4-panda = {
        device_packages = [ "kmod-usb-net-smsc95xx" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-gH9ygjIa8ag98wBHrJjjCI4yuZVr3pO1lQAVnxqGUMU=";
      name = "omap_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/omap/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a8_vfpv3";
  feeds = import ./../../../packages/arm_cortex-a8_vfpv3.nix;
}
