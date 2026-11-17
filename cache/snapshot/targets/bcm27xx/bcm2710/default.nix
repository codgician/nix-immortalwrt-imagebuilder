# snapshot bcm27xx/bcm2710
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-MS+1s6VKVIl13cEKu30iMI6KsE8cntu8rXQXIobotwo=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "8577f526b31a8bffa53a120d98fa1692b4cd4aa598f2faf297ba8b4a4043ae11";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2710.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sWBefb6A6Ni45nPzVs1dLontfA1ICUYvwNSUuj1OuRs=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "c81d2d33465603dabbdc99a217147d06";
      version = "6.18.60";
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
      "video-support"
    ];
    kmods_target = "6.18.60-1-c81d2d33465603dabbdc99a217147d06";
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
  kmods."6.18.60-1-c81d2d33465603dabbdc99a217147d06" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/kmods/6.18.60-1-c81d2d33465603dabbdc99a217147d06/";
    sourceInfo = {
      hash = "sha256-8Aos95cdciK2hpxn6RjeQbWA725Edd0iYKBxe/I3rdA=";
      name = "kmods-bcm27xx_bcm2710-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2710/kmods/6.18.60-1-c81d2d33465603dabbdc99a217147d06/packages.adb";
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
      hash = "sha256-kwCJuEsJzHVt1edMdPFXItMzbsccPgF82Om4+E6N1rQ=";
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
