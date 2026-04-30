# snapshot omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-Bm3fWo62/xMbdP4ihqfkBXsbx6Jk6H5RM/xQJcbF1Gw=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "86776c79471a86c77f5a29fb16c106d59f31edeb87eb5e8539bbf4a46e7ea04a";
    filename = "immortalwrt-imagebuilder-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-1N+5J5yyqYEF6QNIMKn+O2F0kmY6Y7ZMfjMGLQBO3hk=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "50f8e43ebda97eaffc956c167b9b904b";
      version = "6.12.80";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.80-1-50f8e43ebda97eaffc956c167b9b904b";
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
  kmods."6.12.80-1-50f8e43ebda97eaffc956c167b9b904b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/kmods/6.12.80-1-50f8e43ebda97eaffc956c167b9b904b/";
    sourceInfo = {
      hash = "sha256-dXBBT5sEOvsQpFNJvQGSHVj2UggKXfajF82uczf0pXY=";
      name = "kmods-omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/kmods/6.12.80-1-50f8e43ebda97eaffc956c167b9b904b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-EqKri/4kCDz7dxWc4ebscLEfgOOk3Nj0V+78dM3/le8=";
      name = "omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/packages/packages.adb";
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
