# 24.10.6 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-PxhTsFtO4CWYgtV9ZaMKj+wDBsQUs0vpdg9QikUuIco=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "5af957c64ebd03b5984ec648e8cee733073131b2a2f5d33b8dc7984361815fa2";
    filename = "immortalwrt-imagebuilder-24.10.6-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5sbS0c0RZrlh1HzFSS/8ndx/H5+oNEMqO0QfCfz29uo=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "096a117d7b54779a8e961066ce4204c2";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-096a117d7b54779a8e961066ce4204c2";
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
  kmods."6.6.133-1-096a117d7b54779a8e961066ce4204c2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/imx/cortexa9/kmods/6.6.133-1-096a117d7b54779a8e961066ce4204c2/";
    sourceInfo = {
      hash = "sha256-HT8L2/EuxJuo17hCvYcHiiXS3ahMnk7QABA1eughjNQ=";
      name = "kmods-imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/imx/cortexa9/kmods/6.6.133-1-096a117d7b54779a8e961066ce4204c2/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-noC0WJCe4gj+4ruPQKDcBGplWwolIUBrc7/2MQ6Y0Mw=";
      name = "imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/imx/cortexa9/packages/Packages";
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
