# snapshot omap/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-pNDZqbCVUgax1bBbR3UaWDgK+CM6IyUoCTPyg0Uok1g=";
    name = "omap_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "c29b64e32e6cef0441565efeaf815bee5859d84acbed2137713f8d3762ad6d33";
    filename = "immortalwrt-imagebuilder-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ul2Z2knBAnp9iRJ6Fkb756E5yjHIJVoGvnMER9qUcCQ=";
    name = "omap_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "ca17a2ba4df948b01686f0587da5f2e4";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-ca17a2ba4df948b01686f0587da5f2e4";
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
  kmods."6.12.67-1-ca17a2ba4df948b01686f0587da5f2e4" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/omap/generic/kmods/6.12.67-1-ca17a2ba4df948b01686f0587da5f2e4/";
    sourceInfo = {
      hash = "sha256-56NHG/dznBZpi3IXTq/AI02jknN62etfkF3X1277RNg=";
      name = "kmods-omap_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/omap/generic/kmods/6.12.67-1-ca17a2ba4df948b01686f0587da5f2e4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-nM2V45a0g/LvP08C5zROOkCDzf06UaLwGNdwL84ouTY=";
      name = "omap_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/omap/generic/packages/packages.adb";
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
