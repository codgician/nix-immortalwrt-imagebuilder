# snapshot airoha/an7583
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/";
  sha256sums = {
    hash = "sha256-4XrxS8445Y0HK57A9rvoAWSkFzgyEek7i4ccdnAlBYc=";
    name = "airoha_an7583-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/sha256sums";
  };
  imagebuilder = {
    sha256 = "f405e1faba3d3a45d75d6a90a986b4f41e1bb5e5fcf61c7b8f04e253b4bd8243";
    filename = "immortalwrt-imagebuilder-airoha-an7583.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WdEf6W6Mz4JasLXOlcUtfoQPsxCRQe3cwi6uuw2NHpo=";
    name = "airoha_an7583-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "528e8436a391ab9a079d391259b4bfa9";
      version = "6.18.55";
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
    kmods_target = "6.18.55-1-528e8436a391ab9a079d391259b4bfa9";
    profiles = {
      airoha_an7583-evb-multievb = {
        device_packages = [
          "aeonsemi-as21xxx-firmware"
          "kmod-leds-pwm"
          "kmod-pwm-airoha"
          "kmod-input-gpio-keys-polled"
          "kmod-phy-airoha-en8811h"
        ];
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
  kmods."6.18.55-1-528e8436a391ab9a079d391259b4bfa9" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.55-1-528e8436a391ab9a079d391259b4bfa9/";
    sourceInfo = {
      hash = "sha256-VLeb6O5Dg1EXhCX4dz4oSFhTKoVuwgD9hSK3uldaCR8=";
      name = "kmods-airoha_an7583-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.55-1-528e8436a391ab9a079d391259b4bfa9/packages.adb";
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
      hash = "sha256-XBT3IEqOVO3YQcM1MR/MQshxurEijgh13VIraksjlQs=";
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
