# snapshot bmips/bcm6368
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/";
  sha256sums = {
    hash = "sha256-RVSeVRT3wyWP8uTxB3jhXqRA8ilfZ13IXrYn8+zqTbg=";
    name = "bmips_bcm6368-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/sha256sums";
  };
  imagebuilder = {
    sha256 = "a5f9106fdd5beae7dc435a9a51c71fe50b33d5a24bca6745fb266ffb97d808df";
    filename = "immortalwrt-imagebuilder-bmips-bcm6368.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dGu/pPKoLyGktdh0tb24fQ4OtIi6u8qhqXO/cgj12Ww=";
    name = "bmips_bcm6368-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "7382051a3c1bc421844fc8b1c135d23b";
      version = "6.12.89";
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
    kmods_target = "6.12.89-1-7382051a3c1bc421844fc8b1c135d23b";
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
  kmods."6.12.89-1-7382051a3c1bc421844fc8b1c135d23b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/kmods/6.12.89-1-7382051a3c1bc421844fc8b1c135d23b/";
    sourceInfo = {
      hash = "sha256-aJydfXOfzXtAVbMyOKkFT/aLbQLqf0GoJzHzKc/b6uk=";
      name = "kmods-bmips_bcm6368-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/kmods/6.12.89-1-7382051a3c1bc421844fc8b1c135d23b/packages.adb";
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
      hash = "sha256-AmC1Fs0yY99FtJt2uEg/GOlfbvNF1MITl8F8WVlRlGM=";
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
