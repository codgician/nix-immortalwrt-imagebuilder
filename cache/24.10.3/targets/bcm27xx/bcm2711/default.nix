# 24.10.3 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-AjQNzotdRJQirts0fswmUf5iGNCIjE9xn3dai19uK/o=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "31abddfde5a0241a588092841c0987997a319821c1592992762c329900ca2047";
    filename = "immortalwrt-imagebuilder-24.10.3-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6dyZrxx9wC86mRkXvJJy2d4P0dab7k3SHke1QWAdu/w=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "699f0d75e45cd57a367b3faf4caeafe6";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-699f0d75e45cd57a367b3faf4caeafe6";
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
  kmods."6.6.104-1-699f0d75e45cd57a367b3faf4caeafe6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2711/kmods/6.6.104-1-699f0d75e45cd57a367b3faf4caeafe6/";
    sourceInfo = {
      hash = "sha256-TzZF0GIYDMnvECTR91ou9q/7rMmTwxqCb6o4tq4pkAQ=";
      name = "kmods-bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2711/kmods/6.6.104-1-699f0d75e45cd57a367b3faf4caeafe6/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-sItFkU0DLLo+B88ud5z+eMHPb9uyInbeiWj2jDFH70s=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2711/packages/Packages";
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
