# 25.12.0 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-j6jlZR8wu+g95u8S/gJ6Z8E7Pqf7dhgwWgCulvty2Rs=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "0854a939d18f97cca1df5b8e0a8c7158f5cccab0c3b0d2f6032dcbac543856d3";
    filename = "immortalwrt-imagebuilder-25.12.0-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NCgKTq6QmZ+VgG5wEHtKoMtv6Udu+nlLrj9mEZX56BI=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "f577223353700baf9d00fc7408b6e970";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.87-1-f577223353700baf9d00fc7408b6e970";
    profiles = {
      huawei_hg553 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-a = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-c = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.87-1-f577223353700baf9d00fc7408b6e970" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6358/kmods/6.12.87-1-f577223353700baf9d00fc7408b6e970/";
    sourceInfo = {
      hash = "sha256-uIleEk9jizVUOnmtxhk5jpkCxsbXA5XHvvULxdTVg8M=";
      name = "kmods-bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6358/kmods/6.12.87-1-f577223353700baf9d00fc7408b6e970/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-rZ6tgECZlxMT0/b2shXwijDyFVfB/eW2S4gOaSg7vqs=";
      name = "bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm6358/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
