# snapshot layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-eo6LzcgA01YcfqPE8hmJrutWtyhZ2DP0t0mu4X1+Tp8=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "96e65a6ca9ba37a7963a2d32d34c0da47bbb0699be66cfc6ea681ab62e49bb26";
    filename = "immortalwrt-imagebuilder-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Mt200UZ1s6WRIlOT/3qUIfvIszbP93EXpzlWA+32RkE=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "64d4df7da681ecae87697453eea46f44";
      version = "6.12.85";
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
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
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
    kmods_target = "6.12.85-1-64d4df7da681ecae87697453eea46f44";
    profiles = {
      fsl_ls1021a-iot-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr = {
        device_packages = [ ];
      };
      fsl_ls1021a-twr-sdboot = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.85-1-64d4df7da681ecae87697453eea46f44" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.12.85-1-64d4df7da681ecae87697453eea46f44/";
    sourceInfo = {
      hash = "sha256-86fsyWJpyh0yJp+Q2sJLaXxPwgy7rLHB82spf2PX0X8=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.12.85-1-64d4df7da681ecae87697453eea46f44/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-OI1498qxaTN9VNKAx17EvA2jWwV/+iKhKt0JTmqgV0E=";
      name = "layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
