# snapshot airoha/an7583
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/";
  sha256sums = {
    hash = "sha256-X6Rq0UcGOhmsNuiSSuuvKDWB3w4linT5OfAkZoJTpV8=";
    name = "airoha_an7583-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/sha256sums";
  };
  imagebuilder = {
    sha256 = "30fec0f7839a3fdbc110247f7c1b612c44ed97e5a2f4f7933c1e17a788cd509a";
    filename = "immortalwrt-imagebuilder-airoha-an7583.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-22lwkcZeu5kK25dcZM5ZlObFi/GUUEkPl+e02peVnIA=";
    name = "airoha_an7583-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "cf56cd4a6c48d9b280550358883479e1";
      version = "6.18.44";
    };
    default_packages = [
      "airoha-an7583-npu-firmware"
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
    kmods_target = "6.18.44-1-cf56cd4a6c48d9b280550358883479e1";
    profiles = {
      airoha_an7583-evb = {
        device_packages = [
          "kmod-phy-aeonsemi-as21xxx"
          "kmod-leds-pwm"
          "kmod-pwm-airoha"
          "kmod-input-gpio-keys-polled"
        ];
      };
      airoha_an7583-evb-emmc = {
        device_packages = [ "kmod-phy-airoha-en8811h" ];
      };
      nokia_xg-040g-mf = {
        device_packages = [
          "kmod-phy-airoha-en8811h"
          "kmod-regulator-userspace-consumer"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      nokia_xg-040g-mf-ubi = {
        device_packages = [
          "kmod-phy-airoha-en8811h"
          "kmod-regulator-userspace-consumer"
          "kmod-usb-ledtrig-usbport"
          "fitblk"
        ];
      };
    };
  };
  kmods."6.18.44-1-cf56cd4a6c48d9b280550358883479e1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.44-1-cf56cd4a6c48d9b280550358883479e1/";
    sourceInfo = {
      hash = "sha256-1mHRPfO3CnNDFmIuXCO9bfznid9fzj+0SPQUfW8ck5M=";
      name = "kmods-airoha_an7583-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.44-1-cf56cd4a6c48d9b280550358883479e1/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/packages/";
    sourceInfo = {
      hash = "sha256-fJNDn660//eqOJdSx/GDycNxOHdgvTtmtKCIQ6rpOjE=";
      name = "airoha_an7583-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/packages/packages.adb";
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
