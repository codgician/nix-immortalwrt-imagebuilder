# snapshot bmips/bcm63268
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-I0G/gnPM8o5sAcf2QZbwhrMYBjCkNt0bHdelbhoybqs=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "eab44e8b4403f52f6f60cd9124bd7dfa7680713ea157f3cb38625e5295b02feb";
    filename = "immortalwrt-imagebuilder-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-IWyzJON5t7GlwWMpTJjeMEVC8R/GtUsj/PQg/xvsXHQ=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "6c0f0128449440a75329548bb594cb1c";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-6c0f0128449440a75329548bb594cb1c";
    profiles = {
      actiontec_t1200h = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-gpio"
        ];
      };
      comtrend_vg-8050 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
      comtrend_vr-3032u = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
      sagem_fast-3864-op = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-gpio"
          "kmod-leds-bcm6328"
        ];
      };
      sercomm_h500-s-lowi = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
      sercomm_h500-s-vfes = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
      sercomm_shg2500 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "broadcom-4360-sprom"
          "kmod-i2c-gpio"
          "kmod-leds-sercomm-msp430"
        ];
      };
      smartrg_sr505n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
    };
  };
  kmods."6.12.94-1-6c0f0128449440a75329548bb594cb1c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/kmods/6.12.94-1-6c0f0128449440a75329548bb594cb1c/";
    sourceInfo = {
      hash = "sha256-n1ZemygZ5+mO5eZGRXZY4UYIxwEtkCcF8HfbYBt2Jpw=";
      name = "kmods-bmips_bcm63268-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/kmods/6.12.94-1-6c0f0128449440a75329548bb594cb1c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-Yg1SluJlVFYS2cR9nPD+ektC3d90dCPXud0kmz+6qp0=";
      name = "bmips_bcm63268-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/packages/packages.adb";
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
