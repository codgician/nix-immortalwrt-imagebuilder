# 23.05.0 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-GI+pOPXINWdcb08xRpnvfNe+UNYsSdQ5jOSWJGuKfC0=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "eb8252b4c247be7a94625c45fe56c0d99acc5e331ebd265d2564b1bd18f06263";
    filename = "immortalwrt-imagebuilder-23.05.0-mediatek-mt7629.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-wqryoQg6m61soMzJhlt5tW7+psyvkmboS7ZITlfEJIs=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      iptime_a6004mx = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      mediatek_mt7629-rfb = {
        device_packages = [ "swconfig" ];
      };
      netgear_ex6250-v2 = {
        device_packages = [ "uboot-envtools" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-QzEpuhYVV3bLiGuiwEi0oXfWep4UMs9orFt7Z3i6soM=";
      name = "mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/mediatek/mt7629/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7";
  feeds = import ./../../../packages/arm_cortex-a7.nix;
}
