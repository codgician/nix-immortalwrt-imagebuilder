# 24.10.5 bmips/bcm6328
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6328/";
  sha256sums = {
    hash = "sha256-jXyyIuRFf5OOE8LrLBadCKwKlI4lc8rjILtu3doGjtg=";
    name = "bmips_bcm6328-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6328/sha256sums";
  };
  imagebuilder = {
    sha256 = "6e4111887852eeb7b8b7aeb537eac72c86492420c01624d49c3f31ef5ef7e332";
    filename = "immortalwrt-imagebuilder-24.10.5-bmips-bcm6328.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5UaO2TOvjTyMLAFnOVyV3z3QlNb0m2h5ltolmG68+i8=";
    name = "bmips_bcm6328-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6328/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "1083802c2fe8c562aebfb886b2167fd0";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-1083802c2fe8c562aebfb886b2167fd0";
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
      dlink_dsl-2750b-b1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
      innacomm_w3400v6 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4318-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
      inteno_xg6846 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-i2c-core"
          "kmod-i2c-gpio"
          "kmod-leds-bcm6328"
          "kmod-dsa-mv88e6xxx"
          "kmod-sfp"
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
  kmods."6.6.122-1-1083802c2fe8c562aebfb886b2167fd0" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6328/kmods/6.6.122-1-1083802c2fe8c562aebfb886b2167fd0/";
    sourceInfo = {
      hash = "sha256-hyvwIBHdoNAEX6hYGHg+OfN7mZJF71domZ3R76rClJk=";
      name = "kmods-bmips_bcm6328-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6328/kmods/6.6.122-1-1083802c2fe8c562aebfb886b2167fd0/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6328/packages/";
    sourceInfo = {
      hash = "sha256-FGe9c7Iz6NGhGgSyq/SZ8w9MqngOkOHQd5HNx9jiSro=";
      name = "bmips_bcm6328-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6328/packages/Packages";
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
