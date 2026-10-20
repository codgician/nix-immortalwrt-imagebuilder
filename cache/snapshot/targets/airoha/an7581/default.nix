# snapshot airoha/an7581
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/";
  sha256sums = {
    hash = "sha256-C8gTxujFmLpUkRY87BGSpPSLtIMT6hJikWYGqVb+LCg=";
    name = "airoha_an7581-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/sha256sums";
  };
  imagebuilder = {
    sha256 = "c3f17f367fae74294f2ecf17591f1883de58d0a9de8a45937e86b8a732928027";
    filename = "immortalwrt-imagebuilder-airoha-an7581.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KcM+cgWMxHkRlUOaC/gL4Wq6Bkn3npnWuTmPsZ+jAX0=";
    name = "airoha_an7581-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "bf4d2f7b24371714b76437e4b40ae128";
      version = "6.18.55";
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
    kmods_target = "6.18.55-1-bf4d2f7b24371714b76437e4b40ae128";
    profiles = {
      airoha_an7581-evb-multievb = {
        device_packages = [
          "kmod-leds-pwm"
          "kmod-pwm-airoha"
          "kmod-input-gpio-keys-polled"
          "airoha-en7581-npu-firmware"
          "kmod-mt7992-firmware"
          "airoha-en7581-mt7996-npu-firmware"
          "kmod-mt7996-firmware"
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
          "rtl8261c-firmware"
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
          "aeonsemi-as21xxx-firmware"
          "kmod-mt7996-firmware"
          "airoha-en7581-mt7996-npu-firmware"
          "kmod-usb3"
          "automount"
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
          "automount"
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
          "automount"
          "fitblk"
        ];
      };
      quantum_q1000k-ubi = {
        device_packages = [
          "fitblk"
          "nand-utils"
          "rtl826x-firmware"
        ];
      };
    };
  };
  kmods."6.18.55-1-bf4d2f7b24371714b76437e4b40ae128" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.55-1-bf4d2f7b24371714b76437e4b40ae128/";
    sourceInfo = {
      hash = "sha256-Nc3o0crEn/l3kE+CTdoWn/U+b0B65owYyVkAto8u8h8=";
      name = "kmods-airoha_an7581-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7581/kmods/6.18.55-1-bf4d2f7b24371714b76437e4b40ae128/packages.adb";
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
      hash = "sha256-RZ/SZWJAUI35yXLgPzFnLO85SvK5apg//+6BB75VGPc=";
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
