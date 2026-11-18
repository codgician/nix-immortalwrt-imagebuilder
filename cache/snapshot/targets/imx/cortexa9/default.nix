# snapshot imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-4Xjh2rRDvfX6tc1nwhZJlsfyDa8JQzluGsS04lFymas=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "627d3e16790927dd5ae6c4ddc69c9397c729783aca429127eb4ba17c165cddf2";
    filename = "immortalwrt-imagebuilder-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+YpZoC6BMnBiB3tKqCSOFiKNLmv5Aj0dZzQ33o0VTY4=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "80a3f10cd42da40de461e17ebdd12a2e";
      version = "6.18.60";
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
      "video-support"
    ];
    kmods_target = "6.18.60-1-80a3f10cd42da40de461e17ebdd12a2e";
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
          "audio-support"
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
          "audio-support"
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
  kmods."6.18.60-1-80a3f10cd42da40de461e17ebdd12a2e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.18.60-1-80a3f10cd42da40de461e17ebdd12a2e/";
    sourceInfo = {
      hash = "sha256-en4vtg99cJN/nHVxj4sbqSuII1v5m8ExqzS4s+UJMgE=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.18.60-1-80a3f10cd42da40de461e17ebdd12a2e/packages.adb";
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
      hash = "sha256-iD3oaEb0kLk1SDHnUaGL2+w5cGtyDQ1FdK73WeZvirM=";
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
