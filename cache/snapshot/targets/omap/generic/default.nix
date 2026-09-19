# snapshot omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-n7f1lACKDjajJj2DHZob4XZeaOEGjtReNCvIzrK4/+U=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "30ec0b750facb7553fd226c79429aa7cc6d401c7ccf5a78893e0cdc9e30c99f7";
    filename = "immortalwrt-imagebuilder-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Gilytjupy1i63fVLPfgTrEdXFyVd+8KRlZBY41IWUH8=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "c70ecf7151cfbe0b53821cadadbfdc1a";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-c70ecf7151cfbe0b53821cadadbfdc1a";
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
  kmods."6.18.52-1-c70ecf7151cfbe0b53821cadadbfdc1a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/kmods/6.18.52-1-c70ecf7151cfbe0b53821cadadbfdc1a/";
    sourceInfo = {
      hash = "sha256-F8M8S5QnXl/UJ3HTHL0wrXPWl6PinaSUPf1iX/H9f9Y=";
      name = "kmods-omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/kmods/6.18.52-1-c70ecf7151cfbe0b53821cadadbfdc1a/packages.adb";
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
      hash = "sha256-QlBh9inAb6FuJCnOFKD26/GVRXods5JClnStg71/Ssw=";
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
