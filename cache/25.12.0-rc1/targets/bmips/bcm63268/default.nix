# 25.12.0-rc1 bmips/bcm63268
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-dZoVf1iMrClGygUGiSYF2r1cQ5doMiqBG48TYqXjo6E=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "9f386b2bacdf6a59845565c6d5b4b97bfdfea189f99eb06ea54959d2c9f13c49";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Pmg7Jvgwm3dsJ95250vbCK1+gA6OX3+nt3UO5mBTXI4=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "7ae10b1e43c3c28caeb54b040bfbc34c";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.74-1-7ae10b1e43c3c28caeb54b040bfbc34c";
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
  kmods."6.12.74-1-7ae10b1e43c3c28caeb54b040bfbc34c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm63268/kmods/6.12.74-1-7ae10b1e43c3c28caeb54b040bfbc34c/";
    sourceInfo = {
      hash = "sha256-IoeMmZLb5kmSMTM0vYGlPGrKrcbyh9UdAKAicWMkfa0=";
      name = "kmods-bmips_bcm63268-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm63268/kmods/6.12.74-1-7ae10b1e43c3c28caeb54b040bfbc34c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-DuyWVrz2LqEV5t+m8oivVJwCGGFAkI6KP/mWbS+q0Ms=";
      name = "bmips_bcm63268-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm63268/packages/packages.adb";
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
