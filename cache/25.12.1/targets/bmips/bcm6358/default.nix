# 25.12.1 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-kGt6t1f95GZlhN/wq6rdLZ0rAK72DUTYmnzb17zSC5w=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "ca87baea9984e2481db3cf32eebe4594187bacff26fc30eef48b5ddacd219c10";
    filename = "immortalwrt-imagebuilder-25.12.1-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-yM6F8V1sRE3AgPvKdGygW6FXOTfn6hwP5+lMf/sCsSY=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "5fd9a9910776939c36dbd3bc8bfcc3ea";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.94-1-5fd9a9910776939c36dbd3bc8bfcc3ea";
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
  kmods."6.12.94-1-5fd9a9910776939c36dbd3bc8bfcc3ea" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bmips/bcm6358/kmods/6.12.94-1-5fd9a9910776939c36dbd3bc8bfcc3ea/";
    sourceInfo = {
      hash = "sha256-cOOXEfs5e3B6AkBPpE4RcnqkGq1vKCY88/uMU58sNFE=";
      name = "kmods-bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bmips/bcm6358/kmods/6.12.94-1-5fd9a9910776939c36dbd3bc8bfcc3ea/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-e455wndfRaE9+CD6bvtF/dPZCy/49Oa4j+KMMAgVnjI=";
      name = "bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bmips/bcm6358/packages/packages.adb";
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
