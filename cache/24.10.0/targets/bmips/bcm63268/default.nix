# 24.10.0 bmips/bcm63268
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-Btgc20/8BUAnqllo+Ki8i+ezySedtgZPPaGhRcr/Yjs=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "4b0199a9fa17319a16f163e066366845aa082f5621329dd7e56df29726758212";
    filename = "immortalwrt-imagebuilder-24.10.0-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4npnr9rrvuVn2jTPPo7DBXG0rW2eKh3FuK1pDg7Qnfw=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "9f4288b310e9274b01f81c582cd90b5c";
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
    kmods_target = "6.6.73-1-9f4288b310e9274b01f81c582cd90b5c";
    profiles = {
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
  kmods."6.6.73-1-9f4288b310e9274b01f81c582cd90b5c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm63268/kmods/6.6.73-1-9f4288b310e9274b01f81c582cd90b5c/";
    sourceInfo = {
      hash = "sha256-PGSZhTJwrdSOlbe5g0/skVuOcRrDP0F7oCKdVC1gWrI=";
      name = "kmods-bmips_bcm63268-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm63268/kmods/6.6.73-1-9f4288b310e9274b01f81c582cd90b5c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-mgUErh3L93r9VlO6vP3rwpkq8t3KHjO5qp7xFTt+jRM=";
      name = "bmips_bcm63268-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm63268/packages/Packages";
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
