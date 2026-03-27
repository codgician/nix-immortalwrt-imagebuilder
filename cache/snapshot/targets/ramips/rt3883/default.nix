# snapshot ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-/qv2FWVz0tnnsnPtcnpn/lkemVrdAYpmaPuJJL/d1A0=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "24586f1bffbf2b43c82259fbff9a43a1fbadb1f872d27ee939dba5064884a4dc";
    filename = "immortalwrt-imagebuilder-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-K+Jyf/AZ8s3TO2OmoKo4sZexiiiX8Yvjquycb7XjzpE=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "bd8a9422b03ba3eb01412612865aa3d3";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-bd8a9422b03ba3eb01412612865aa3d3";
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
  kmods."6.12.77-1-bd8a9422b03ba3eb01412612865aa3d3" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.12.77-1-bd8a9422b03ba3eb01412612865aa3d3/";
    sourceInfo = {
      hash = "sha256-kJS2r+8oCltT8XTHwIPYO5H01dz5lUaEfMsr0eyYtmM=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.12.77-1-bd8a9422b03ba3eb01412612865aa3d3/packages.adb";
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
      hash = "sha256-z7DYLEejFm2VmEkF7zSkJr9/MX46aoc84aqQAB5dsBQ=";
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
