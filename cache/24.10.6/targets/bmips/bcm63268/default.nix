# 24.10.6 bmips/bcm63268
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-aS/SkosppzZOhZzEGMMMSdJ6FnwWXRzvSU6vE29yiD0=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "5b2f8d83e490a677dc27fdd3b9cf46bd3bc0cde860b444bd6fbc1dcfa8483c20";
    filename = "immortalwrt-imagebuilder-24.10.6-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Shpvuz8V6xV47EZr+V8wAvwxaRwYPybCvWLBT1RWRAw=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "bf1364f9584ec6b4a4f22d78d79d093d";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-bf1364f9584ec6b4a4f22d78d79d093d";
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
  kmods."6.6.133-1-bf1364f9584ec6b4a4f22d78d79d093d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm63268/kmods/6.6.133-1-bf1364f9584ec6b4a4f22d78d79d093d/";
    sourceInfo = {
      hash = "sha256-dL5eNYobbBZrKoy9g4kOC0Pylh+pPDQ0pPKccN60rSk=";
      name = "kmods-bmips_bcm63268-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm63268/kmods/6.6.133-1-bf1364f9584ec6b4a4f22d78d79d093d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-h8NQmIYBxmWTSzUocF+olT9NY6SgDJwUwITEFfiA0kg=";
      name = "bmips_bcm63268-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm63268/packages/Packages";
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
