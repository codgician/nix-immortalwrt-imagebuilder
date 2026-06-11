# snapshot ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-ECWamih5xXdHPF2f0IoZ7/qM36aQEQsmMDXDAWUwGHI=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "3b0a5033ef8e93d0be22477675cc534f848a8b0e51b7813e614b7c2cda7fcb44";
    filename = "immortalwrt-imagebuilder-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-yUaZiLm2DXAJpA/M4iCJl4zivu1WMYFWwxaxopkp23A=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "b1733f0bf4be6cd05c4ef881bdd504f1";
      version = "6.18.34";
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
    kmods_target = "6.18.34-1-b1733f0bf4be6cd05c4ef881bdd504f1";
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
  kmods."6.18.34-1-b1733f0bf4be6cd05c4ef881bdd504f1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.18.34-1-b1733f0bf4be6cd05c4ef881bdd504f1/";
    sourceInfo = {
      hash = "sha256-IbpSr8jDbrq3rDA0Q78h6UIEZrjybsEa94/8TiIQ3XA=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.18.34-1-b1733f0bf4be6cd05c4ef881bdd504f1/packages.adb";
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
      hash = "sha256-4q95pLFUm5te3HFN0VRU8B9yvnkYIIPF9o1Ye17H1ps=";
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
