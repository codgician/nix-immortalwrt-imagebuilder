# 24.10.5 imx/cortexa9
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa9/";
  sha256sums = {
    hash = "sha256-Jv1aGg2sLRKLaoLdH5LFgJcbF0q8dWNMnSFWXqmQ0ls=";
    name = "imx_cortexa9-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa9/sha256sums";
  };
  imagebuilder = {
    sha256 = "ee702b84b435af7c4f22c195b679cc724546800c866a50bc35b6412dd838bc40";
    filename = "immortalwrt-imagebuilder-24.10.5-imx-cortexa9.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-0PkARpLP7UbnVbcBwUo0uLO9bjDdF+L07CpontggOGk=";
    name = "imx_cortexa9-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa9/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_neon";
    linux_kernel = {
      release = "1";
      vermagic = "096a117d7b54779a8e961066ce4204c2";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-096a117d7b54779a8e961066ce4204c2";
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
  kmods."6.6.122-1-096a117d7b54779a8e961066ce4204c2" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa9/kmods/6.6.122-1-096a117d7b54779a8e961066ce4204c2/";
    sourceInfo = {
      hash = "sha256-8RL+KNkGmVVnjOyH5Nf5Qy2xk9wKuvKWxRGzatimqvk=";
      name = "kmods-imx_cortexa9-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa9/kmods/6.6.122-1-096a117d7b54779a8e961066ce4204c2/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa9/packages/";
    sourceInfo = {
      hash = "sha256-gKiTJ0vJKlKKzkyn23LP6CaNwcT+Mfyyo0KqwhtVXlc=";
      name = "imx_cortexa9-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa9/packages/Packages";
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
