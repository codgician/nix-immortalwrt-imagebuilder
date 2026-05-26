# 25.12.0 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-PRm+9/VvPxclUN3P/UfrtLsMHRgcOuYOxDNTElPqMvs=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "7845f90bbab032abfcddad0202616f7ceebca96ba9890e9dd09c47cb1460d887";
    filename = "immortalwrt-imagebuilder-25.12.0-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bVkl4qG5NF9XR1c4xm7gI0tOrHRQgVOhcr432huwiQg=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "a94af1f4c4e38e7b0f9d5c9fc3884762";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-a94af1f4c4e38e7b0f9d5c9fc3884762";
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
  kmods."6.12.87-1-a94af1f4c4e38e7b0f9d5c9fc3884762" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa7/kmods/6.12.87-1-a94af1f4c4e38e7b0f9d5c9fc3884762/";
    sourceInfo = {
      hash = "sha256-aRPghTImvm4Rh1lSU1AUd+akNNCNfRcnA+ySO4frOBM=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa7/kmods/6.12.87-1-a94af1f4c4e38e7b0f9d5c9fc3884762/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-yzy8gPlJDcV3h9pGcAyuULBMPOBVSOtz2yrS3nvdyQs=";
      name = "imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa7/packages/packages.adb";
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
