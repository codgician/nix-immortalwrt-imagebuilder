# 23.05.4 bmips/bcm6328
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6328/";
  sha256sums = {
    hash = "sha256-SwrqkAZjslo5jKrxtQ7/I7ASyp3YXy0UuEaBBxiWFH4=";
    name = "bmips_bcm6328-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6328/sha256sums";
  };
  imagebuilder = {
    sha256 = "45e92bc9db5f0b735b8f7a4f2da5902da8e59febc6125f641bdb01f05e46f535";
    filename = "immortalwrt-imagebuilder-23.05.4-bmips-bcm6328.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-HgFlRKhpeKp65bR0vI67XZlySFBycL9PCfSxdYv027w=";
    name = "bmips_bcm6328-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6328/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6328/packages/";
    sourceInfo = {
      hash = "sha256-V54LLb8ZYHnm3uo1pu4yOPCfIAVpSDAmYXFjsn646dw=";
      name = "bmips_bcm6328-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6328/packages/Packages";
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
