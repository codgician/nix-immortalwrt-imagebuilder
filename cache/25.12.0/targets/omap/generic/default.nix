# 25.12.0 omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-SnLxLCSqJbefvXEsfKvi9VhnEvHHlXAQoVtiSJ3aHXY=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "dc1bf7c42994b0ee2096a427af7f0aa8f83ef1f18be7ac4aa07e505c7983213f";
    filename = "immortalwrt-imagebuilder-25.12.0-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+YSgF8/AiRNcuE0NsBxfeQQCx4hggKCj53jxBvOuFeE=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "bdd3c89d4315613c5d7a485c3d76ec19";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-bdd3c89d4315613c5d7a485c3d76ec19";
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
  kmods."6.12.87-1-bdd3c89d4315613c5d7a485c3d76ec19" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/omap/generic/kmods/6.12.87-1-bdd3c89d4315613c5d7a485c3d76ec19/";
    sourceInfo = {
      hash = "sha256-slHqtmOJxQ+0qaGQxX7BKNQhMZPgX4oK0Khm4Vh3AfA=";
      name = "kmods-omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/omap/generic/kmods/6.12.87-1-bdd3c89d4315613c5d7a485c3d76ec19/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-7g77VG+XbKdaZ8IHX+iEsOYfRPeaz4/l6Vvk2u40VQA=";
      name = "omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/omap/generic/packages/packages.adb";
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
