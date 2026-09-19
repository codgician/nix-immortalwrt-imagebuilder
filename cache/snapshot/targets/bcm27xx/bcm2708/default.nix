# snapshot bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-GQ6Rodjze+quBs+Ahqu5uxO6EQeUGDAoBErkh/ZgjR4=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "35652ba680868ecfe0d05e775ac175a7c180552668bd5fc3ab2031c4551dab08";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CFNEw8ET5rrxXCSXU1m9Ygg+1LYsSEKMzSBoIk13dP0=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "1941f37f9f050e881daa9be5d84bc6cb";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
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
    ];
    kmods_target = "6.18.52-1-1941f37f9f050e881daa9be5d84bc6cb";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.18.52-1-1941f37f9f050e881daa9be5d84bc6cb" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/kmods/6.18.52-1-1941f37f9f050e881daa9be5d84bc6cb/";
    sourceInfo = {
      hash = "sha256-OEZDSCjVtiFNWoZu+xw164ViNAjj3Wb3BOKB2rQ/FZY=";
      name = "kmods-bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/kmods/6.18.52-1-1941f37f9f050e881daa9be5d84bc6cb/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-0U2UWZ8BG+OCy32wQFaN4xzALf/CPAQGJSRZIymS8WM=";
      name = "bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm1176jzf-s_vfp";
  feeds = import ./../../../packages/arm_arm1176jzf-s_vfp.nix;
}
