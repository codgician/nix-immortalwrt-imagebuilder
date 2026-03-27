# 24.10.1 bmips/bcm6368
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6368/";
  sha256sums = {
    hash = "sha256-f/p5OFvKL8sfV1OZfC6QOW2KbDwqTif63lolpFLTs1w=";
    name = "bmips_bcm6368-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6368/sha256sums";
  };
  imagebuilder = {
    sha256 = "91252ce8cceffb60b5c531448ef685b57649f77b6738efb54f5ec7a6f4530c29";
    filename = "immortalwrt-imagebuilder-24.10.1-bmips-bcm6368.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MIgZGbn4oGk5TcNdIzbKpFlpCWVohGGpX/84Qo39OLo=";
    name = "bmips_bcm6368-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6368/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "60a18caf516a58b8830979fe4440dd9b";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-60a18caf516a58b8830979fe4440dd9b";
    profiles = {
      actiontec_r1000h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      comtrend_vr-3025u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      comtrend_vr-3025un = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      comtrend_wap-5813n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4322-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      netgear_dgnd3700-v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      netgear_dgnd3800b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      netgear_evg2000 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4322-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      observa_vh4032n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.86-1-60a18caf516a58b8830979fe4440dd9b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6368/kmods/6.6.86-1-60a18caf516a58b8830979fe4440dd9b/";
    sourceInfo = {
      hash = "sha256-jHLMdSn8Q+GoWg6Kr27bq90LFgSSPAy3/eDheo0kM34=";
      name = "kmods-bmips_bcm6368-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6368/kmods/6.6.86-1-60a18caf516a58b8830979fe4440dd9b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6368/packages/";
    sourceInfo = {
      hash = "sha256-c13mK6ySPBbDS/XEo86c3WceIeVoQ2k5DOib3Hhvz5s=";
      name = "bmips_bcm6368-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6368/packages/Packages";
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
