# snapshot bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-rAhUNHJ+/alKm4lPFIGrMW1gVqnd5cg+dvM2xkIe/as=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "ab9bf47b17be43646d9513a89d8753c68aa6a5fa14badf5a591a7d67613fef33";
    filename = "immortalwrt-imagebuilder-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zr7LnBHzasyLz0L7K4l28EuKSX4mp2w5n4g50wJn7uE=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "8b5e43c63ebb73cf5aa68ac100eb41c3";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-8b5e43c63ebb73cf5aa68ac100eb41c3";
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
  kmods."6.12.103-1-8b5e43c63ebb73cf5aa68ac100eb41c3" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.12.103-1-8b5e43c63ebb73cf5aa68ac100eb41c3/";
    sourceInfo = {
      hash = "sha256-iaBqsDP8rMv5yoEURj38X9XIQ6f4HpIoj5ErZLA3NKk=";
      name = "kmods-bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.12.103-1-8b5e43c63ebb73cf5aa68ac100eb41c3/packages.adb";
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
      hash = "sha256-sdKCpISd63vA/6PXIq15ZJWqWL1CMCXuZWO5899UOLk=";
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
