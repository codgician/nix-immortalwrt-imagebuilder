# snapshot omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-037gQDAmARUIUyrzkSVelImcoGB/Jwhjz5/pfEg9ztI=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9f4fa360c2fef89e3caeda1c32582f37a66eb575e4f7e8180f2e6e314e5422f9";
    filename = "immortalwrt-imagebuilder-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Jcorms11xmotVuAL6YAkk84HtvTL++ipBvEJ2d2PDI0=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "a58f598c5da53bc295a7620971935f58";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-a58f598c5da53bc295a7620971935f58";
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
  kmods."6.12.77-1-a58f598c5da53bc295a7620971935f58" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/kmods/6.12.77-1-a58f598c5da53bc295a7620971935f58/";
    sourceInfo = {
      hash = "sha256-tKjFTrI+xa62FT8XSbLf2IUVv6X2QDJGBMftHkhGSkM=";
      name = "kmods-omap_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/omap/generic/kmods/6.12.77-1-a58f598c5da53bc295a7620971935f58/packages.adb";
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
      hash = "sha256-k6Kh9ptieLLhZIGHipsopORy3o7UMD0uhsaGy0KYLZo=";
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
