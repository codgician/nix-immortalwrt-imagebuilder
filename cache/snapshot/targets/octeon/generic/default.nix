# snapshot octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-wUE2yawQlnrc2xF/SGhLjnwtIPcaFLEuILl8kWqPXKU=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6fe3024197c8e7db9cbf4f5eae0fb5cbd5b5a3306b8efccdc33c764a9d9e9588";
    filename = "immortalwrt-imagebuilder-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UDTVB21dQje1DzqPiuVwp3yupQJJFpbFTpvYOvWUrYk=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "b5fb4e94946c07cf0e4624829866d658";
      version = "6.12.89";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "kmod-usb-dwc3-octeon"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
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
    kmods_target = "6.12.89-1-b5fb4e94946c07cf0e4624829866d658";
    profiles = {
      cisco_vedge1000 = {
        device_packages = [
          "blkid"
          "kmod-hwmon-jc42"
          "kmod-hwmon-max6697"
          "kmod-of-mdio"
          "kmod-rtc-ds1307"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
          "kmod-usb3"
          "sfdisk"
          "uboot-envtools"
        ];
      };
      generic = {
        device_packages = [ ];
      };
      itus_shield-router = {
        device_packages = [ ];
      };
      ubnt_edgerouter = {
        device_packages = [ ];
      };
      ubnt_edgerouter-4 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-6p = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-lite = {
        device_packages = [ ];
      };
      ubnt_unifi-usg = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.89-1-b5fb4e94946c07cf0e4624829866d658" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.12.89-1-b5fb4e94946c07cf0e4624829866d658/";
    sourceInfo = {
      hash = "sha256-Eh7F6xEs031ZGOU+7opfLRdg9F+ubMFtthmWqQIpWAY=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.12.89-1-b5fb4e94946c07cf0e4624829866d658/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-FIgQYTcfeNQGjdeBpgVqQvYnzjmwutEE+edjPw6Gp/4=";
      name = "octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64_octeonplus";
  feeds = import ./../../../packages/mips64_octeonplus.nix;
}
