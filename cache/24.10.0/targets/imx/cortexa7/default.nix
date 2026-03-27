# 24.10.0 imx/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa7/";
  sha256sums = {
    hash = "sha256-bVJ9XseAbsXnxbuTtJQiG+ZjmEpzsOVAEiIWHvMc3rU=";
    name = "imx_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "1e28b6b797509bf8df1d0f3bdd75dcd0d25675d02cba9a58e713d7bb44bbf1f6";
    filename = "immortalwrt-imagebuilder-24.10.0-imx-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UqSW3VT1VIfpToxXutYbaoAmsGIE9kw/LefEjPtL+XE=";
    name = "imx_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "87e636f3167e487c3639904567b70d67";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-87e636f3167e487c3639904567b70d67";
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
  kmods."6.6.73-1-87e636f3167e487c3639904567b70d67" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa7/kmods/6.6.73-1-87e636f3167e487c3639904567b70d67/";
    sourceInfo = {
      hash = "sha256-7gVFNwaRg0pR8d0latrXmq6o2VHd+dIxowOWhvWZ0HM=";
      name = "kmods-imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa7/kmods/6.6.73-1-87e636f3167e487c3639904567b70d67/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-7DC/j06JDKq1ZGAm1DjfE+ncyV2CjjwnC0HmF3L4sTM=";
      name = "imx_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa7/packages/Packages";
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
