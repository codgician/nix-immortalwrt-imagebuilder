# 25.12.2 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-sI2C6pCp5gjZA9GMbfro4ZGLFin4GSfycJbxRm7L8Ag=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "580f6cc142501ed4dda2e3904e9752f9232824c9afda633b10d6138006951dc7";
    filename = "immortalwrt-imagebuilder-25.12.2-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-f+YqBl+HcT+wZR5t8oF6trZiwcCnkXlF50tLoWj1ZOg=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "8df305fef179c09d6e1e1dc384023cbb";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-8df305fef179c09d6e1e1dc384023cbb";
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
  kmods."6.12.103-1-8df305fef179c09d6e1e1dc384023cbb" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2711/kmods/6.12.103-1-8df305fef179c09d6e1e1dc384023cbb/";
    sourceInfo = {
      hash = "sha256-fPSGB5uQVQ8ox6BaUpLevlXbSJ1N1mrKM0WUjIkvNtk=";
      name = "kmods-bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2711/kmods/6.12.103-1-8df305fef179c09d6e1e1dc384023cbb/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-w0Qi1R6cvTaDCxOmd4g48O4dIPK1iz2U/cdn1X44HJo=";
      name = "bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2711/packages/packages.adb";
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
