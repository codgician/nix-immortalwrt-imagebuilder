# 23.05.7 imx/cortexa9
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-lQ3QXEeaHI3TsRf3aeYqoEG9Vra4/aFZPZmH3/TKHlM=";
    name = "imx_cortexa9-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "50debe630cd7cff5daca11caa7738b3f34d93d9c92bda86287af772a51eb5aa5";
    filename = "immortalwrt-imagebuilder-23.05.7-imx-cortexa9.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-IA7JiIavM9xVUI0W77QYvHwqgREXK1MhDc4i8sZ5GoI=";
    name = "imx_cortexa9-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "dd9c6da4ebb986fdf927793b6a7dc9b7";
      version = "5.15.195";
    };
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
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.195-1-dd9c6da4ebb986fdf927793b6a7dc9b7";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-Xu6/ziKcF43lbqoOU29ylhGVc2N+AM/lzB6O3c/B5II=";
      name = "imx_cortexa9-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/imx/cortexa9/packages/Packages";
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
