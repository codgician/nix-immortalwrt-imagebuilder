# snapshot bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-M/xcQDnlx603AsrlcdNjQi88yeEIpDHZonqDtT2CTf0=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d399cfa317410f24be2a6f41b844be3fdd1423b6ed4e9926fabc83d29e81ab2e";
    filename = "immortalwrt-imagebuilder-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3Z9jbqXmCKhvKOgmnG6bWE2C1qwtdeNdwaVUx0Wuvjs=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "b2e24e0ac493cfbd2f1298cc6c515527";
      version = "6.18.55";
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
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.18.55-1-b2e24e0ac493cfbd2f1298cc6c515527";
    profiles = {
      linksys_e3000-v1 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v2 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [
          "kmod-b44"
          "kmod-bgmac"
          "kmod-tg3"
        ];
      };
    };
  };
  kmods."6.18.55-1-b2e24e0ac493cfbd2f1298cc6c515527" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.18.55-1-b2e24e0ac493cfbd2f1298cc6c515527/";
    sourceInfo = {
      hash = "sha256-lGN/MmKYABsFK3TbgIGnqXfP8JQHKHYoNB99UTGKrHk=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.18.55-1-b2e24e0ac493cfbd2f1298cc6c515527/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-VUg7ikXYSNKUbHRn1fnS2XDD2+FKcoywLu7VWrZEmmU=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
