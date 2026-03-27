# 24.10.1 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-+cEfLxL9thwxNB6l7zEBmx4yc3NN386wlt5Y7JM7wG0=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "6e0008225ba9df2a21018777d84acb0cecd6ae1940ab0ed06de055632e745460";
    filename = "immortalwrt-imagebuilder-24.10.1-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-11zKMbBeP7Uz0xudQX4wEXdsVywhqgDub3yf8x+dZUU=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "3a0384cb0b940df90a230f1854637261";
      version = "6.6.86";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-3a0384cb0b940df90a230f1854637261";
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
  kmods."6.6.86-1-3a0384cb0b940df90a230f1854637261" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa9/kmods/6.6.86-1-3a0384cb0b940df90a230f1854637261/";
    sourceInfo = {
      hash = "sha256-zY23sT6+R78qxm4UD3Ro1D4hI0SBAawoRbVryKczkFU=";
      name = "kmods-imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa9/kmods/6.6.86-1-3a0384cb0b940df90a230f1854637261/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-3W0jyoi91RDZ6miiamADJzmg6qTtLGH2bfA4+62ExjI=";
      name = "imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/imx/cortexa9/packages/Packages";
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
