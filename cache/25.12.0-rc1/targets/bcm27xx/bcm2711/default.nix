# 25.12.0-rc1 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-d5H/LfGe2k0rFLD0Koq/vXMLpUi4lrEJtKM7xks6HdA=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "97bc749a86dc9dac1f000aecf597972bb1006d984ba32a47cc4f930298510298";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bcm27xx-bcm2711.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-V2smAyDotIDHwukjYPpo4xWHSY5KZh9IBy3W0funKG0=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "80634bc2339a428594acad6a56945c63";
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
    kmods_target = "6.12.74-1-80634bc2339a428594acad6a56945c63";
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
  kmods."6.12.74-1-80634bc2339a428594acad6a56945c63" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2711/kmods/6.12.74-1-80634bc2339a428594acad6a56945c63/";
    sourceInfo = {
      hash = "sha256-xS4IRAlurUYXlqecPNp/Tk6z/XUUCQAXSVmShElfg4c=";
      name = "kmods-bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2711/kmods/6.12.74-1-80634bc2339a428594acad6a56945c63/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-XRsTUT0Sb8/ioZkMBAlnj62BE1296+jiOw16g6unMOk=";
      name = "bcm27xx_bcm2711-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm27xx/bcm2711/packages/packages.adb";
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
