# snapshot airoha/an7583
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/";
  sha256sums = {
    hash = "sha256-NY2cTp16bq7aCkh/iimlFiI6v/WJwFI7dsmD3Xr5TyA=";
    name = "airoha_an7583-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/sha256sums";
  };
  imagebuilder = {
    sha256 = "9ce7c85d325203632188e79c61b86d04cbea7a9d586090c7a201c46f188aafa6";
    filename = "immortalwrt-imagebuilder-airoha-an7583.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ruqzf5dFKpzr0qXGQ/HgHUta3CjJzItEG5fWGdKqISg=";
    name = "airoha_an7583-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "311228fa711e0128cc48ed3ef7532890";
      version = "6.18.39";
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
    kmods_target = "6.18.39-1-311228fa711e0128cc48ed3ef7532890";
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
        device_packages = [
          "kmod-phy-airoha-en8811h"
          "kmod-i2c-an7581"
        ];
      };
      nokia_xg-040g-mf = {
        device_packages = [ "kmod-phy-airoha-en8811h" ];
      };
    };
  };
  kmods."6.18.39-1-311228fa711e0128cc48ed3ef7532890" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.39-1-311228fa711e0128cc48ed3ef7532890/";
    sourceInfo = {
      hash = "sha256-6TP0bTz1DKZQPtAkiQ0JjymuAFTC8KYFlSYqfBxHvro=";
      name = "kmods-airoha_an7583-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.39-1-311228fa711e0128cc48ed3ef7532890/packages.adb";
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
      hash = "sha256-NGviExKWbQCgxTFcWOq1YODOeZAXkZcJyE63BZS+gKY=";
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
