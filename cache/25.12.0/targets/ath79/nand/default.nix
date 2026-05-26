# 25.12.0 ath79/nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ath79/nand/";
  sha256sums = {
    hash = "sha256-G0pnRlNCpU10/TTjyi4fgu0caFSi9uKZlo2/Nd9qGB4=";
    name = "ath79_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ath79/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "4c6cf8094dfdda3eba88c733c431209d9b9e06e6b0d3abde0528677a59b3abcd";
    filename = "immortalwrt-imagebuilder-25.12.0-ath79-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-GiaJHjWDENAeQTMGtG5S9dPTsj6vSEXvekN2sVW6CFU=";
    name = "ath79_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ath79/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "8d535a614e2de5388c5457afd795153c";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.87-1-8d535a614e2de5388c5457afd795153c";
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
          "-ath10k-board-qca9888"
          "ipq-wifi-zte_mf286c"
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
          "-ath10k-board-qca9888"
          "ipq-wifi-zte_mf286ar"
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
          "-ath10k-board-qca9888"
          "ipq-wifi-zte_mf286ar"
          "kmod-usb-serial-option"
          "uqmi"
        ];
      };
      zte_mf286c = {
        device_packages = [
          "kmod-usb2"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9888-ct"
          "kmod-usb-net-qmi-wwan"
          "-ath10k-board-qca9888"
          "ipq-wifi-zte_mf286c"
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
  kmods."6.12.87-1-8d535a614e2de5388c5457afd795153c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ath79/nand/kmods/6.12.87-1-8d535a614e2de5388c5457afd795153c/";
    sourceInfo = {
      hash = "sha256-F5Z+PVAhP+zWbXgRtUflM7C6mmn+yU2+DZ9LnBBV6EY=";
      name = "kmods-ath79_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ath79/nand/kmods/6.12.87-1-8d535a614e2de5388c5457afd795153c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ath79/nand/packages/";
    sourceInfo = {
      hash = "sha256-nyKys+ldddbSWmKz7GVLkVSXg8YoGbkxhwh6ndG1rb4=";
      name = "ath79_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ath79/nand/packages/packages.adb";
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
