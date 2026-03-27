# 24.10.2 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-95AIUREaxjRS6lqlegfY4bXOYjhftDdTUnnzdENiwHI=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "4c0ff41caa33b03bf62002a8079c05872c881eefa764b5d005b25a2a8d1014a2";
    filename = "immortalwrt-imagebuilder-24.10.2-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nw1dtB8LZMRZv0XzqmdzcLnRlzO8+XSwkW+xQPNmdkM=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "699f0d75e45cd57a367b3faf4caeafe6";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-699f0d75e45cd57a367b3faf4caeafe6";
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
  kmods."6.6.93-1-699f0d75e45cd57a367b3faf4caeafe6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2711/kmods/6.6.93-1-699f0d75e45cd57a367b3faf4caeafe6/";
    sourceInfo = {
      hash = "sha256-YZBO2OyBnZh2IokBvz6dGA+qz3kCpIXfF3Gn5VHan1c=";
      name = "kmods-bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2711/kmods/6.6.93-1-699f0d75e45cd57a367b3faf4caeafe6/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-ljSE+68lvO5c9uDFv2Ao4V1/C6nuePM6whIkEp94XrQ=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm27xx/bcm2711/packages/Packages";
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
