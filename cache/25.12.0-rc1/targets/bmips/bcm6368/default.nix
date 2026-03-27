# 25.12.0-rc1 bmips/bcm6368
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6368/";
  sha256sums = {
    hash = "sha256-SdGtmP2CeL3T3GWRkI4lt31DfUj9SrE1JsRoMCB+Y1o=";
    name = "bmips_bcm6368-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6368/sha256sums";
  };
  imagebuilder = {
    sha256 = "fc4d694a1bb0db4c93469db28b0b20529a51b00101b200d33644cc60d18548d9";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bmips-bcm6368.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-TKL3LeqWGX4wx5TvKaoDVEYm+1OLlQBeAlcEJUTcXnw=";
    name = "bmips_bcm6368-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6368/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "6bc1c42544fce673a050676037523cda";
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
    kmods_target = "6.12.74-1-6bc1c42544fce673a050676037523cda";
    profiles = {
      actiontec_r1000h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
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
        ];
      };
    };
  };
  kmods."6.12.74-1-6bc1c42544fce673a050676037523cda" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6368/kmods/6.12.74-1-6bc1c42544fce673a050676037523cda/";
    sourceInfo = {
      hash = "sha256-OwdL7OlPw8pqV7G/b3/c/XQEUp+JgSeJTtxzsV8PA2c=";
      name = "kmods-bmips_bcm6368-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6368/kmods/6.12.74-1-6bc1c42544fce673a050676037523cda/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6368/packages/";
    sourceInfo = {
      hash = "sha256-QHGrjSbdbKB7B9rewo3BjYttxzJ6n8VIpc3zRHDS7Iw=";
      name = "bmips_bcm6368-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6368/packages/packages.adb";
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
