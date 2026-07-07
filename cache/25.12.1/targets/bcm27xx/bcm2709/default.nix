# 25.12.1 bcm27xx/bcm2709
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2709/";
  sha256sums = {
    hash = "sha256-2/lbVIHjCyRv/CCan+r/46bn1cGoaVCm5hhHAkJe8us=";
    name = "bcm27xx_bcm2709-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2709/sha256sums";
  };
  imagebuilder = {
    sha256 = "35770e748d1d857f4c14754b5fd346f031b18a252b0768208dff3057642a43e4";
    filename = "immortalwrt-imagebuilder-25.12.1-bcm27xx-bcm2709.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CBeuPBrPtIltkHi+nPEpCt4jdqvi/vhZfIIFmmLqv5M=";
    name = "bcm27xx_bcm2709-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2709/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "66762ae0732c5922c0a6d078fafb9f2d";
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
    kmods_target = "6.12.94-1-66762ae0732c5922c0a6d078fafb9f2d";
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
  kmods."6.12.94-1-66762ae0732c5922c0a6d078fafb9f2d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2709/kmods/6.12.94-1-66762ae0732c5922c0a6d078fafb9f2d/";
    sourceInfo = {
      hash = "sha256-sksp3SLlRcs2aQWoCCbtUfj3IdvEQnylV6xSPc8zwOs=";
      name = "kmods-bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2709/kmods/6.12.94-1-66762ae0732c5922c0a6d078fafb9f2d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2709/packages/";
    sourceInfo = {
      hash = "sha256-wjfluIIYzCUg4EiVgmdvGAKXPlnNIMSmn00KwxWI3Uk=";
      name = "bcm27xx_bcm2709-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm27xx/bcm2709/packages/packages.adb";
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
