# 23.05.2 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-l7TsWG4ypS8RjsBmrJWbSyvGjLm+3SWEgFPgSwIGaKI=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "22ac2d4cdcf05e8ba2c56ab13d10956580e17b7b7c8c5553b899bf75690dfcc5";
    filename = "immortalwrt-imagebuilder-23.05.2-imx-cortexa7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-VHufzWREnYL/lP+Na8rEgHwHAcSRsiPFVuhsrl7Q6cA=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa7/profiles.json";
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
      "luci-lib-fs"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-SmQqmHUpUY2TN91lamFy3Bq6SeyAUmMxFGIzeJ4EmTE=";
      name = "imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa7/packages/Packages";
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
