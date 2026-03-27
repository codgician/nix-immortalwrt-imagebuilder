# 24.10.0 bmips/bcm6328
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6328/";
  sha256sums = {
    hash = "sha256-Do0vOMLSYFD59BlOrJHprNQkt1dx/sTnG2A2WY1DYxY=";
    name = "bmips_bcm6328-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6328/sha256sums";
  };
  imagebuilder = {
    sha256 = "6b70de790e20aa681f5418de3870f7925ac9542312de92065ea32956a8cbbe7f";
    filename = "immortalwrt-imagebuilder-24.10.0-bmips-bcm6328.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bL/Taa8W35CQRlMQDJ6DphK/bRHiy8OZZ3BJgI4vCZk=";
    name = "bmips_bcm6328-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6328/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "d9aef9e53eb9421f6fa5d0864763c1db";
      version = "6.6.73";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-d9aef9e53eb9421f6fa5d0864763c1db";
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
        ];
      };
      innacomm_w3400v6 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4318-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.73-1-d9aef9e53eb9421f6fa5d0864763c1db" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6328/kmods/6.6.73-1-d9aef9e53eb9421f6fa5d0864763c1db/";
    sourceInfo = {
      hash = "sha256-EPtcgiGUfy61YEXFASl+gdEUnaob8r5011thhAZRmkU=";
      name = "kmods-bmips_bcm6328-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6328/kmods/6.6.73-1-d9aef9e53eb9421f6fa5d0864763c1db/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6328/packages/";
    sourceInfo = {
      hash = "sha256-E4XlpIk2LkcywaD/Y2hpNu6aAlxE0fTlOYycekVJ1Js=";
      name = "bmips_bcm6328-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6328/packages/Packages";
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
