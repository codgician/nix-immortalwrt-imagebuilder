# 25.12.0-rc1 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-7xqNoxiEnBRP1U58NS//lSH8db37bCkGF/uPWZI1xYE=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "0b08849ad63010203e655efc2749fdafdc428a5448a2affbc350f7efdaaeadfb";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ToTVuHkdfYOkBRST3tBQmD9jpDH9th6NdvcoNaxKAUE=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "9a398bf7e803a1905be8f6a2f968b7ba";
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
    kmods_target = "6.12.74-1-9a398bf7e803a1905be8f6a2f968b7ba";
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
  kmods."6.12.74-1-9a398bf7e803a1905be8f6a2f968b7ba" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2709/kmods/6.12.74-1-9a398bf7e803a1905be8f6a2f968b7ba/";
    sourceInfo = {
      hash = "sha256-GSxNmrK3dwefXQ0iyaqBa9yZAkQzpgTmXyw3wyO8JQE=";
      name = "kmods-bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2709/kmods/6.12.74-1-9a398bf7e803a1905be8f6a2f968b7ba/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-KFa8EcB+36490bZI7JO2kLMd9vBIcmUbNTd43mrOjCI=";
      name = "bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2709/packages/packages.adb";
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
