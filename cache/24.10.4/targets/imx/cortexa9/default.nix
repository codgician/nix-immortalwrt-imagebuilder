# 24.10.4 imx/cortexa9
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-PnKYgNl3nKv+lVLgXAx4tS2W75WwuMZWm26vMu34UYU=";
    name = "imx_cortexa9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "5e29f4116897245f808a77b228f462e17127e9c167cc074476e64494dcba703e";
    filename = "immortalwrt-imagebuilder-24.10.4-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-N0oY/FroYhDFxU5UtXy8sqCbjka2O2UXItBpDjF2fOw=";
    name = "imx_cortexa9-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "9db26f24dec3027800f3dc9ed1759742";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-9db26f24dec3027800f3dc9ed1759742";
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
  kmods."6.6.110-1-9db26f24dec3027800f3dc9ed1759742" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa9/kmods/6.6.110-1-9db26f24dec3027800f3dc9ed1759742/";
    sourceInfo = {
      hash = "sha256-ZTO1kH3EgQFLJn2MFMrr9u3MGOvUebqHMWCMyQqitRc=";
      name = "kmods-imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa9/kmods/6.6.110-1-9db26f24dec3027800f3dc9ed1759742/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-niCyH3GV5JPAuv9B7cdLeZ8zVz2nPSQO0DhDLQuK9xY=";
      name = "imx_cortexa9-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/imx/cortexa9/packages/Packages";
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
