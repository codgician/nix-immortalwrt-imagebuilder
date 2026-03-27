# 24.10.1 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-d18jNGV5xtjRAZIbnPYRDn6rD8irXhB/qUvVDvdNs1c=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "347aba449add8a44b40977da2cf7f88b7564bbc9930e1283230c01d5dad11c68";
    filename = "immortalwrt-imagebuilder-24.10.1-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5clc5G/2wm5Pq8p8vkh7lTxLvYoXiiyJ1cpnpuSIgP8=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "43d55ee9f03745beb0c17fd22980469a";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-43d55ee9f03745beb0c17fd22980469a";
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
  kmods."6.6.86-1-43d55ee9f03745beb0c17fd22980469a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa7/kmods/6.6.86-1-43d55ee9f03745beb0c17fd22980469a/";
    sourceInfo = {
      hash = "sha256-SGtDKk69QGo8GWIakpFHAWqhrwlpM8mRG6Pb8QTThZI=";
      name = "kmods-imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa7/kmods/6.6.86-1-43d55ee9f03745beb0c17fd22980469a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-oZz/KzTaERwUKKUWHYQgxdm25TvPlHlg36pmVoRuOKE=";
      name = "imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa7/packages/Packages";
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
