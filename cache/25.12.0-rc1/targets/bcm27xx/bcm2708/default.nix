# 25.12.0-rc1 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-q2UoSKz7Px1zxS1X0lFVhkAoc931PPJyQHryW/6RUGc=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "c6d17fab83502f52a94841b386136a7dab737b3653d2c2adcd2a41d2f5e3de44";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Wpw+oImvDox3qp+EUa5F6MhRCBacZBSypWx11Bv1WUY=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "52977005c62a67ab1c58406010aa0cea";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-52977005c62a67ab1c58406010aa0cea";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
        ];
      };
    };
  };
  kmods."6.12.74-1-52977005c62a67ab1c58406010aa0cea" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2708/kmods/6.12.74-1-52977005c62a67ab1c58406010aa0cea/";
    sourceInfo = {
      hash = "sha256-yzZX7yPSZ7QEXMo2a7WzPbnbDIjFy7M5PyK5Il9GVEo=";
      name = "kmods-bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2708/kmods/6.12.74-1-52977005c62a67ab1c58406010aa0cea/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-r+kU7hrv+o3EQKyMxscNdXqO1Sgrz6407VniMBwe3oI=";
      name = "bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2708/packages/packages.adb";
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
