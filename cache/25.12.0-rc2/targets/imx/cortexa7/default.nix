# 25.12.0-rc2 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-HmlhQyU5r/NN60EAyYC9sy7b93gQLTfcJ8oKUMqBboY=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "cfc0d0bc6ce2bd2fcb55522d7b4adae58f42b1625d68f8f62da200f53b67da91";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ILL9/UPRhhX3ILpCITPBH6FyoLOT8EMmrrqKgXE04Mk=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "25a7c8e6924e4c8b55cf48b99748cd05";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-25a7c8e6924e4c8b55cf48b99748cd05";
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
  kmods."6.12.79-1-25a7c8e6924e4c8b55cf48b99748cd05" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa7/kmods/6.12.79-1-25a7c8e6924e4c8b55cf48b99748cd05/";
    sourceInfo = {
      hash = "sha256-JHlcdYM3rmJ+iLNbwHJvFFn1CPYOv/wgcVFf388mzw0=";
      name = "kmods-imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa7/kmods/6.12.79-1-25a7c8e6924e4c8b55cf48b99748cd05/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-ZOybWp43P3YWVPwoxZThEmTMQjBMxfZQvaObQJtVK7A=";
      name = "imx_cortexa7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa7/packages/packages.adb";
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
