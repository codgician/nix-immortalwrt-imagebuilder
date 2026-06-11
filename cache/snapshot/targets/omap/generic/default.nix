# snapshot omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-oUOReZ+db5zCBJlmsEuts2WdAb4KRDqg5VfJTH8u1Cc=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "268adfc41c9cb89c5e62bc81a52d24d25eb6ff6fd8cf4ff68f27c455aeaf6989";
    filename = "immortalwrt-imagebuilder-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-fK1HsXWgXrSUa3Pe+q9BgRq2MZ7JuJwkoR4MffR6J34=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "3c2b8a46916c65203c4c2de49cbe5cf1";
      version = "6.18.34";
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
    kmods_target = "6.18.34-1-3c2b8a46916c65203c4c2de49cbe5cf1";
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
  kmods."6.18.34-1-3c2b8a46916c65203c4c2de49cbe5cf1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/kmods/6.18.34-1-3c2b8a46916c65203c4c2de49cbe5cf1/";
    sourceInfo = {
      hash = "sha256-zlwfKYgEdAi69PxrlaKSUgbFJgXD3sYyU4O7uN0Spmw=";
      name = "kmods-omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/kmods/6.18.34-1-3c2b8a46916c65203c4c2de49cbe5cf1/packages.adb";
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
      hash = "sha256-S5deTTaQQbefFoEvKnl+jxMZ9CcBXwGfKJtEhoi3+ZY=";
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
