# 25.12.0 bmips/bcm63268
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-KJ2YDlW+3No5A9cZ1KkUXWsm2duMdj1U+YrFPDNMqaM=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "d8f12b0b02ee987ea80f9f94d2294bacef24e5f3f5a490b961b558cc95d443a0";
    filename = "immortalwrt-imagebuilder-25.12.0-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MfhzNW2Im/odL/kC9j7KPT609izykKdgbqKpBltkcl0=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "ca5578d145e2023ee7026b65c3aa05ae";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-ca5578d145e2023ee7026b65c3aa05ae";
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
  kmods."6.12.87-1-ca5578d145e2023ee7026b65c3aa05ae" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm63268/kmods/6.12.87-1-ca5578d145e2023ee7026b65c3aa05ae/";
    sourceInfo = {
      hash = "sha256-XwGb/+KvzyuSg57US/LJxLJap1KyW0O2odjwZei4CWY=";
      name = "kmods-bmips_bcm63268-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm63268/kmods/6.12.87-1-ca5578d145e2023ee7026b65c3aa05ae/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-KUIiN8bECWgG4mGABBu3T5DyM+1kY+vZMlOjjdLJ2/E=";
      name = "bmips_bcm63268-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bmips/bcm63268/packages/packages.adb";
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
