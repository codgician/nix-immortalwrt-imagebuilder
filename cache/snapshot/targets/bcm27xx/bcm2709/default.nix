# snapshot bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-OZVwJXQCi5hsBvrHzpujtHful7EZK3Yg26w9Wdc38Es=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "d35b08301ec7dcf1725c3972ffdb0c2a6ae9934b155c8076c315eadf2fb9c419";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RW4Xb6RzMaJtFURnYYB4wp6thVn4asoZ6fsI9ad6ZjY=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "40cd25c9b04860a152a906b7d8bb3725";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-40cd25c9b04860a152a906b7d8bb3725";
    profiles = {
      rpi-2 = {
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
  kmods."6.12.103-1-40cd25c9b04860a152a906b7d8bb3725" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/kmods/6.12.103-1-40cd25c9b04860a152a906b7d8bb3725/";
    sourceInfo = {
      hash = "sha256-Mm9w1o4FMVtJSD6GhjLHDa3cx9W9y3dq6MGhK0dL5mg=";
      name = "kmods-bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2709/kmods/6.12.103-1-40cd25c9b04860a152a906b7d8bb3725/packages.adb";
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
      hash = "sha256-KH8wZrLeGHQpUJAuzcfKXPw6I3TSyCBQC1FQ9BWQ8+A=";
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
