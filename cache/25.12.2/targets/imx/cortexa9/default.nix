# 25.12.2 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-LQ1XXZc7F3Nctt9IVhE18Uesj+ABFsRMvKEh5qfYUrs=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "0ae477e67dfc78d9cd9e71e1dfd329ac6e7dd2b4a549bbdd471043d316b8f200";
    filename = "immortalwrt-imagebuilder-25.12.2-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nYjJGZcD4D8bW6YDZM31CFHQ1L+gDAkEHN5hCdQuTZk=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "c9e36383fe0b0905a68e755448ae56d8";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-c9e36383fe0b0905a68e755448ae56d8";
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
      wandboard_dual = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.103-1-c9e36383fe0b0905a68e755448ae56d8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa9/kmods/6.12.103-1-c9e36383fe0b0905a68e755448ae56d8/";
    sourceInfo = {
      hash = "sha256-ENtD8YB2a5WrikO90Y0CgIzF2aanbaiH/wssLhV35Ls=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa9/kmods/6.12.103-1-c9e36383fe0b0905a68e755448ae56d8/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-FZFTuFsmT0hhOxKYUmb6ZJuf5MPXfUpWrndtIbnpmj4=";
      name = "imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/imx/cortexa9/packages/packages.adb";
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
