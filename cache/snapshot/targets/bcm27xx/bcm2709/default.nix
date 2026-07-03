# snapshot bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-2tBfjovq2Dv6rchpWWAP4zAB/sGoR9FaHArUrgFw3uY=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "1882c69bc8e0252b168a40e1b986b44c4e02b121c2bf20aef0b6828c0958fb90";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bkF8MiTpzGuFMFFmNY1+Z7e9w3O4awkZc6QBcE98+qA=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8ed9957f383db444b7b63db00401a581";
      version = "6.12.94";
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
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
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
    kmods_target = "6.12.94-1-8ed9957f383db444b7b63db00401a581";
    profiles = {
      rpi-2 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
        ];
      };
    };
  };
  kmods."6.12.94-1-8ed9957f383db444b7b63db00401a581" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/kmods/6.12.94-1-8ed9957f383db444b7b63db00401a581/";
    sourceInfo = {
      hash = "sha256-KOEOPnCct3munIio0gkqNjqApTRcLzrc/ai2243FwTM=";
      name = "kmods-bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/kmods/6.12.94-1-8ed9957f383db444b7b63db00401a581/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-Oa9YccdKjnTb3vHBSCiu0uwVzfnXtnUYapufmAKkJ+A=";
      name = "bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/packages/packages.adb";
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
