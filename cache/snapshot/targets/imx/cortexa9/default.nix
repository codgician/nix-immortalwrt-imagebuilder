# snapshot imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-ggKqqSi3BAhNEK6GhMDwxfLKoWGZgW1je7E8spVncY0=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "6aab5a28aa283221f3b7df2f0258aeac530735f296d9b4edb081013ec909a68e";
    filename = "immortalwrt-imagebuilder-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4Gs6fBDgnoFWItuRP9Ont2s/hSkK5PHRx9h38TegnOo=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "4528ff6c1bfdd36f322991b3c5854128";
      version = "6.12.108";
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
    kmods_target = "6.12.108-1-4528ff6c1bfdd36f322991b3c5854128";
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
  kmods."6.12.108-1-4528ff6c1bfdd36f322991b3c5854128" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.12.108-1-4528ff6c1bfdd36f322991b3c5854128/";
    sourceInfo = {
      hash = "sha256-XPMFsIU/+eI8cbuqXolQwj6tS3Xp3G9eR5+Qj92OTUM=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.12.108-1-4528ff6c1bfdd36f322991b3c5854128/packages.adb";
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
      hash = "sha256-zwT8xGiBeLZ001wUuKk/waqiHloquQdMLMYumqTbyFQ=";
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
