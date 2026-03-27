# 24.10.2 ath79/nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/nand/";
  sha256sums = {
    hash = "sha256-oY3pPJf9PL4+qWiDobjS/yPGsp+1ZoA1sykND/X+rto=";
    name = "ath79_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "b67ffe6354a6c5703d18267b54f0ab4534baab2a44fa0e1f7b06691d9ed4a986";
    filename = "immortalwrt-imagebuilder-24.10.2-ath79-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8OTMByonhgj8xzw7wKedyzeS4odYhi0g+E+pKwXQFlw=";
    name = "ath79_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "fbae991056903c1ee5f09641dcb84e8f";
      version = "6.6.93";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.93-1-fbae991056903c1ee5f09641dcb84e8f";
    profiles = {
      "8dev_rambutan" = {
        device_packages = [ "kmod-usb2" ];
      };
      aerohive_hiveap-121 = {
        device_packages = [ "kmod-usb2" ];
      };
      domywifi_dw33d = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-storage"
          "kmod-usb-ledtrig-usbport"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      dongwon_dw02-412h-128m = {
        device_packages = [
          "kmod-usb2"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      dongwon_dw02-412h-64m = {
        device_packages = [
          "kmod-usb2"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      glinet_gl-ar300m-nand = {
        device_packages = [ "kmod-usb2" ];
      };
      glinet_gl-ar300m-nor = {
        device_packages = [ "kmod-usb2" ];
      };
      glinet_gl-ar750s-nor = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9887-ct"
          "kmod-usb2"
          "kmod-usb-storage"
          "block-mount"
        ];
      };
      glinet_gl-ar750s-nor-nand = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9887-ct"
          "kmod-usb2"
          "kmod-usb-storage"
          "block-mount"
        ];
      };
      glinet_gl-e750 = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9887-ct"
          "kmod-usb2"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
        ];
      };
      glinet_gl-s200-nor = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-serial-ch341"
        ];
      };
      glinet_gl-s200-nor-nand = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-serial-ch341"
        ];
      };
      glinet_gl-x1200-nor = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9888-ct-htt"
          "kmod-usb2"
          "kmod-usb-storage"
          "block-mount"
          "kmod-usb-net-qmi-wwan"
          "uqmi"
        ];
      };
      glinet_gl-x1200-nor-nand = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9888-ct-htt"
          "kmod-usb2"
          "kmod-usb-storage"
          "block-mount"
          "kmod-usb-net-qmi-wwan"
          "uqmi"
        ];
      };
      glinet_gl-xe300 = {
        device_packages = [
          "kmod-usb2"
          "block-mount"
          "kmod-usb-serial-ch341"
          "kmod-usb-serial-option"
          "kmod-usb-net-qmi-wwan"
          "uqmi"
        ];
      };
      linksys_ea4500-v3 = {
        device_packages = [ "kmod-usb2" ];
      };
      netgear_pgzng1 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-i2c-gpio"
          "kmod-leds-pca955x"
          "kmod-rtc-isl1208"
          "kmod-spi-dev"
        ];
      };
      netgear_r6100 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      netgear_wndr3700-v4 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      netgear_wndr4300 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      netgear_wndr4300-v2 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      netgear_wndr4300sw = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      netgear_wndr4300tn = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      netgear_wndr4500-v3 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      zte_mf281 = {
        device_packages = [
          "kmod-usb2"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9888-ct"
          "kmod-usb-net-rndis"
          "kmod-usb-acm"
          "comgt-ncm"
        ];
      };
      zte_mf282 = {
        device_packages = [
          "kmod-usb2"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
        ];
      };
      zte_mf286 = {
        device_packages = [
          "kmod-usb2"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "ath10k-firmware-qca9888-ct"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
        ];
      };
      zte_mf286a = {
        device_packages = [
          "kmod-usb2"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9888-ct"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
        ];
      };
      zte_mf286r = {
        device_packages = [
          "kmod-usb2"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9888-ct"
          "kmod-usb-net-rndis"
          "kmod-usb-acm"
          "comgt-ncm"
        ];
      };
      zyxel_emg2926_q10a = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      zyxel_nbg6716 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
    };
  };
  kmods."6.6.93-1-fbae991056903c1ee5f09641dcb84e8f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/nand/kmods/6.6.93-1-fbae991056903c1ee5f09641dcb84e8f/";
    sourceInfo = {
      hash = "sha256-U0Kx61HRUVEInrUfFsF/kCCnRJ0+OgD7MLe8UulZsnE=";
      name = "kmods-ath79_nand-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/nand/kmods/6.6.93-1-fbae991056903c1ee5f09641dcb84e8f/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/nand/packages/";
    sourceInfo = {
      hash = "sha256-m5Ntb3XWND/igTallNIe+BCjk7t2Zu8pQgqPAYIQ79I=";
      name = "ath79_nand-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ath79/nand/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
