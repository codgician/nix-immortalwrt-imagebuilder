# 25.12.0 layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-NckaMggidQUb/bVgBp4B2sXWB8t1SbaF0KgEWBIoRUY=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "445f8ec85b91dee290ba3fd9e5920f66d6e579c278872742518cca636ac8eeb0";
    filename = "immortalwrt-imagebuilder-25.12.0-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8xh02rODLG4JSi3o9PXyeOC+RPX+1EeREdyEs70S1sw=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f46336a317c8da64086a84b55a043e1b";
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
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
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
    kmods_target = "6.12.87-1-f46336a317c8da64086a84b55a043e1b";
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
  kmods."6.12.87-1-f46336a317c8da64086a84b55a043e1b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/layerscape/armv7/kmods/6.12.87-1-f46336a317c8da64086a84b55a043e1b/";
    sourceInfo = {
      hash = "sha256-asld9jfIDJUUQlxdEGq970EXyV0BvyrTmL74fFAZhJo=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/layerscape/armv7/kmods/6.12.87-1-f46336a317c8da64086a84b55a043e1b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/layerscape/armv7/packages/";
    sourceInfo = {
      hash = "sha256-QuZ7ug2RCkQKoS+Mf4t3n569NxY/DlWa2T9oFKS6JXg=";
      name = "layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/layerscape/armv7/packages/packages.adb";
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
