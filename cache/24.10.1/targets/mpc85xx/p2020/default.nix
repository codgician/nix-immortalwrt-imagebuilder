# 24.10.1 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-NsZC03Y0ratm8zmjDblvaNz3YgBFQ9+5PRwHCTFiZsQ=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "cad953044330ef9b8d08b02b9cc59c9f6f4b9c0eef6f51632b5adbea568390b9";
    filename = "immortalwrt-imagebuilder-24.10.1-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-pmyAHD0eADcxknO3M7CLhLaRNd1jFJkWAw9jvH70JJc=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "159e59443203c0f901adbbb8165922cf";
      version = "6.6.86";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.86-1-159e59443203c0f901adbbb8165922cf";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
          "kmod-gpio-pca953x"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  kmods."6.6.86-1-159e59443203c0f901adbbb8165922cf" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p2020/kmods/6.6.86-1-159e59443203c0f901adbbb8165922cf/";
    sourceInfo = {
      hash = "sha256-xr4vuXhBczDwEGnXgr+y8tHv3HlAp5p1zK/OBAm+Zd4=";
      name = "kmods-mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p2020/kmods/6.6.86-1-159e59443203c0f901adbbb8165922cf/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-nx0bnZ7C75ffRjC8cjZnt7OEM9Kvjn/6VPNbFj/aNiQ=";
      name = "mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p2020/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
