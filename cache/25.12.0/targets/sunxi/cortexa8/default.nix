# 25.12.0 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-wvoAnYRxheoMiZHRNIuEWrnF348BoDqg9hpnwqWR65g=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "c3b252b57ba3d0d5aaf25bbd0e4ff89d6ac057d0961633934c6a961fb46e9ca0";
    filename = "immortalwrt-imagebuilder-25.12.0-sunxi-cortexa8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-O7wzKosJGcW/QT4ixmnxL4D4vAIGFut345YFp4oleNY=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "aa84a4a9c32d241edff30f40e86cdc16";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
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
    kmods_target = "6.12.87-1-aa84a4a9c32d241edff30f40e86cdc16";
    profiles = {
      cubietech_a10-cubieboard = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      haoyu_a10-marsboard = {
        device_packages = [
          "kmod-ata-core"
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-sound-core"
          "kmod-sound-soc-sunxi"
        ];
      };
      linksprite_a10-pcduino = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-rtl8192cu"
        ];
      };
      olimex_a10-olinuxino-lime = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      olimex_a13-olinuxino = {
        device_packages = [ "kmod-rtl8192cu" ];
      };
    };
  };
  kmods."6.12.87-1-aa84a4a9c32d241edff30f40e86cdc16" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/cortexa8/kmods/6.12.87-1-aa84a4a9c32d241edff30f40e86cdc16/";
    sourceInfo = {
      hash = "sha256-wgDW0W9Mu8D6FbrjtuN7PNbfFu+K4VpYnONOyE1Wrpw=";
      name = "kmods-sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/cortexa8/kmods/6.12.87-1-aa84a4a9c32d241edff30f40e86cdc16/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-odaQ7OfEquyHhZBK2aAv/ArgRWXo4zY+oEqKMSDt4/w=";
      name = "sunxi_cortexa8-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/sunxi/cortexa8/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a8_vfpv3";
  feeds = import ./../../../packages/arm_cortex-a8_vfpv3.nix;
}
