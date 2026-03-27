# 24.10.4 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-8gizVU2ScSDWfaHy6u5D1If+Ug3nvFPtRYnBU4U25OE=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "7c5cd4482b8ff4837fa069b9732776c5eab275c063fed5e95cfbed488aeaaa35";
    filename = "immortalwrt-imagebuilder-24.10.4-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+WWBS4l4dW2tEN1Fg+V87vJVNElzLkuzLD6KLEJZDNw=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "fb80cd6a6424de947bf9d5e2c6537296";
      version = "6.6.110";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
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
      "luci-app-cpufreq"
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.6.110-1-fb80cd6a6424de947bf9d5e2c6537296";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
          "kmod-i2c-brcmstb"
          "kmod-usb-net-lan78xx"
          "kmod-r8169"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.110-1-fb80cd6a6424de947bf9d5e2c6537296" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2711/kmods/6.6.110-1-fb80cd6a6424de947bf9d5e2c6537296/";
    sourceInfo = {
      hash = "sha256-6x9mdCCpoHJI85LSzDQ4lmoneFodn04NeGW/yrWb6SI=";
      name = "kmods-bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2711/kmods/6.6.110-1-fb80cd6a6424de947bf9d5e2c6537296/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-H7ILq0Sw0sXtnnbxCcBUq8yHucxLbFp5IL466tW+KiA=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm27xx/bcm2711/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}
