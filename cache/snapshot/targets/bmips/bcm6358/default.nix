# snapshot bmips/bcm6358
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-PCutCagFdDG5XnF5xaBRJPhRMacMg9AbI7Z/cWAuIfA=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "6c91cf6b120247e04898b81fbfeb6adb9972fb3d5891f253444c84b0874da7cf";
    filename = "immortalwrt-imagebuilder-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hofuOy/7Lp1y1cVrfepZk0tILkaWz4W6L1Q59ZjPYtw=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "31b2cfb208f414160fb0e34171c43e43";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-31b2cfb208f414160fb0e34171c43e43";
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
  kmods."6.12.67-1-31b2cfb208f414160fb0e34171c43e43" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6358/kmods/6.12.67-1-31b2cfb208f414160fb0e34171c43e43/";
    sourceInfo = {
      hash = "sha256-lexmyiiuZ1wvL+tQGLBetLa32djbIL4k60VM+8JvZmI=";
      name = "kmods-bmips_bcm6358-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6358/kmods/6.12.67-1-31b2cfb208f414160fb0e34171c43e43/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-g6bnXb3j0omuabTlJJLcfpkIN5A9nFb+iX013lYjPHw=";
      name = "bmips_bcm6358-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6358/packages/packages.adb";
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
