# snapshot bmips/bcm6368
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/";
  sha256sums = {
    hash = "sha256-UckuRnL4JClRD+dNWS2lRjAEGu8BkYxTM7Oo6H9Ty2Q=";
    name = "bmips_bcm6368-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/sha256sums";
  };
  imagebuilder = {
    sha256 = "b9b631db015ad8e2b70011ee6237f8beecbe38f7bc0e567cfc50c8fc13f39439";
    filename = "immortalwrt-imagebuilder-bmips-bcm6368.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jr6cwDyJNAVIuG4ijD6gwVhWkKTfbZx+la2m/5/O1oU=";
    name = "bmips_bcm6368-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "989ededc445777e3b5f723c3ecea1350";
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
    kmods_target = "6.12.92-1-989ededc445777e3b5f723c3ecea1350";
    profiles = {
      actiontec_r1000h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      comtrend_vr-3025u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
        ];
      };
      comtrend_vr-3025un = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
        ];
      };
      comtrend_wap-5813n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4322-sprom"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3800b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      netgear_evg2000 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4322-sprom"
          "kmod-leds-gpio"
        ];
      };
      observa_vh4032n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.92-1-989ededc445777e3b5f723c3ecea1350" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/kmods/6.12.92-1-989ededc445777e3b5f723c3ecea1350/";
    sourceInfo = {
      hash = "sha256-AQ46/WGMHR7h17cekoJIqBS/eKSaVwhlFh54UXLnpeI=";
      name = "kmods-bmips_bcm6368-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/kmods/6.12.92-1-989ededc445777e3b5f723c3ecea1350/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/packages/";
    sourceInfo = {
      hash = "sha256-Cncqi9ImtrdxFIt32hbOlzFDEJjBbsCfTCi6g4MP88k=";
      name = "bmips_bcm6368-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/packages/packages.adb";
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
