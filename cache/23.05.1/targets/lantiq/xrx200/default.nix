# 23.05.1 lantiq/xrx200
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/lantiq/xrx200/";
  sha256sums = {
    hash = "sha256-KCHTL3KuBoUYNvJFN1Bpxu9vpY04ExVHB5TpUt1Cuoo=";
    name = "lantiq_xrx200-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/lantiq/xrx200/sha256sums";
  };
  imagebuilder = {
    sha256 = "e849c02c429c613b63e0b615e2be983829cace31779f58649808a176c1da45bc";
    filename = "immortalwrt-imagebuilder-23.05.1-lantiq-xrx200.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ODvVd7Ol8PNasaDHvg305F/7X3ZRB//WpoKIRQQZsK8=";
    name = "lantiq_xrx200-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/lantiq/xrx200/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "dsl-vrx200-firmware-xdsl-a"
      "dsl-vrx200-firmware-xdsl-b-patch"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-ltq-atm-vr9"
      "kmod-ltq-deu-vr9"
      "kmod-ltq-ptm-vr9"
      "kmod-ltq-vdsl-vr9"
      "kmod-ltq-vdsl-vr9-mei"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "ltq-vdsl-vr9-app"
      "ltq-vdsl-vr9-vectoring-fw-installer"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoa"
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
      arcadyan_vgv7510kw22-brn = {
        device_packages = [
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "iwinfo"
        ];
      };
      arcadyan_vgv7510kw22-nor = {
        device_packages = [
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "iwinfo"
        ];
      };
      arcadyan_vgv7519-brn = {
        device_packages = [
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "iwinfo"
        ];
      };
      arcadyan_vgv7519-nor = {
        device_packages = [
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "iwinfo"
        ];
      };
      avm_fritz3370-rev2-hynix = {
        device_packages = [
          "kmod-ath9k"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz3370-rev2-micron = {
        device_packages = [
          "kmod-ath9k"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz3390 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz7360-v2 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz7360sl = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz7362sl = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz7412 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "fritz-tffs-nand"
          "fritz-caldata"
          "iwinfo"
        ];
      };
      avm_fritz7430 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs-nand"
          "fritz-caldata"
          "iwinfo"
        ];
      };
      bt_homehub-v5a = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "iwinfo"
        ];
      };
      buffalo_wbmr-300hpd = {
        device_packages = [
          "kmod-mt7603"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "iwinfo"
        ];
      };
      lantiq_easy80920-nand = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      lantiq_easy80920-nor = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      tplink_vr200 = {
        device_packages = [
          "kmod-mt76x0e"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      tplink_vr200v = {
        device_packages = [
          "kmod-mt76x0e"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "iwinfo"
        ];
      };
      zyxel_p-2812hnu-f1 = {
        device_packages = [
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/lantiq/xrx200/packages/";
    sourceInfo = {
      hash = "sha256-fbAF23+u+wjcpKA7p1sAB4DcKfLg9sMKeo2pfcGTyBI=";
      name = "lantiq_xrx200-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/lantiq/xrx200/packages/Packages";
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
