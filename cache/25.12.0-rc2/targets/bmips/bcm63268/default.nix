# 25.12.0-rc2 bmips/bcm63268
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-G0Mdw+4gLhT7Q4bd7f6+8gWwY/cWyDTMOHxJncse6uI=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "fa2d80503be887a6fcad289f14cbeca9e865a2734da942cb018e2a211d18332e";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OwHDiN+YOSfDbSes5umuR6OxBDkJj73arUOYfcEytEE=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "07e08e8fa56a08f1c2507f6e6f97c704";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-07e08e8fa56a08f1c2507f6e6f97c704";
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
  kmods."6.12.79-1-07e08e8fa56a08f1c2507f6e6f97c704" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm63268/kmods/6.12.79-1-07e08e8fa56a08f1c2507f6e6f97c704/";
    sourceInfo = {
      hash = "sha256-NUz3mh5lSlWEjj2TQeERcSiQcQfnmjsAgpAIvwizPxg=";
      name = "kmods-bmips_bcm63268-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm63268/kmods/6.12.79-1-07e08e8fa56a08f1c2507f6e6f97c704/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-/EECmyzgpUhwNFVRMhokfotOFnepuqEEYNLSK6DztZc=";
      name = "bmips_bcm63268-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm63268/packages/packages.adb";
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
