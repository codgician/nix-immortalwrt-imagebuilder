# 25.12.0-rc2 omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-eFUvhN1bVLUWBx9aDmcLZBI1NqizyPVehZvhqsd4bTQ=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "c17f8428a32ab19f7954afd20ac2d4829a40e92ebf6faf3c4e92637bf944b052";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZIFJ9Ak4skuXFd+2toSjLiDeTkPYMg/v27ccTUWim90=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "0ceacbb2711d6bade91dccf301bd6af3";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.79-1-0ceacbb2711d6bade91dccf301bd6af3";
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
  kmods."6.12.79-1-0ceacbb2711d6bade91dccf301bd6af3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/omap/generic/kmods/6.12.79-1-0ceacbb2711d6bade91dccf301bd6af3/";
    sourceInfo = {
      hash = "sha256-vYXcEDSp7nDgHVQxXGPqPQC9IgZtv4I/2J2Q1fUHG8A=";
      name = "kmods-omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/omap/generic/kmods/6.12.79-1-0ceacbb2711d6bade91dccf301bd6af3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-VWKvPotVcqodsIU3Llh+18zfUQNSuGR7Dqn0r4BmZpg=";
      name = "omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/omap/generic/packages/packages.adb";
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
