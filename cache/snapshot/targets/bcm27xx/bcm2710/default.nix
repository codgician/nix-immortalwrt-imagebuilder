# snapshot bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-z+OEC6pwpN4WUL73jtPDCNHaeB0pJp09MbRknmolCEs=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "d2a9ad7cb5a7cf2586696f252d801ac97d7c3e20b9cff6be19ce555ab80ee89e";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-L+ssN59sbQBTJom44buFhGoIHsJ/dTQMhmMEL9Uy2qE=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "bbdad4ea31cc1a31a3f04dd929dfd3b3";
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
    kmods_target = "6.18.52-1-bbdad4ea31cc1a31a3f04dd929dfd3b3";
    profiles = {
      rpi-3 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.18.52-1-bbdad4ea31cc1a31a3f04dd929dfd3b3" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/kmods/6.18.52-1-bbdad4ea31cc1a31a3f04dd929dfd3b3/";
    sourceInfo = {
      hash = "sha256-0yZZcW2iFCwPe6TdXcD3h8sAEXFeWbxeNhW/3rgiFD0=";
      name = "kmods-bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/kmods/6.18.52-1-bbdad4ea31cc1a31a3f04dd929dfd3b3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-BDDtMLgaP0fDmBCBOUXyD+09Oa1w2jrhajG+wsoeDGM=";
      name = "bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
