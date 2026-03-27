# snapshot bmips/bcm63268
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-iPJrcHK+a9+Qo2cpxpF7llVwI/WRxE2Hc+ubjVO8ja8=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "6d8082fa4babc343323610ba0522a038ec6677870e209517e4f5f8044dc3c17f";
    filename = "immortalwrt-imagebuilder-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZFx5A4wbZD8ADHtOKDbePdB77vaoke3INEdp/6Weml8=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "71b5329c38390ca14620146e29fa815d";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-71b5329c38390ca14620146e29fa815d";
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
  kmods."6.12.77-1-71b5329c38390ca14620146e29fa815d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/kmods/6.12.77-1-71b5329c38390ca14620146e29fa815d/";
    sourceInfo = {
      hash = "sha256-XkEAdd5IgtJupbByIbaDW+QlpTTTyKmekWjYwlEPSeI=";
      name = "kmods-bmips_bcm63268-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm63268/kmods/6.12.77-1-71b5329c38390ca14620146e29fa815d/packages.adb";
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
      hash = "sha256-ZF0TiiQWenMfO0DN2mADsvowtz/sHdTXf1tDDEML3oA=";
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
