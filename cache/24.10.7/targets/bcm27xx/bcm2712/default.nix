# 24.10.7 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-KMRSi4U23ReIsYE+ZiqXfB+Xl9fe9ZS3toogCC5cF7I=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "ab22364cf4641f3c3bca84ebe1c4ac1584069d6c71195513165b2005afec2d1b";
    filename = "immortalwrt-imagebuilder-24.10.7-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NsCcYEmUF/QltCFGxS577NP2dMhPwam92XNrNhLTPgA=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "04edafca2864b19e9b0088d7f6fe8c84";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-04edafca2864b19e9b0088d7f6fe8c84";
    profiles = {
      rpi-5 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-i2c-brcmstb"
          "kmod-i2c-designware-platform"
          "kmod-spi-dw-mmio"
          "kmod-hwmon-pwmfan"
          "kmod-thermal"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.159-1-04edafca2864b19e9b0088d7f6fe8c84" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2712/kmods/6.6.159-1-04edafca2864b19e9b0088d7f6fe8c84/";
    sourceInfo = {
      hash = "sha256-fTcdME06F9zu1G0GKZSGRLxYOuUjidbZVsO2lDEjrdk=";
      name = "kmods-bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2712/kmods/6.6.159-1-04edafca2864b19e9b0088d7f6fe8c84/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-brKe5TTh8LJdWOgukoT5VGM7Yr4Ia3IlI5tSZ5Hmn/E=";
      name = "bcm27xx_bcm2712-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/bcm27xx/bcm2712/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a76";
  feeds = import ./../../../packages/aarch64_cortex-a76.nix;
}
