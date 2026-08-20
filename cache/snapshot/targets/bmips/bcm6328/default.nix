# snapshot bmips/bcm6328
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6328/";
  sha256sums = {
    hash = "sha256-NVuUiWrIA2k+hk5I4byYga9TARENlVVa3gBWxhEE3tw=";
    name = "bmips_bcm6328-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6328/sha256sums";
  };
  imagebuilder = {
    sha256 = "dcac643109cda92bb00205d620c0390a2136fdac61818e54bbd8918dff5a2494";
    filename = "immortalwrt-imagebuilder-bmips-bcm6328.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-P5MXobpcdBVn27ufirTDdeTXWm7BOzUEBCam3rAQZcs=";
    name = "bmips_bcm6328-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6328/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "9c75e21f1222c1950ea93a66e05cabf7";
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
    kmods_target = "6.12.103-1-9c75e21f1222c1950ea93a66e05cabf7";
    profiles = {
      arcadyan_ar7516 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43227-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      comtrend_ar-5381u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43225-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      comtrend_ar-5387un = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43225-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      dlink_dsl-2750b-b1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "kmod-leds-bcm6328"
        ];
      };
      innacomm_w3400v6 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4318-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      inteno_xg6846 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-i2c-core"
          "kmod-i2c-gpio"
          "kmod-leds-bcm6328"
          "kmod-dsa-mv88e6xxx"
          "kmod-sfp"
        ];
      };
      nucom_r5010unv2 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      sercomm_ad1018 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
    };
  };
  kmods."6.12.103-1-9c75e21f1222c1950ea93a66e05cabf7" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6328/kmods/6.12.103-1-9c75e21f1222c1950ea93a66e05cabf7/";
    sourceInfo = {
      hash = "sha256-5B9wE8BC5FauBwKQM6LjCqyVWPd0wmRcMvnUQb7AgUg=";
      name = "kmods-bmips_bcm6328-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6328/kmods/6.12.103-1-9c75e21f1222c1950ea93a66e05cabf7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6328/packages/";
    sourceInfo = {
      hash = "sha256-qeRlZNNHVAgMAINKSvbI/rr/MtDoPrryolUf+eQoCdE=";
      name = "bmips_bcm6328-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6328/packages/packages.adb";
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
