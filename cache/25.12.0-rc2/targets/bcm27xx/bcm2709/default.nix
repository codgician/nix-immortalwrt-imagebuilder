# 25.12.0-rc2 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-OcWcHD1gFa2QMEpxDDBmpfFJvy8+ywJtUlgz6LQumHg=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "3a6a7c56c39224de61f808c57b8cd9c78a29039a56c8211e6a716abe43757634";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dZYYi2CJv8C4BLbBvPp6eOdSqxG11sH8D+1AZUg/V3w=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "2dd5499ca918338e26edeac26ddc7922";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.12.79-1-2dd5499ca918338e26edeac26ddc7922";
    profiles = {
      rpi-2 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
        ];
      };
    };
  };
  kmods."6.12.79-1-2dd5499ca918338e26edeac26ddc7922" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2709/kmods/6.12.79-1-2dd5499ca918338e26edeac26ddc7922/";
    sourceInfo = {
      hash = "sha256-wG/WN++TUGDH+Tjt0AJ5ggsa2uz2RWlDP92zC5rub1s=";
      name = "kmods-bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2709/kmods/6.12.79-1-2dd5499ca918338e26edeac26ddc7922/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-vo8NR404i+e6lN7JemjC3zyFy/xULV6MCwIMVybzOyA=";
      name = "bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2709/packages/packages.adb";
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
