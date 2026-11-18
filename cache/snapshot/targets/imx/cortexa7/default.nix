# snapshot imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-X/HialhW/aXkbxjQfHeNwL8fFImeennmM/ehvqzU1k4=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "c100aa703b2531400e65254cec2cc0b24054f0fd1415516715d067031d3ad976";
    filename = "immortalwrt-imagebuilder-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-DZv9zj4QUCd9UuzrFNFb1JA/2hRehJlCmqULZn862s0=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f72a8ec203e69b694d05620cb1bf6258";
      version = "6.18.60";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "video-support"
    ];
    kmods_target = "6.18.60-1-f72a8ec203e69b694d05620cb1bf6258";
    profiles = {
      technexion_imx7d-pico-pi = {
        device_packages = [
          "kmod-sound-core"
          "kmod-sound-soc-imx"
          "kmod-sound-soc-imx-sgtl5000"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-raw"
          "kmod-leds-gpio"
          "kmod-input-touchscreen-edt-ft5x06"
          "kmod-usb-hid"
          "kmod-btsdio"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4339-sdio"
          "cypress-nvram-4339-sdio"
          "audio-support"
        ];
      };
    };
  };
  kmods."6.18.60-1-f72a8ec203e69b694d05620cb1bf6258" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.18.60-1-f72a8ec203e69b694d05620cb1bf6258/";
    sourceInfo = {
      hash = "sha256-NJ/nGkHQV2fMMwUk9H37V0m9lthsXE3861R7jNwzUQI=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.18.60-1-f72a8ec203e69b694d05620cb1bf6258/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-6ZOkAyWczeBVeqncNMZ8pJq7nMYD2+MgF5bh2QULy5o=";
      name = "imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/packages/packages.adb";
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
