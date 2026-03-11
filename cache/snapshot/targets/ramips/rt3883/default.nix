# snapshot ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-qkKxsIanGaptvezMgs/wjUqhN8ggUpEcgkAolceept4=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "e6f86d8d3ddc45a6fbae9a1789daff6694ddbb10fe6db3eeb43e0c40181214ad";
    filename = "immortalwrt-imagebuilder-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8NDCeJgvdY6IggvMYFyxXQGpE1bf5VUH0ulumKb9yXc=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "65bacb8ad46a7207c16a827097fee267";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-65bacb8ad46a7207c16a827097fee267";
    profiles = {
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
  kmods."6.12.74-1-65bacb8ad46a7207c16a827097fee267" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.12.74-1-65bacb8ad46a7207c16a827097fee267/";
    sourceInfo = {
      hash = "sha256-OduTRSSGGqzuc04a6ysfJyZcd7uhUuRudCuAJ6B8czE=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.12.74-1-65bacb8ad46a7207c16a827097fee267/packages.adb";
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
      hash = "sha256-cmuw9scMT9A3FQbBvl9F0VCEnSi0G6meVgwnyU+WmOg=";
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
