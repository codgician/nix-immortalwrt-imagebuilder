# 23.05.3 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-510H1mjeQcVrV8RAJE8G52M2mSTfJnJ9y5YLxjhFb6A=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "7af5f599402c7f00530f67d4366a9d97648de04cfa6ebe041f3cac748dd7ea5b";
    filename = "immortalwrt-imagebuilder-23.05.3-imx-cortexa9.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-kt1lmuDB71DIf8fyrP2RsVylelKk0VJALCrn8WfBoJM=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "blkid"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-tgI+CBhsJk/eywdGca1fXlGL05jyZWhZTl7Wt1gz8o0=";
      name = "imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/imx/cortexa9/packages/Packages";
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
