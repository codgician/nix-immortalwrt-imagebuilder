# 25.12.0-rc2 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-YPb2O64PY4z4ZKAq5EZg5YUHUqQbGGDO3xZ2P6nsiLE=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "64b5ad5ed79ff917d394b9500a94c49eb798acbd4d65f529db1dedc5ba2eb529";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2lntCY4MPYz/jJoD4BbSz442lPN6W8Y/m9C+Jkcw+Sc=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "ab21fb23d59f1b8f40fd8b0d3fefc1db";
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
    kmods_target = "6.12.79-1-ab21fb23d59f1b8f40fd8b0d3fefc1db";
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
  kmods."6.12.79-1-ab21fb23d59f1b8f40fd8b0d3fefc1db" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2712/kmods/6.12.79-1-ab21fb23d59f1b8f40fd8b0d3fefc1db/";
    sourceInfo = {
      hash = "sha256-JCvBVWMZQ1i3Kegoxlz451AyWu965rTTDVXuuGBKwaU=";
      name = "kmods-bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2712/kmods/6.12.79-1-ab21fb23d59f1b8f40fd8b0d3fefc1db/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-3YphutPCaEXvsBCDVPeaIpscmAoK9NgURLKiTHDr3iw=";
      name = "bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2712/packages/packages.adb";
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
