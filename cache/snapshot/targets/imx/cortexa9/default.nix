# snapshot imx/cortexa9
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-gzu8yp6fHUWPoTuaftBr4BmEX7ojvuuGOlpB7YsnT+A=";
    name = "imx_cortexa9-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "709caebf114094d41d79adf008499a5b5f617989c5ae304ade0e6456f11500cb";
    filename = "immortalwrt-imagebuilder-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hHswnAZ93HfpekT96y1Rbviroth6p8/zw3DcKVF3ybM=";
    name = "imx_cortexa9-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "6e5db1b5137e156b7f83e1cd4da0a45a";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blkid"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.67-1-6e5db1b5137e156b7f83e1cd4da0a45a";
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
  kmods."6.12.67-1-6e5db1b5137e156b7f83e1cd4da0a45a" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa9/kmods/6.12.67-1-6e5db1b5137e156b7f83e1cd4da0a45a/";
    sourceInfo = {
      hash = "sha256-8iHJIGa0ShDUtWrDGt58t8D+xcyx1ubgtnly6x4NY/8=";
      name = "kmods-imx_cortexa9-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa9/kmods/6.12.67-1-6e5db1b5137e156b7f83e1cd4da0a45a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-JK5ToK4nuZL48WmuHA0ebiS/X+pmb4rv1mxms69IDXE=";
      name = "imx_cortexa9-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/imx/cortexa9/packages/packages.adb";
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
