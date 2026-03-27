# 23.05.2 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-AvxxvoVy3RvFCARjM3bN7F0Qx5cmHnr8RUSfiGmsYwA=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "2fb9885f2122238b98b2baf16db3b1270664ce1788c8441b209f4849b126c294";
    filename = "immortalwrt-imagebuilder-23.05.2-imx-cortexa9.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-xOeYkx7bBeG5LczRHnrv9s/JgYcLlQdTP3UsN7u9kC0=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa9/profiles.json";
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
      "luci-lib-fs"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-9MbTvJZ6h/dAwgToIa4HLnplhuYk9mvbZWF/DGh/yCU=";
      name = "imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/imx/cortexa9/packages/Packages";
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
