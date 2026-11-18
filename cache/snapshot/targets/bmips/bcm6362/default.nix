# snapshot bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-bOU5Su2ieSX7gSzUuQgf4cGCfhkFNoP17gJ4pyvJRxQ=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "534d4f41b9acaffece318257f28b9a17724850e4e580c7b84d2d5c1ce3070f3d";
    filename = "immortalwrt-imagebuilder-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nK2hlq4dCx8X4l/v1xSHsyXabcBps2aYqW7qyjxDSBA=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "a9c39a81f6b555045021054d10f529ae";
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
    kmods_target = "6.18.60-1-a9c39a81f6b555045021054d10f529ae";
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
  kmods."6.18.60-1-a9c39a81f6b555045021054d10f529ae" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.18.60-1-a9c39a81f6b555045021054d10f529ae/";
    sourceInfo = {
      hash = "sha256-TV6OdS4+zUPQJdb7vqIUSVBPTOrMLHilxfR7N9yyuFA=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.18.60-1-a9c39a81f6b555045021054d10f529ae/packages.adb";
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
      hash = "sha256-vmxfWKybrKSjhPzfOHFTy3j1iBZImL29+I44q9rMHkM=";
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
