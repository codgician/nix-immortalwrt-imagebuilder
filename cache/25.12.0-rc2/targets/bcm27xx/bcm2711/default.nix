# 25.12.0-rc2 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-IbcUFQLFEIzo2h21jceVXPO7rnlRScrWuRcUT7APVKM=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "681d0c5cf8858c597dcb64e3237b4ce457f1cd488344c3e87148f1a949e12534";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-TDmmrvaTB7JLetGDUW3yvoa9QD0465R9C95lG2r9nQs=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "d0d75c3d735b8fe215354288af4bbeca";
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
    kmods_target = "6.12.79-1-d0d75c3d735b8fe215354288af4bbeca";
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
          "kmod-usb-net-rtl8152"
          "kmod-r8169"
        ];
      };
    };
  };
  kmods."6.12.79-1-d0d75c3d735b8fe215354288af4bbeca" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2711/kmods/6.12.79-1-d0d75c3d735b8fe215354288af4bbeca/";
    sourceInfo = {
      hash = "sha256-gWGzFikBMcvK6pS3Y8zTVINQ8auc7K4dC5ZIIaIfeAU=";
      name = "kmods-bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2711/kmods/6.12.79-1-d0d75c3d735b8fe215354288af4bbeca/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-MZJTVtEUcjz/ufwBT4zp46bXcFDDHiXUd+TROkHteeE=";
      name = "bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2711/packages/packages.adb";
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
