# 24.10.3 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-iVeFzcPxT4CrCPCFYH0IIgzFCkIrrgB9TMUehmw9VOw=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "e2c7f2a794b90c8c445bee4d5713daf8ace66222b9ff92c91f33f34613e92dcc";
    filename = "immortalwrt-imagebuilder-24.10.3-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Aiu4Yy38RHV82yaOWkHEzFGnxiDeF7+b+h3wger9hVA=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "33eb70d33c1544612ffbd375b1c83383";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-33eb70d33c1544612ffbd375b1c83383";
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
  kmods."6.6.104-1-33eb70d33c1544612ffbd375b1c83383" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa9/kmods/6.6.104-1-33eb70d33c1544612ffbd375b1c83383/";
    sourceInfo = {
      hash = "sha256-iYmSI/80mN8jfpwRkVvKVkulzHpWT8UokA6iI6KIVg0=";
      name = "kmods-imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa9/kmods/6.6.104-1-33eb70d33c1544612ffbd375b1c83383/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-DttUtJi6UfxbYBGZa4ju5isEh1NS3IL1bXcASfShKag=";
      name = "imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/imx/cortexa9/packages/Packages";
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
