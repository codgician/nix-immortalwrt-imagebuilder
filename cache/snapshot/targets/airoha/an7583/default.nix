# snapshot airoha/an7583
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/";
  sha256sums = {
    hash = "sha256-jhr69gE6sAenbTFe9Ho0wttPRmdMsY5aLoGMR6QSXLo=";
    name = "airoha_an7583-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/sha256sums";
  };
  imagebuilder = {
    sha256 = "2d04f26b50db4d9dc9111d985f8c1eec8ca288ae1fa48dbd4a915417851311ed";
    filename = "immortalwrt-imagebuilder-airoha-an7583.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-93xSOMQhSDYlijlNPBn7GLtAj3qZHlnQk7A8HF1yO+4=";
    name = "airoha_an7583-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "69bf3ff79605836797421612f1f53840";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-69bf3ff79605836797421612f1f53840";
    profiles = {
      airoha_an7583-evb = {
        device_packages = [
          "aeonsemi-as21xxx-firmware"
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
  kmods."6.18.52-1-69bf3ff79605836797421612f1f53840" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.52-1-69bf3ff79605836797421612f1f53840/";
    sourceInfo = {
      hash = "sha256-52JJMtFqOPvwMhBglizklW8AO6o+eArn8piRgp9hGTk=";
      name = "kmods-airoha_an7583-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.52-1-69bf3ff79605836797421612f1f53840/packages.adb";
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
      hash = "sha256-Mf0Cl0lfx1BOxC1kktXHSAFmijc6Sy4yACl3hpLfNtk=";
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
