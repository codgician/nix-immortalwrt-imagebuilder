# snapshot imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-g3JnXcdvLS5P4Z1oan7+FncaD6U+UEV736yGy/E/R50=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "c3bd1cfb2395f7902f35fbae85636ee92cdbd16c29e11e9714b19c16d1a5a666";
    filename = "immortalwrt-imagebuilder-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-elvIuro+XiI7Pxc2XdSh0JcRR0SRmeT/YraugxZtiWA=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "4af9ce33595ec4b44fd3ffa5f1d48b74";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-4af9ce33595ec4b44fd3ffa5f1d48b74";
    profiles = {
      gateworks_ventana = {
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
      gateworks_ventana-large = {
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
      wandboard_dual = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.94-1-4af9ce33595ec4b44fd3ffa5f1d48b74" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.12.94-1-4af9ce33595ec4b44fd3ffa5f1d48b74/";
    sourceInfo = {
      hash = "sha256-mDMDN0qTYE3Ian0qZCYNGI3zVZScq9RbD7N0FJOtmhw=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.12.94-1-4af9ce33595ec4b44fd3ffa5f1d48b74/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-R4puveTOaurubb7Rf066AD0Se08f9dFQZMpxYQs5iOQ=";
      name = "imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/packages/packages.adb";
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
