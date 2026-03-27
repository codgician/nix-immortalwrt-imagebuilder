# 24.10.3 bmips/bcm63268
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-M2rVC1bryTAFwNIl4HefwHFg6ZsG8V5mXf+Oxroq+aM=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "d7650d177ab8e0aa9f6057a4670eb9d6458d3b6ccdc3db3cba1a337aa459dc17";
    filename = "immortalwrt-imagebuilder-24.10.3-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sJeOldUTCQTHSpkLbnaPO1QPPqomwSQA0/7r14TKjoc=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "d73df35f09780f99591d127bb0d828ff";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-d73df35f09780f99591d127bb0d828ff";
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
  kmods."6.6.104-1-d73df35f09780f99591d127bb0d828ff" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm63268/kmods/6.6.104-1-d73df35f09780f99591d127bb0d828ff/";
    sourceInfo = {
      hash = "sha256-pO6lmt89VOVboobmLeleffTfpp995tCxTuN9X1JlaWQ=";
      name = "kmods-bmips_bcm63268-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm63268/kmods/6.6.104-1-d73df35f09780f99591d127bb0d828ff/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-A1I/iSwcrbEXFZwzLaCMWRLGeuqfATbLBE8vHQB45No=";
      name = "bmips_bcm63268-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm63268/packages/Packages";
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
