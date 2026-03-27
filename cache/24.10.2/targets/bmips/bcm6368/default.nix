# 24.10.2 bmips/bcm6368
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6368/";
  sha256sums = {
    hash = "sha256-3R1aWv2BvPOYu7tiSWQHjC+b22JxpxSeRKoNlxH7h4M=";
    name = "bmips_bcm6368-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6368/sha256sums";
  };
  imagebuilder = {
    sha256 = "ec7fd6884c87fdfd358a7490742e72c89cd7d7164703d4421f50103fc3b0af98";
    filename = "immortalwrt-imagebuilder-24.10.2-bmips-bcm6368.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Tm5UFKsg9426Lf65b+JSTAlp+Qfj7rUZD+mFJgWoQBI=";
    name = "bmips_bcm6368-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6368/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "b51fbcb539cd77921e90861c97d047bd";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-b51fbcb539cd77921e90861c97d047bd";
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
  kmods."6.6.93-1-b51fbcb539cd77921e90861c97d047bd" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6368/kmods/6.6.93-1-b51fbcb539cd77921e90861c97d047bd/";
    sourceInfo = {
      hash = "sha256-1+FKClXeVfDnT5MHoz/u95An3Fk3K843Czk40Ov0zCs=";
      name = "kmods-bmips_bcm6368-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6368/kmods/6.6.93-1-b51fbcb539cd77921e90861c97d047bd/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6368/packages/";
    sourceInfo = {
      hash = "sha256-gXB5Be33rAfq1iCMxxv1PMIkZmdCGDNm4CEBbJ0FQmg=";
      name = "bmips_bcm6368-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bmips/bcm6368/packages/Packages";
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
