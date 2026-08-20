# snapshot airoha/an7581
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/";
  sha256sums = {
    hash = "sha256-ui00/sJkJhmeLrOqmgbLd9gwivnH/X7VP41fqTHRZX4=";
    name = "airoha_an7581-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/sha256sums";
  };
  imagebuilder = {
    sha256 = "24324de89e0cae6eaf17caf628f61dd94a3ad4d4b76da13bc3dabeed9f651a61";
    filename = "immortalwrt-imagebuilder-airoha-an7581.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-pTTRYw0ZL1B5H7E4R2ctPPye9Ch/FuvMsHa+75b7kEg=";
    name = "airoha_an7581-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "7c08b90b811abacfe00d9dfacc86634c";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-7c08b90b811abacfe00d9dfacc86634c";
    profiles = {
      airoha_an7581-evb = {
        device_packages = [
          "kmod-leds-pwm"
          "kmod-pwm-airoha"
          "kmod-input-gpio-keys-polled"
        ];
      };
      airoha_an7581-evb-emmc-eagle = {
        device_packages = [
          "airoha-en7581-mt7996-npu-firmware"
          "kmod-mt7996-firmware"
          "wpad-openssl"
        ];
      };
      airoha_an7581-evb-emmc-kite = {
        device_packages = [
          "airoha-en7581-npu-firmware"
          "kmod-mt7992-firmware"
          "wpad-openssl"
        ];
      };
      gemtek_w1700k-ubi = {
        device_packages = [
          "airoha-en7581-mt7996-npu-firmware"
          "fitblk"
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
  kmods."6.18.44-1-7c08b90b811abacfe00d9dfacc86634c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.44-1-7c08b90b811abacfe00d9dfacc86634c/";
    sourceInfo = {
      hash = "sha256-E1DlAJx59F79LDVwchPxO6+sUuBqYhfF0vptPQNT+Kk=";
      name = "kmods-airoha_an7581-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.44-1-7c08b90b811abacfe00d9dfacc86634c/packages.adb";
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
      hash = "sha256-hGHlc8VtH8+MNnCkbGHpnCL3rOtyjJZvZZI+BX99yJs=";
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
