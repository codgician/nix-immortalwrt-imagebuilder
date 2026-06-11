# snapshot imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-ne0MGJHy7pHHWm8q/xZXLL78X3jfTRG30dCFXAhAAKI=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "fbd9d7b74a4b6f46c5afdcf2802ff37127ddb506f439a06939476c9987d07fff";
    filename = "immortalwrt-imagebuilder-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZOxMNM13+svFqX99axWd4VcYM0tNjcbAGQpKpwZ1Vr8=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "468e1aabb383623cd93b9cd6a658fec6";
      version = "6.12.92";
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
    kmods_target = "6.12.92-1-468e1aabb383623cd93b9cd6a658fec6";
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
  kmods."6.12.92-1-468e1aabb383623cd93b9cd6a658fec6" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.12.92-1-468e1aabb383623cd93b9cd6a658fec6/";
    sourceInfo = {
      hash = "sha256-hpjJB/yOrUD2Vf/wsVkCGIv1qwlIRqiAppFB0Qa2GSc=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/imx/cortexa9/kmods/6.12.92-1-468e1aabb383623cd93b9cd6a658fec6/packages.adb";
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
      hash = "sha256-ApQZWD49idjWTRXfpp58W7dC8mV1/YXUlSfs6uW6pcY=";
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
