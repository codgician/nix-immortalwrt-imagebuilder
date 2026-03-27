# 24.10.4 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-QKAQWVdkhJd+phq6ffvEB0rCvvQQGn1aq0betPWU9N4=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "b91abb6d49d7fbb04c8328436c51816a6056fc985f9c1bebf87d5c567d439a63";
    filename = "immortalwrt-imagebuilder-24.10.4-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Fm/oW401pYHMYWAApNZcwbHkrr0d9SKv62S+waC8TiU=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f4c52e3b0d00e6f6f5b59c362790683c";
      version = "6.6.110";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-f4c52e3b0d00e6f6f5b59c362790683c";
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
  kmods."6.6.110-1-f4c52e3b0d00e6f6f5b59c362790683c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa7/kmods/6.6.110-1-f4c52e3b0d00e6f6f5b59c362790683c/";
    sourceInfo = {
      hash = "sha256-yLHD09SJ/v0IDTv/cvy73AVVccsNmIsgYXxDq+YnXmI=";
      name = "kmods-imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa7/kmods/6.6.110-1-f4c52e3b0d00e6f6f5b59c362790683c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-g8gVfyIZFRxaG7beiSp9YjUVIF3kSRdbjwn+kbmrRoU=";
      name = "imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa7/packages/Packages";
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
