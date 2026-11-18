# snapshot ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-sUafkGc72xMic0SSqFLOWzXpmfxXSuKwcx9RlzuLme8=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "c4d3db581197c73253b0283535e3bce63a459df032d173e9e80b18c52de611f1";
    filename = "immortalwrt-imagebuilder-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-By4F/t6YHrchr4oSiwyLJlBqZTePBdkKlChMaxBt2S8=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "a7274fdb9d2ac8aea6817f29db60dc72";
      version = "6.18.60";
    };
    default_packages = [
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
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.18.60-1-a7274fdb9d2ac8aea6817f29db60dc72";
    profiles = {
      asus_rt-n65u = {
        device_packages = [
          "kmod-usb3"
          "kmod-usb-ledtrig-usbport"
          "kmod-switch-rtl8367b"
        ];
      };
      belkin_f9k1109v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-645 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      edimax_br-6475nd = {
        device_packages = [ ];
      };
      engenius_esr600h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "uboot-envtools"
        ];
      };
      omnima_hpm = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      samsung_cy-swr1100 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      trendnet_tew-691gr = {
        device_packages = [ ];
      };
      trendnet_tew-692gr = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.60-1-a7274fdb9d2ac8aea6817f29db60dc72" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.18.60-1-a7274fdb9d2ac8aea6817f29db60dc72/";
    sourceInfo = {
      hash = "sha256-Hnm5BUNdhExiplWQc1a5DPi0kIucfAAOXpgHwCg9+tc=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.18.60-1-a7274fdb9d2ac8aea6817f29db60dc72/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-aertq8B866FPIiBkYOu64LBN1vKAJ9KCRWNeNy7FIE8=";
      name = "ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_74kc";
  feeds = import ./../../../packages/mipsel_74kc.nix;
}
