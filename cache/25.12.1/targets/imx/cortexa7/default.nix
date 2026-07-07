# 25.12.1 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-EoXKXtvgjhB7bbEOcOgAQBVhZT+YbWH09s9TgYdApPI=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "f466891572dc169839956827e26ecc0bf1f195b1bf876c2eb73ad78794f66930";
    filename = "immortalwrt-imagebuilder-25.12.1-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5ZYjW3O/of+H8iNOMiwSXL5q+NEKfL2B3E6lLKVx3u4=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "e1b13f69351ec58f689987ca8c62e596";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    ];
    kmods_target = "6.12.94-1-e1b13f69351ec58f689987ca8c62e596";
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
        ];
      };
    };
  };
  kmods."6.12.94-1-e1b13f69351ec58f689987ca8c62e596" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/imx/cortexa7/kmods/6.12.94-1-e1b13f69351ec58f689987ca8c62e596/";
    sourceInfo = {
      hash = "sha256-NRITAYa9Unej/wb7b9p6tvrCYZLpNQAWHcX9fM1GYng=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/imx/cortexa7/kmods/6.12.94-1-e1b13f69351ec58f689987ca8c62e596/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-lIEzPpjApprORpDlgsJ2mial4u281tnkfPqXtpnpLTc=";
      name = "imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/imx/cortexa7/packages/packages.adb";
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
