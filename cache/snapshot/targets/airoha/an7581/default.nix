# snapshot airoha/an7581
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/";
  sha256sums = {
    hash = "sha256-dgbS38tkNZ8AzO6SLkE0yLQXVRb+F+Hg+EUb0rCkf/Y=";
    name = "airoha_an7581-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/sha256sums";
  };
  imagebuilder = {
    sha256 = "48ce1ee1224f91f9d91359bf925f976112976dd5c20103ec71dd846778f37b7d";
    filename = "immortalwrt-imagebuilder-airoha-an7581.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AJqh+yM29cx3DkWTWRohgcCkYC9EYH+D/MCg4WLsuHI=";
    name = "airoha_an7581-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "acd5fdda17c2012089eb327131355a79";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-acd5fdda17c2012089eb327131355a79";
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
  kmods."6.18.37-1-acd5fdda17c2012089eb327131355a79" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.37-1-acd5fdda17c2012089eb327131355a79/";
    sourceInfo = {
      hash = "sha256-o8evL4rl5osALHHchWohBwvQUXCzBt4LJTL5kG2W19Q=";
      name = "kmods-airoha_an7581-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.37-1-acd5fdda17c2012089eb327131355a79/packages.adb";
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
      hash = "sha256-CrxSARp4M0/S0GF6V/fCmfTzlTbHlkht6TeoTNBMIGs=";
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
