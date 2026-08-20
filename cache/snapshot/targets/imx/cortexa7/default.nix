# snapshot imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-je34piF9THrxtCFhkPSn0EzXweTLt3Ke/1VYwVSbJE8=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "bba393a75c73044dcd41a86bf6ec4e6dec65a49df86ffaa2d1de7d2959f6b5da";
    filename = "immortalwrt-imagebuilder-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NDMP3Q+bxE+RE2B3856u58KrvvH7apwFa2EtDKsa/Pc=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "84b9cc4cf836c868cb8a39b1175b3661";
      version = "6.12.103";
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
    ];
    kmods_target = "6.12.103-1-84b9cc4cf836c868cb8a39b1175b3661";
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
  kmods."6.12.103-1-84b9cc4cf836c868cb8a39b1175b3661" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.12.103-1-84b9cc4cf836c868cb8a39b1175b3661/";
    sourceInfo = {
      hash = "sha256-ZyM3OpqINxJQ8uLGTqnNJx7tjk6wgIhb8LULiLemdwY=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.12.103-1-84b9cc4cf836c868cb8a39b1175b3661/packages.adb";
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
      hash = "sha256-bl26Su2JlsNzAO8i29OpmvjYiB2o/lC7bMg9oNntias=";
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
