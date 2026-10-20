# snapshot imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-Aa2+rn7pdUNuVdkRmyx7E3qRJOTM3B6fWeWIoJ3YLVk=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "b8f0bb05dffe569154eb144cf3a729eed7deabdd75b929aa19dfc6f22018b1dd";
    filename = "immortalwrt-imagebuilder-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ghIseP6DoyYEmdfYcPAK3/KG6guv1icqLFmQHRdQdCU=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "9d691a019b71212ec35abbdeb72c43ee";
      version = "6.18.55";
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
    kmods_target = "6.18.55-1-9d691a019b71212ec35abbdeb72c43ee";
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
  kmods."6.18.55-1-9d691a019b71212ec35abbdeb72c43ee" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.18.55-1-9d691a019b71212ec35abbdeb72c43ee/";
    sourceInfo = {
      hash = "sha256-+6r1EsOpnERufI6gmk45UWf8NvJAIln1b/MaexAmb0c=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.18.55-1-9d691a019b71212ec35abbdeb72c43ee/packages.adb";
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
      hash = "sha256-rMOWEscdau4bhs+fxBMeJ8sQb+DCbQ3uE27yzbk3eSc=";
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
