# snapshot rockchip/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/";
  sha256sums = {
    hash = "sha256-+M9Y+fi/BnmAt2zWPvgNVSgeMl1BVUCzgNdHql+yKVg=";
    name = "rockchip_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "599542f6c4d2f2e360d8422334fb3c445ae0f57af5cfb3c1da68bf5ae89cf252";
    filename = "immortalwrt-imagebuilder-rockchip-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xfzI3PCPEw15MyfZ+FZeUAWhTA+8OCL3qHFpsPClLwA=";
    name = "rockchip_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "ede241c300e5ca69066a66220dc3c42e";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "fdisk"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.55-1-ede241c300e5ca69066a66220dc3c42e";
    profiles = {
      herospeed_rv1126-imx415 = {
        device_packages = [
          "kmod-rtc-pcf8563"
          "kmod-video-core"
          "kmod-video-imx415"
          "kmod-video-rockchip-cif"
          "kmod-phy-rockchip-inno-csidphy"
          "kmod-leds-pwm-flash"
          "kmod-crypto-hw-rockchip2"
          "kmod-video-hantro"
          "kmod-video-rockchip-isp2"
          "kmod-video-rockchip-rkvenc"
          "video-support"
        ];
      };
    };
  };
  kmods."6.18.55-1-ede241c300e5ca69066a66220dc3c42e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/kmods/6.18.55-1-ede241c300e5ca69066a66220dc3c42e/";
    sourceInfo = {
      hash = "sha256-SSDT16vnAWsnT/gG59+JUStSptVxftSOp6WzGHM9nwQ=";
      name = "kmods-rockchip_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/kmods/6.18.55-1-ede241c300e5ca69066a66220dc3c42e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/packages/";
    sourceInfo = {
      hash = "sha256-bSxYiVAYM92DYybvu/PscI7rV1n8OdkhncJ1/4/HK8E=";
      name = "rockchip_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
