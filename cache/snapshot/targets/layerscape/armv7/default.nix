# snapshot layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-2UvyTf3OBq0CAk4dps3BSjWtUhg9h9d1F49lZTOYpxU=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "8f409167f8689e3f42fb2177c2f9ba7ebd8b35ad122a5a7740499022844e3816";
    filename = "immortalwrt-imagebuilder-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4ztXMv5CH0vDVP4CsBksOuv+tv6YDGLD70KvX+zYG74=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "bc27427159623a38c8191e6ce90da525";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-bc27427159623a38c8191e6ce90da525";
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
  kmods."6.18.60-1-bc27427159623a38c8191e6ce90da525" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.18.60-1-bc27427159623a38c8191e6ce90da525/";
    sourceInfo = {
      hash = "sha256-kHzMYimhfbP+Zdj0Kd7XGAaka+Rh+grGZlIwKXHMSjI=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.18.60-1-bc27427159623a38c8191e6ce90da525/packages.adb";
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
      hash = "sha256-2YQtCgGs7tn3aVJFF2jfHrGx88FaKIs6jrNtPLi4AT0=";
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
