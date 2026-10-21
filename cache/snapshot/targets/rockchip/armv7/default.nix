# snapshot rockchip/armv7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/";
  sha256sums = {
    hash = "sha256-bhE3ngz+vfwiiEn0bq2MhnoXwNsZqRMVejQ+LwnKtss=";
    name = "rockchip_armv7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/sha256sums";
  };
  imagebuilder = {
    sha256 = "4d74920da330dd3cbe8bb7ed1cd1220d68a7ce5707c8db7d24de81c387e8e598";
    filename = "immortalwrt-imagebuilder-rockchip-armv7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rpPABlwZZrRkAl4/LC9LEf4Al1tpcd6+Tzz6m+AsJ8U=";
    name = "rockchip_armv7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "1f6a48cade0ef4e99a35fdbe0f255a29";
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
    kmods_target = "6.18.55-1-1f6a48cade0ef4e99a35fdbe0f255a29";
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
  kmods."6.18.55-1-1f6a48cade0ef4e99a35fdbe0f255a29" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/kmods/6.18.55-1-1f6a48cade0ef4e99a35fdbe0f255a29/";
    sourceInfo = {
      hash = "sha256-VAqNwVUmmbCfGhZSvc8lTgMxBDjIEcswHLVwmSK58KE=";
      name = "kmods-rockchip_armv7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/rockchip/armv7/kmods/6.18.55-1-1f6a48cade0ef4e99a35fdbe0f255a29/packages.adb";
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
      hash = "sha256-K31nvm57Sdi3N/WACkAP7DpgKTuzPkbiIvN0ZI0Gx2w=";
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
