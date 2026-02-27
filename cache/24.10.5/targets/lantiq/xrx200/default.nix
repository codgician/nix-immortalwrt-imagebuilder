# 24.10.5 lantiq/xrx200
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200/";
  sha256sums = {
    hash = "sha256-eoKG993/KILJ48oR5FUVacJ7qc8ac1MIpg72efTgLjw=";
    name = "lantiq_xrx200-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200/sha256sums";
  };
  imagebuilder = {
    sha256 = "84e6723d15f057c6de5d3c8b110a7f28228d415941d80b38e94d7e697823be67";
    filename = "immortalwrt-imagebuilder-24.10.5-lantiq-xrx200.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-W/QWZ+HtI6WA/HDVp697xV80Qd31mZ4wf6T33JbHKNU=";
    name = "lantiq_xrx200-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "574035ff46776e78e52d65859d15afaa";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "dsl-vrx200-firmware-xdsl-a"
      "dsl-vrx200-firmware-xdsl-b-patch"
      "firewall4"
      "fstools"
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
      "ppp-mod-pppoa"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-574035ff46776e78e52d65859d15afaa";
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
          "wpad-openssl"
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
          "wpad-openssl"
          "kmod-usb-dwc2"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "iwinfo"
        ];
      };
      arcadyan_vrv9510kwac23 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "broadcom-4360-sprom"
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
          "wpad-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz3490 = {
        device_packages = [
          "kmod-usb3"
          "fritz-tffs"
          "-kmod-owl-loader"
        ];
      };
      avm_fritz3490-micron = {
        device_packages = [
          "kmod-usb3"
          "fritz-tffs"
          "-kmod-owl-loader"
        ];
      };
      avm_fritz5490 = {
        device_packages = [
          "kmod-dsa-qca8k"
          "kmod-phy-qca83xx"
          "kmod-usb3"
          "fritz-tffs"
          "-ltq-vdsl-vr9-vectoring-fw-installer"
          "-kmod-ltq-vdsl-vr9-mei"
          "-kmod-ltq-vdsl-vr9"
          "-kmod-ltq-atm-vr9"
          "-kmod-ltq-ptm-vr9"
          "-ltq-vdsl-vr9-app"
          "-kmod-owl-loader"
          "-dsl-vrx200-firmware-xdsl-a"
          "-dsl-vrx200-firmware-xdsl-b-patch"
        ];
      };
      avm_fritz5490-micron = {
        device_packages = [
          "kmod-dsa-qca8k"
          "kmod-phy-qca83xx"
          "kmod-usb3"
          "fritz-tffs"
          "-ltq-vdsl-vr9-vectoring-fw-installer"
          "-kmod-ltq-vdsl-vr9-mei"
          "-kmod-ltq-vdsl-vr9"
          "-kmod-ltq-atm-vr9"
          "-kmod-ltq-ptm-vr9"
          "-ltq-vdsl-vr9-app"
          "-kmod-owl-loader"
          "-dsl-vrx200-firmware-xdsl-a"
          "-dsl-vrx200-firmware-xdsl-b-patch"
        ];
      };
      avm_fritz7360-v2 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz7360sl = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz7362sl = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "iwinfo"
        ];
      };
      avm_fritz7412 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
          "fritz-tffs-nand"
          "fritz-caldata"
          "iwinfo"
        ];
      };
      avm_fritz7430 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
          "kmod-usb-dwc2"
          "fritz-tffs-nand"
          "fritz-caldata"
          "iwinfo"
        ];
      };
      avm_fritz7490 = {
        device_packages = [
          "kmod-usb3"
          "fritz-tffs"
          "-kmod-owl-loader"
        ];
      };
      avm_fritz7490-micron = {
        device_packages = [
          "kmod-usb3"
          "fritz-tffs"
          "-kmod-owl-loader"
        ];
      };
      bt_homehub-v5a = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "wpad-openssl"
          "kmod-usb-dwc2"
          "iwinfo"
        ];
      };
      buffalo_wbmr-300hpd = {
        device_packages = [
          "kmod-mt7603"
          "wpad-openssl"
          "kmod-usb-dwc2"
          "iwinfo"
        ];
      };
      lantiq_easy80920-nand = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
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
          "wpad-openssl"
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      tplink_vr200v = {
        device_packages = [
          "kmod-mt76x0e"
          "wpad-openssl"
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
          "wpad-openssl"
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.122-1-574035ff46776e78e52d65859d15afaa" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200/kmods/6.6.122-1-574035ff46776e78e52d65859d15afaa/";
    sourceInfo = {
      hash = "sha256-e4l1ihKiWm9WLLV6v1eHBeILep9Yn1sCTegUV7/OHn8=";
      name = "kmods-lantiq_xrx200-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200/kmods/6.6.122-1-574035ff46776e78e52d65859d15afaa/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200/packages/";
    sourceInfo = {
      hash = "sha256-VMiRAuDD2E+tRjlOWRa4GMwM6B5p/HLj3Ly+8//5IJ0=";
      name = "lantiq_xrx200-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/lantiq/xrx200/packages/Packages";
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
