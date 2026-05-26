# 25.12.0 bcm27xx/bcm2712
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2712/";
  sha256sums = {
    hash = "sha256-1ws53L7wkbxMVgpF6d2HaxKOe0WGwg8GTGlNz5Gw/ow=";
    name = "bcm27xx_bcm2712-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2712/sha256sums";
  };
  imagebuilder = {
    sha256 = "83339f795a846306d88772c7acfe0988777d17e8e1e88f6ca8917ee9e05b7053";
    filename = "immortalwrt-imagebuilder-25.12.0-bcm27xx-bcm2712.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2QymxwZhsgGRHnAv67lB2QT6HxkgOcV15FLaskogTYI=";
    name = "bcm27xx_bcm2712-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2712/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a76";
    linux_kernel = {
      release = "1";
      vermagic = "27caf6f9d92bff167f2b0baa348b69f3";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-27caf6f9d92bff167f2b0baa348b69f3";
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
  kmods."6.12.87-1-27caf6f9d92bff167f2b0baa348b69f3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2712/kmods/6.12.87-1-27caf6f9d92bff167f2b0baa348b69f3/";
    sourceInfo = {
      hash = "sha256-7TOaLfppEDsBRpQkslJaEgTOONwqrJ7+uxH1wHSSUbw=";
      name = "kmods-bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2712/kmods/6.12.87-1-27caf6f9d92bff167f2b0baa348b69f3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2712/packages/";
    sourceInfo = {
      hash = "sha256-s8bIjNJ3BuCwfc8CibWm97aAcz6runXknlwIoVM+Jxk=";
      name = "bcm27xx_bcm2712-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm27xx/bcm2712/packages/packages.adb";
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
