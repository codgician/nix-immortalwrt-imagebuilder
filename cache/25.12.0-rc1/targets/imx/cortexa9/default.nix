# 25.12.0-rc1 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-baqsZQFLl7PdfiHrwrS4ZtP2jVBxqywwHDqRl+iuJHI=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "8a5d08dc1d4c03449f56020869dcb978d66a5fb1169e8698544f4b4414e6288d";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-h8DMmcFCNa686A2fgauX0XhG4jbY6gqh7lBxD0le1FA=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "801083d87ba687323bca6e3f8c07b07b";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-801083d87ba687323bca6e3f8c07b07b";
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
  kmods."6.12.74-1-801083d87ba687323bca6e3f8c07b07b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa9/kmods/6.12.74-1-801083d87ba687323bca6e3f8c07b07b/";
    sourceInfo = {
      hash = "sha256-ai6Kavke7NBZYklzmcq8h+kPRS6OKmVwIwGlLI26mEc=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa9/kmods/6.12.74-1-801083d87ba687323bca6e3f8c07b07b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-FPgjU5kYCdbpxjOifaHF8/1gA3rm5hLNElqHtbiBwBc=";
      name = "imx_cortexa9-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/imx/cortexa9/packages/packages.adb";
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
