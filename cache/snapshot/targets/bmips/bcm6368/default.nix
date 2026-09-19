# snapshot bmips/bcm6368
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/";
  sha256sums = {
    hash = "sha256-BeUpy9L9akWY69CrsIb+2/HlOUTeoe5Rl5PvLxT8QBc=";
    name = "bmips_bcm6368-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/sha256sums";
  };
  imagebuilder = {
    sha256 = "9afaea9f6303bbb17a8bceb29a65f73bb35f3bedcc13871c0f2843ec2409a9ec";
    filename = "immortalwrt-imagebuilder-bmips-bcm6368.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Gb4uC829cSkiiuW9Z3OB+vfnmI4PTcpckxK8VdmpPs8=";
    name = "bmips_bcm6368-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "0a3ada29649b567169aa4429da4c2dac";
      version = "6.12.108";
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
    kmods_target = "6.12.108-1-0a3ada29649b567169aa4429da4c2dac";
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
  kmods."6.12.108-1-0a3ada29649b567169aa4429da4c2dac" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/kmods/6.12.108-1-0a3ada29649b567169aa4429da4c2dac/";
    sourceInfo = {
      hash = "sha256-zWxvbuFJALMspVPcGm7sIrZQ5qi6MEVCOSNvHDj3dog=";
      name = "kmods-bmips_bcm6368-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/kmods/6.12.108-1-0a3ada29649b567169aa4429da4c2dac/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/packages/";
    sourceInfo = {
      hash = "sha256-0/v90dWAgidpL9RpTwxClx1QaZMKxpEssGHwDUuPu6U=";
      name = "bmips_bcm6368-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6368/packages/packages.adb";
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
