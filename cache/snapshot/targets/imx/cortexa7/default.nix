# snapshot imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-K61Vx3UjxQfMInss7cTEufUBvelmrGsSIj1OWghBGSA=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "546c06112d92e176e278ccfc5ac00ec35a40fea936b962b8a5ddc2bcc8b51e9c";
    filename = "immortalwrt-imagebuilder-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-o7pDrZI4UgMA1mMV58Fa1EY5CQvW/gfqgLpI82DQwNc=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "160f3cc3efe38b8f74dafb0cfe3ba39e";
      version = "6.12.89";
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
    kmods_target = "6.12.89-1-160f3cc3efe38b8f74dafb0cfe3ba39e";
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
  kmods."6.12.89-1-160f3cc3efe38b8f74dafb0cfe3ba39e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.12.89-1-160f3cc3efe38b8f74dafb0cfe3ba39e/";
    sourceInfo = {
      hash = "sha256-GfHxlaE8kqLRHvfqQe4r/ryI+jndP2NK+HYYFOsZ1hQ=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.12.89-1-160f3cc3efe38b8f74dafb0cfe3ba39e/packages.adb";
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
      hash = "sha256-SS0EV6apBaOjrx0yWTABpDZTTamNn7esQ6ngwvhmSII=";
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
