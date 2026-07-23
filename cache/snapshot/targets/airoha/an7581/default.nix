# snapshot airoha/an7581
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/";
  sha256sums = {
    hash = "sha256-SIk13xJm+jkRqXlV9SZqKSYh4gUJsTMe/PB/trZQtjk=";
    name = "airoha_an7581-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/sha256sums";
  };
  imagebuilder = {
    sha256 = "0e86906dbde390cb65f42caa5264cb1ad30113a2c8f5da18e539783472e02ebb";
    filename = "immortalwrt-imagebuilder-airoha-an7581.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RisgsRqqwkyqrwX4oIUBJajoBpekMR34NpPyZ3x0phE=";
    name = "airoha_an7581-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "90b7bd63ea7c251c828f61b2a322499d";
      version = "6.18.39";
    };
    default_packages = [
      "airoha-en7581-npu-firmware"
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.39-1-90b7bd63ea7c251c828f61b2a322499d";
    profiles = {
      airoha_an7581-evb = {
        device_packages = [
          "kmod-leds-pwm"
          "kmod-i2c-an7581"
          "kmod-pwm-airoha"
          "kmod-input-gpio-keys-polled"
        ];
      };
      airoha_an7581-evb-emmc-eagle = {
        device_packages = [
          "kmod-i2c-an7581"
          "airoha-en7581-mt7996-npu-firmware"
          "kmod-mt7996-firmware"
          "wpad-openssl"
        ];
      };
      airoha_an7581-evb-emmc-kite = {
        device_packages = [
          "kmod-i2c-an7581"
          "airoha-en7581-npu-firmware"
          "kmod-mt7992-firmware"
          "wpad-openssl"
        ];
      };
      gemtek_w1700k-ubi = {
        device_packages = [
          "airoha-en7581-mt7996-npu-firmware"
          "fitblk"
          "kmod-i2c-an7581"
          "kmod-hwmon-nct7802"
          "kmod-mt7996-firmware"
          "wpad-openssl"
          "rtl826x-firmware"
        ];
      };
      nokia_valyrian = {
        device_packages = [
          "kmod-spi-gpio"
          "kmod-gpio-nxp-74hc164"
          "kmod-leds-gpio"
          "kmod-i2c-an7581"
          "kmod-i2c-gpio"
          "kmod-iio-richtek-rtq6056"
          "kmod-sfp"
          "kmod-phy-aeonsemi-as21xxx"
          "kmod-mt7996-firmware"
          "airoha-en7581-mt7996-npu-firmware"
          "kmod-usb3"
        ];
      };
      nokia_xg-040g-md = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-phy-airoha-en8811h"
          "kmod-regulator-userspace-consumer"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb3"
        ];
      };
      nokia_xg-040g-md-ubi = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-phy-airoha-en8811h"
          "kmod-regulator-userspace-consumer"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb3"
          "fitblk"
        ];
      };
    };
  };
  kmods."6.18.39-1-90b7bd63ea7c251c828f61b2a322499d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.39-1-90b7bd63ea7c251c828f61b2a322499d/";
    sourceInfo = {
      hash = "sha256-IUF++ibFM2NBaKWY2xlItNRSa2qDAA1e1xLGNpkAGN0=";
      name = "kmods-airoha_an7581-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.39-1-90b7bd63ea7c251c828f61b2a322499d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/packages/";
    sourceInfo = {
      hash = "sha256-rs+VgEanLz9yrOyyL0pqbyuKxpadEZdq2QQieXAIH4E=";
      name = "airoha_an7581-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
