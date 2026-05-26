# 25.12.0 bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-Co9nncSTQUr80F/57ntI58iUYSg8jcXkdEkvB4To5IQ=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "c2b65ada8615dc0a76f53bc3dc8d0e62a4b077944cb84685b0f2a892c9de1463";
    filename = "immortalwrt-imagebuilder-25.12.0-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-N732PWGNV4C35fLEgJwGC5bSPeqy6lFsrya4L4IyQS4=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "5e69238f6422fde9e2bf3941e77a5d6a";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
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
      "luci"
      "luci-app-cpufreq"
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
    kmods_target = "6.12.87-1-5e69238f6422fde9e2bf3941e77a5d6a";
    profiles = {
      rpi-3 = {
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
  kmods."6.12.87-1-5e69238f6422fde9e2bf3941e77a5d6a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2710/kmods/6.12.87-1-5e69238f6422fde9e2bf3941e77a5d6a/";
    sourceInfo = {
      hash = "sha256-CalLvQFvCw6/598vpH/DqzRwrgQEV+y+r6/rEDsuhcc=";
      name = "kmods-bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2710/kmods/6.12.87-1-5e69238f6422fde9e2bf3941e77a5d6a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-cn5eDD/JFXwkrXn7iVwjlgjgnAz8I3PxpGFfZG80iIU=";
      name = "bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2710/packages/packages.adb";
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
