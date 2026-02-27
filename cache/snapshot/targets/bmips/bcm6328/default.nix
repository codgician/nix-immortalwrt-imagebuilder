# snapshot bmips/bcm6328
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6328/";
  sha256sums = {
    hash = "sha256-6p5PuyrtmnLozN8MXXyuHlYH4Er3cX12wwlVUx/vW9Q=";
    name = "bmips_bcm6328-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6328/sha256sums";
  };
  imagebuilder = {
    sha256 = "149855bab9e6b8c7a32ccb4e059a61744a223f0212effe4b88de6e68da3b79af";
    filename = "immortalwrt-imagebuilder-bmips-bcm6328.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-fmwIDKfP3GMAFrKliZ3UYy5Otew5t4TT4ywGknwHjHE=";
    name = "bmips_bcm6328-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6328/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "32dfaf3f6da789fe05805a69ce1deafc";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-32dfaf3f6da789fe05805a69ce1deafc";
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
        ];
      };
      innacomm_w3400v6 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4318-sprom"
          "kmod-leds-bcm6328"
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
        ];
      };
    };
  };
  kmods."6.12.67-1-32dfaf3f6da789fe05805a69ce1deafc" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6328/kmods/6.12.67-1-32dfaf3f6da789fe05805a69ce1deafc/";
    sourceInfo = {
      hash = "sha256-UNYfzjJoEsss5mvYV2cSBkbuTZsK3iFqh5HwoEn8QFY=";
      name = "kmods-bmips_bcm6328-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6328/kmods/6.12.67-1-32dfaf3f6da789fe05805a69ce1deafc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6328/packages/";
    sourceInfo = {
      hash = "sha256-C4cPFmD1oLlDFvuGP826inXLAqeMRiEb9WAoHuKNpmo=";
      name = "bmips_bcm6328-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm6328/packages/packages.adb";
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
