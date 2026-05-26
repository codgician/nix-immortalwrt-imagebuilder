# 25.12.0 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-YWQ0HdWAeBLDLoWisjhhCczfVnwcYSFUwLqW5jjt2gs=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "0f898f32191945b3115f3b845559a82b83bb8486cac2d49977ca6fde3781effd";
    filename = "immortalwrt-imagebuilder-25.12.0-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Zvl0FoYHPW9KtwDz7X9bEK83NCh7pCmimkhWLZXJ980=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "042e1125211fec1670fb0e7c48bf25e6";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-042e1125211fec1670fb0e7c48bf25e6";
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
  kmods."6.12.87-1-042e1125211fec1670fb0e7c48bf25e6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa9/kmods/6.12.87-1-042e1125211fec1670fb0e7c48bf25e6/";
    sourceInfo = {
      hash = "sha256-hHJI8dq5+LdIphT7IDaDA4j2Uvjdmx68NGy+6q6fl04=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa9/kmods/6.12.87-1-042e1125211fec1670fb0e7c48bf25e6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-yhAr0JmOCnWJVQA3VlQvEgbHkRgMFBRVX6oAGCFmQUU=";
      name = "imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/imx/cortexa9/packages/packages.adb";
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
