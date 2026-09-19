# snapshot bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-iil0hqGH5RCBbxmatAjQn9epVVWi7jv91kMJYXzIbWs=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "93d13c2bebd347bfab46e08e0ff7ff7825a6f47f1a42585537049c7cd0a8f197";
    filename = "immortalwrt-imagebuilder-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-0D7oUwaKpRnR+/pZfbSqelQXxU1A5eNWmKzkPQskfa8=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "d15076902569dbfcf6322cf0f3220877";
      version = "6.12.108";
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
    kmods_target = "6.12.108-1-d15076902569dbfcf6322cf0f3220877";
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
  kmods."6.12.108-1-d15076902569dbfcf6322cf0f3220877" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.12.108-1-d15076902569dbfcf6322cf0f3220877/";
    sourceInfo = {
      hash = "sha256-TCZnE3JvBVl6XA4Q8Ny5oN4TEAWDNenikgHQgGiinzc=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.12.108-1-d15076902569dbfcf6322cf0f3220877/packages.adb";
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
      hash = "sha256-pFQJV0XoKbxG7tUjZSedzIxdfnZWW0SH5aeiSpruuNU=";
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
