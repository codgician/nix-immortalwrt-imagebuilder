# 25.12.0-rc2 bmips/bcm6368
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6368/";
  sha256sums = {
    hash = "sha256-YXPamgpyQN+/yWK+nXJMb9jlJmkIEd5VEgy722jR0CQ=";
    name = "bmips_bcm6368-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6368/sha256sums";
  };
  imagebuilder = {
    sha256 = "b0f7d0d156a6a04b7ce80b7cdc56c25d65d58812db839574b1b4d8a60f3cc88c";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bmips-bcm6368.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-PxHBjxdEi/NC66zuV9vXOr2CtXhWvVAId1TnjUA4CBc=";
    name = "bmips_bcm6368-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6368/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "7849cb5d8a2cfd4712abf23862f8f48a";
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
    kmods_target = "6.12.79-1-7849cb5d8a2cfd4712abf23862f8f48a";
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
  kmods."6.12.79-1-7849cb5d8a2cfd4712abf23862f8f48a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6368/kmods/6.12.79-1-7849cb5d8a2cfd4712abf23862f8f48a/";
    sourceInfo = {
      hash = "sha256-SMeVRN/vBX6CDddJw7dBNpo/G3pcQ7o5gCh2Tm+vXxU=";
      name = "kmods-bmips_bcm6368-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6368/kmods/6.12.79-1-7849cb5d8a2cfd4712abf23862f8f48a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6368/packages/";
    sourceInfo = {
      hash = "sha256-omgAh/SCSomb10pNL2zedrcczgxYaSYNlZcz6isPZys=";
      name = "bmips_bcm6368-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6368/packages/packages.adb";
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
