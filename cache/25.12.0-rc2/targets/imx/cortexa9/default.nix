# 25.12.0-rc2 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-13RotvaALMnZ2gq7NODsinmd+cM6y0tSWaD4u4LKJus=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "ca3f4e3bd98280d70dc8a452514ceb0d14f942a9990808f039443c773f43c1e3";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-J0C8raaDoUC1nP1LaE96pXMpOdcxnAr/dTigWO6BkcU=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "e8ad830e45d03984169ca878b0d62927";
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
    kmods_target = "6.12.79-1-e8ad830e45d03984169ca878b0d62927";
    profiles = {
      solidrun_cubox-i = {
        device_packages = [
          "kmod-drm-imx"
          "kmod-drm-imx-hdmi"
          "kmod-usb-hid"
        ];
      };
      toradex_apalis = {
        device_packages = [
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-raw"
          "kmod-leds-gpio"
          "kmod-gpio-button-hotplug"
          "kmod-pps-gpio"
          "kmod-rtc-ds1307"
        ];
      };
      ventana = {
        device_packages = [
          "kmod-sky2"
          "kmod-sound-core"
          "kmod-sound-soc-imx"
          "kmod-sound-soc-imx-sgtl5000"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-raw"
          "kmod-hwmon-gsc"
          "kmod-leds-gpio"
          "kmod-pps-gpio"
          "kobs-ng"
          "kmod-gpio-button-hotplug"
        ];
      };
    };
  };
  kmods."6.12.79-1-e8ad830e45d03984169ca878b0d62927" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa9/kmods/6.12.79-1-e8ad830e45d03984169ca878b0d62927/";
    sourceInfo = {
      hash = "sha256-gZgFMoFVKnMY3l89IWrxKQ7/vUvdl9eHu8apWjeMtJ0=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa9/kmods/6.12.79-1-e8ad830e45d03984169ca878b0d62927/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-Kj0SoFK29qh0O3X6bpgw+WdC+XBCnAOwmS9LLI+QzY4=";
      name = "imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa9/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_neon";
  feeds = import ./../../../packages/arm_cortex-a9_neon.nix;
}
