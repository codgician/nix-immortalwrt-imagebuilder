# snapshot bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-i8kYfEP98G16HY1rW7mZDAc+HoyaivV6JeTWsPToI4I=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "0062e91873c242dceb004b772f8c5245e6eb8e3dfd6767095fc38e34d63b9901";
    filename = "immortalwrt-imagebuilder-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-iuAlhC/4UobK2I6HFfSHHbCWmQLzq5Ky0bHq+eYrQV4=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "e72b8e98d9da11abbceec3ff48003b8e";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-e72b8e98d9da11abbceec3ff48003b8e";
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
  kmods."6.12.74-1-e72b8e98d9da11abbceec3ff48003b8e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.12.74-1-e72b8e98d9da11abbceec3ff48003b8e/";
    sourceInfo = {
      hash = "sha256-q/ey++GT8UFBMEmOq5+/RiB1rjPsICPHaSM7TWTO7NA=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.12.74-1-e72b8e98d9da11abbceec3ff48003b8e/packages.adb";
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
      hash = "sha256-s7pVSNnCjXOWGoTH7MFdrIkR//8W9nI9vESsc2hOt+A=";
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
