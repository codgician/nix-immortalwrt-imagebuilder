# snapshot layerscape/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/";
  sha256sums = {
    hash = "sha256-UFzySUuehXxj7ZSyPHJt6oTnymcCYxRdP19IujlRo7w=";
    name = "layerscape_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "4a16243aac39fac6de043b9ab5d37e44351abe957d1c86480a18886419a6dd63";
    filename = "immortalwrt-imagebuilder-layerscape-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/UyuyJ/FwAK3+jwpEwKRzUpWE6YUkCoGkMFIiBvK7i0=";
    name = "layerscape_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "7efcda944310683a3ee8df338f5db912";
      version = "6.12.89";
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
    kmods_target = "6.12.89-1-7efcda944310683a3ee8df338f5db912";
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
  kmods."6.12.89-1-7efcda944310683a3ee8df338f5db912" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.12.89-1-7efcda944310683a3ee8df338f5db912/";
    sourceInfo = {
      hash = "sha256-yOvY5wFGKpskNqSooq1noVDKvXsrRARN/srwKDzIimA=";
      name = "kmods-layerscape_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/layerscape/armv7/kmods/6.12.89-1-7efcda944310683a3ee8df338f5db912/packages.adb";
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
      hash = "sha256-/hTreEu6OnMvNjPq7G6cD89UqNlaf3eFcB505OIELgw=";
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
