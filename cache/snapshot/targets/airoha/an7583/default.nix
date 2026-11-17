# snapshot airoha/an7583
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/";
  sha256sums = {
    hash = "sha256-ApphY8tQEPQyvjT6bslm5ppcEGXMJLQq+ojmiwymuIE=";
    name = "airoha_an7583-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/sha256sums";
  };
  imagebuilder = {
    sha256 = "56923e78288f68fba929b2b3c49b998ed31f626c44442bbebd87190b10f7c36c";
    filename = "immortalwrt-imagebuilder-airoha-an7583.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-y1CkiEFiIQjyxV5KOjLbTQ44iBIN4fKSWPKoIeu5MsE=";
    name = "airoha_an7583-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "43233f4b3d888cad8e1d33d920960003";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-43233f4b3d888cad8e1d33d920960003";
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
  kmods."6.18.60-1-43233f4b3d888cad8e1d33d920960003" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.60-1-43233f4b3d888cad8e1d33d920960003/";
    sourceInfo = {
      hash = "sha256-NB8NTHmRcbtrLMuBEzRy7u9JS3Gbw1kc/1DcYfBS2JE=";
      name = "kmods-airoha_an7583-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/airoha/an7583/kmods/6.18.60-1-43233f4b3d888cad8e1d33d920960003/packages.adb";
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
      hash = "sha256-DjeMHerBGtLXqAJj+JBZkV+ft/0C38QQw3z/NmnkNwM=";
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
