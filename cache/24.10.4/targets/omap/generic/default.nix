# 24.10.4 omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-IeOTuUAeWTEjL6ZWjup7cy5ZHJve6O1I/Fn0NXZvcMo=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ad0969ccd4495f0d615f8fca8ca1c50c833a934344ed002c0a6ad5dd0653f528";
    filename = "immortalwrt-imagebuilder-24.10.4-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zFC94h6tP1ZPIb5kuDgKyyKRHDnMoOLitTBRFQSmx3w=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "7f0ac9f8033a2d7da8e2fda378b90f07";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-7f0ac9f8033a2d7da8e2fda378b90f07";
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
  kmods."6.6.110-1-7f0ac9f8033a2d7da8e2fda378b90f07" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/omap/generic/kmods/6.6.110-1-7f0ac9f8033a2d7da8e2fda378b90f07/";
    sourceInfo = {
      hash = "sha256-eWKDq+NnP1fOm4Ek8WMtbVGjePpeksUVnyejYsHF8L4=";
      name = "kmods-omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/omap/generic/kmods/6.6.110-1-7f0ac9f8033a2d7da8e2fda378b90f07/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-6zPn8M5mXgjPXufGdFVChtukh3jIplrEL0QqiHd1ZtE=";
      name = "omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/omap/generic/packages/Packages";
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
