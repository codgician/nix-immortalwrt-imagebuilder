# snapshot bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-3QJyUlB43SgcaJjfD3NcPJqfnS+3942w0N2g5w8W/JI=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "4fc4842a1639d24566b9785e222f77fa51660f3f67052d03e9a227e5d73ce8c2";
    filename = "immortalwrt-imagebuilder-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4DcAuy3b+saBbTvBcsNAs9LJyBAgJPSHw0PaF+Pwz/I=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "8335343a68cfed12e59012bc6eef64dc";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-8335343a68cfed12e59012bc6eef64dc";
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
  kmods."6.18.60-1-8335343a68cfed12e59012bc6eef64dc" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.18.60-1-8335343a68cfed12e59012bc6eef64dc/";
    sourceInfo = {
      hash = "sha256-eywlGLw0tPCFCvE7ig4bBrG6BNNIjUYkZY2lrLjXm88=";
      name = "kmods-bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.18.60-1-8335343a68cfed12e59012bc6eef64dc/packages.adb";
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
      hash = "sha256-p9VGwCr1Bkh2Sj0uOwT9PJq9JHCHBEw0vVI5catc4fY=";
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
