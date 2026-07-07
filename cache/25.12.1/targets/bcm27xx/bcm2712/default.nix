# 25.12.1 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-Zjj/0dH7HDlNDPnRJfLKGl0NGZ86+gJgfcu1nvf0mAI=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "7372c836876969d01da1eb85455b06f07a2f68ea0ebfb89c404fdc7e18178416";
    filename = "immortalwrt-imagebuilder-25.12.1-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OGrQDJhbfbEEFv62rM6DDihmsvCy6FSDg06MRVhlWak=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "9614b8338b7dea1d5b70340f90254007";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-9614b8338b7dea1d5b70340f90254007";
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
          "kmod-usb-net-lan78xx"
          "kmod-usb-net-rtl8152"
          "kmod-r8169"
        ];
      };
    };
  };
  kmods."6.12.94-1-9614b8338b7dea1d5b70340f90254007" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2712/kmods/6.12.94-1-9614b8338b7dea1d5b70340f90254007/";
    sourceInfo = {
      hash = "sha256-obqm6N+g3FYkezKpqYmlE4sfY1Nww/KzDLCJ07DXiDg=";
      name = "kmods-bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2712/kmods/6.12.94-1-9614b8338b7dea1d5b70340f90254007/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-zGJIkpOatqZgubpY63Sn9wzsevK8jzBIIukDQitrWtU=";
      name = "bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2712/packages/packages.adb";
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
