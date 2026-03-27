# 25.12.0-rc1 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-+wmnGCXeIIhYRaybsBuLMNqiPubb1fwAyWGhq0nLj/o=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "f9ef54cdf91520cb6bbfbaaf4742faeaf88f7929b0f7d7e7f7b3b1433d175d45";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HqDqAoh7NHHt6lDaE2wHsEsLO949AWEQkATsiy+13xM=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "31e85c951f3092265df849c0caed87a2";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-31e85c951f3092265df849c0caed87a2";
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
  kmods."6.12.74-1-31e85c951f3092265df849c0caed87a2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2712/kmods/6.12.74-1-31e85c951f3092265df849c0caed87a2/";
    sourceInfo = {
      hash = "sha256-skswl1EQnaxdEtBOT3iJWkRdqRWUMhmpu2Oau+hFQ/Y=";
      name = "kmods-bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2712/kmods/6.12.74-1-31e85c951f3092265df849c0caed87a2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-jrFShMfEs5q9J/2UXwW+9GUFsd8X6pqCylFJ63zK42I=";
      name = "bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2712/packages/packages.adb";
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
