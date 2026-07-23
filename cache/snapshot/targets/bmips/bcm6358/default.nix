# snapshot bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-KPpOLpMQ248uHXSRj5P67zFMooDU/fx8x8+3suNwQNY=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "f8c9c52f63182801f2cc1cda8762abcf0d02df81e8609963228bd2a58120f91a";
    filename = "immortalwrt-imagebuilder-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-GXoj9ggZA7I3yoJPxnHv8/ulNEM0KZjKa3r/eXp3MB0=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "96b19228e904f8be78e3b5b6727502c2";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-96b19228e904f8be78e3b5b6727502c2";
    profiles = {
      huawei_hg553 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-a = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-c = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.94-1-96b19228e904f8be78e3b5b6727502c2" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.12.94-1-96b19228e904f8be78e3b5b6727502c2/";
    sourceInfo = {
      hash = "sha256-m6HqPpSvujoo96WAKsw73YQ/ror2TDt1OvKlVgkhXrQ=";
      name = "kmods-bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.12.94-1-96b19228e904f8be78e3b5b6727502c2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-GoQSuBDmeiQ+jOjZz5vCZymBmuCZpaBgU5m8bQLsrPc=";
      name = "bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
