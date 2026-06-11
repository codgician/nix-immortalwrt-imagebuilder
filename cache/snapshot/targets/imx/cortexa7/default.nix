# snapshot imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-4cfllaX9hROyXD0aDcxZe4bAmfB/hZFb0CTWkIWQwqQ=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "8e06786d7b4c6c311cd3d28c88e308d87762a0118474412f58688eebc500ce69";
    filename = "immortalwrt-imagebuilder-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Sx6k9EeflMN3d/EclqgT4XV5ppq+0P5IPMJgm3a9zFU=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "c44812d0a2f378e62d047c535ae8beed";
      version = "6.12.92";
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
    kmods_target = "6.12.92-1-c44812d0a2f378e62d047c535ae8beed";
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
  kmods."6.12.92-1-c44812d0a2f378e62d047c535ae8beed" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.12.92-1-c44812d0a2f378e62d047c535ae8beed/";
    sourceInfo = {
      hash = "sha256-h036jkMa+2qOQaQJ7x88wRCAgwM6nyz8wTPN1lV2Wqo=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa7/kmods/6.12.92-1-c44812d0a2f378e62d047c535ae8beed/packages.adb";
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
      hash = "sha256-yE+5e+XnQJAO06JG+Ok7WPmqbGE5zufjppWoQcNXvU8=";
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
