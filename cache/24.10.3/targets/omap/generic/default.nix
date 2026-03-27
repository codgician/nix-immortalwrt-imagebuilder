# 24.10.3 omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-ZWk8yAhfwOwDj3Nc+ot2vj9ryluqqNTHrpgOBrsUcKo=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e1b627c84b639a8694c445ad735918aed258b2173a08075b425bed499530b248";
    filename = "immortalwrt-imagebuilder-24.10.3-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xyN7gAhQSqcRJwphpLvP5ZJ7QgZ/TrURIchLo5MuE4s=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "3bc2bceff7662098e0616b563dd7d98d";
      version = "6.6.104";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.104-1-3bc2bceff7662098e0616b563dd7d98d";
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
  kmods."6.6.104-1-3bc2bceff7662098e0616b563dd7d98d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/omap/generic/kmods/6.6.104-1-3bc2bceff7662098e0616b563dd7d98d/";
    sourceInfo = {
      hash = "sha256-10YXbQJP0SGFwb0pSvEqyuTejrUZzeNEVRVcPiXoLI8=";
      name = "kmods-omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/omap/generic/kmods/6.6.104-1-3bc2bceff7662098e0616b563dd7d98d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-x4392AYx1WAvt8O9zbrBg+fwlx5t4DhjprGGjfYglFM=";
      name = "omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/omap/generic/packages/Packages";
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
