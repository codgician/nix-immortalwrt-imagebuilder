# snapshot bcm27xx/bcm2709
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-n1kcygjmwp6Coq14YndQ+hYMTTgN16gHIewU3hc9lPA=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "7f91f3677b9b4bdc552af2330a47da7170ddb6c74ae50bc96e748a84f36b0351";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mppMh7pTDiymI2nYcKQp27ow1FtYV6Ud2E6Q60qgC2U=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "47f54f58f8906024afa7c0feef44f1a0";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-47f54f58f8906024afa7c0feef44f1a0";
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
  kmods."6.12.67-1-47f54f58f8906024afa7c0feef44f1a0" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2709/kmods/6.12.67-1-47f54f58f8906024afa7c0feef44f1a0/";
    sourceInfo = {
      hash = "sha256-0wmj0rleSR/vs26FK7iXcmRGUth43BbZrxFiN9monOQ=";
      name = "kmods-bcm27xx_bcm2709-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2709/kmods/6.12.67-1-47f54f58f8906024afa7c0feef44f1a0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-WU0w4WSPASKLt4Qg34PjEZcGpKAK6neqi+szPN0gEMQ=";
      name = "bcm27xx_bcm2709-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bcm27xx/bcm2709/packages/packages.adb";
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
