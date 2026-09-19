# snapshot ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-AWSpp5m7Vr6Dltv2C8Gd8Ly3a3xBMiq7fPPuC34RmZU=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "576ca30cde9f53bec29e50acdf146fbbcaab5c18a9eb145a7e55268d3c45e3d7";
    filename = "immortalwrt-imagebuilder-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XctDJmtyf/hxlUCGRZ6c6FBaS+rNdB/ruSfBk1dPXiY=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "c117b8d73d31b8132d2869a38692947f";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "fconfig"
      "firewall4"
      "fstools"
      "kmod-crypto-hw-ixp4xx"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.18.52-1-c117b8d73d31b8132d2869a38692947f";
    profiles = {
      dlink_dsm_g600_a = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-pcf8563"
          "kmod-via-velocity"
          "kmod-ata-artop"
          "kmod-ath5k"
          "wpad-openssl"
        ];
      };
      gateworks_avila = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-hwmon-ad7418"
        ];
      };
      gateworks_cambria = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-hwmon-ad7418"
        ];
      };
      iomega_nas100d = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-pcf8563"
        ];
      };
      usrobotics_usr8200 = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-r7301"
          "kmod-firewire"
          "kmod-firewire-ohci"
          "kmod-dsa-mv88e6060"
        ];
      };
    };
  };
  kmods."6.18.52-1-c117b8d73d31b8132d2869a38692947f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.18.52-1-c117b8d73d31b8132d2869a38692947f/";
    sourceInfo = {
      hash = "sha256-qg2CufQDzAYqkwAayACXQp4zV5xwhA0yxWlzd/76lf0=";
      name = "kmods-ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.18.52-1-c117b8d73d31b8132d2869a38692947f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-jZseHiRuEclq6C00jy3gmqvOUPS4cs7J6r5cQAuAilk=";
      name = "ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "armeb_xscale";
  feeds = import ./../../../packages/armeb_xscale.nix;
}
