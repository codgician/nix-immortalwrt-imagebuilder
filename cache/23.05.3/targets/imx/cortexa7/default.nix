# 23.05.3 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-Lf2yZy38Dp0JBqLOjDM2g3BtA4KSiesyO8a9WzoZKNg=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "94547bc9ffb32a53f8c1379953b0cd092802d3cc16bc852a62b7b983483a1fdc";
    filename = "immortalwrt-imagebuilder-23.05.3-imx-cortexa7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-srX/olAeRxPsBTVyMW8PqKMxp7s4b2QbBH/ptIQpkVw=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "blkid"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-wui89UlbblfEFiMiHBKQhttB7syuEfA+Ykc9iPTn5xg=";
      name = "imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa7/packages/Packages";
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
