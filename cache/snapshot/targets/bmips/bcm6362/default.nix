# snapshot bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-FTzXimbpWY+mclF6ETRmqn5XdIAJC75GzkfzLSMljoA=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "cdebc3c0ca4812d05b7eae0f2a81e2c589ff97bb75159cbc7ec4802029395fdc";
    filename = "immortalwrt-imagebuilder-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zliM5rQPm5z6UBR2GIpPDJAreroNWE49/hOiZpY+6k8=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "9562c32fe1b5d60b1839203078c69251";
      version = "6.12.92";
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
    kmods_target = "6.12.92-1-9562c32fe1b5d60b1839203078c69251";
    profiles = {
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.92-1-9562c32fe1b5d60b1839203078c69251" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.12.92-1-9562c32fe1b5d60b1839203078c69251/";
    sourceInfo = {
      hash = "sha256-D8Yq/a40QyNe+ZbJjxb1YHkZVZRIl9hFyYAqgADXHNA=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.12.92-1-9562c32fe1b5d60b1839203078c69251/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-goCs1HkNifhJ317blHcvt0mX3Vy4Wudy9XuqHZmuXc8=";
      name = "bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/packages/packages.adb";
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
