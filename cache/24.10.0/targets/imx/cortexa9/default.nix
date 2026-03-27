# 24.10.0 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-6+khRgNa6fTSHv46zvlDNxM+gB/1mQ37dCnmwtc769E=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "7edae7d890078b3c3156796de774b561e2387e9e769ac133c5844bfc65ff6c94";
    filename = "immortalwrt-imagebuilder-24.10.0-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HUWKH+8cNzZxgdDALK2IDE0CcCCZBKSIhN0ke03BNb4=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "fa1956f080f53e389c94655ddf62060b";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-fa1956f080f53e389c94655ddf62060b";
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
  kmods."6.6.73-1-fa1956f080f53e389c94655ddf62060b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa9/kmods/6.6.73-1-fa1956f080f53e389c94655ddf62060b/";
    sourceInfo = {
      hash = "sha256-3m9Bk3aa8AKJHshEh9gAAUS3Ndl0NcUA3FVcCkj3rRY=";
      name = "kmods-imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa9/kmods/6.6.73-1-fa1956f080f53e389c94655ddf62060b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-G1PKTecbXgq6l/+BLh/PH8O6mqf6ietSY5Qt3Yu7hZY=";
      name = "imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/imx/cortexa9/packages/Packages";
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
