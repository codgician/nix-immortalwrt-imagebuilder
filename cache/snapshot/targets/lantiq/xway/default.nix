# snapshot lantiq/xway
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xway/";
  sha256sums = {
    hash = "sha256-y4MQX3OI7eLu1XYywdNSt2cC46DyQW9yFnQECbHdnUA=";
    name = "lantiq_xway-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xway/sha256sums";
  };
  imagebuilder = {
    sha256 = "fdef9f41050302c52db865f61e379ac736417767278bf418a93b2b3d4ad39c72";
    filename = "immortalwrt-imagebuilder-lantiq-xway.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5BW5xAX3sk+VHY1bGq4lXStn++1eRfQQ+yx5CLOMUMg=";
    name = "lantiq_xway-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xway/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "5daca7163968ff1dd22ab31175587905";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-5daca7163968ff1dd22ab31175587905";
    profiles = {
      arcadyan_arv7506pw11 = {
        device_packages = [
          "kmod-ltq-adsl-danube-mei"
          "kmod-ltq-adsl-danube"
          "kmod-ltq-adsl-danube-fw-b"
          "kmod-ltq-atm-danube"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
        ];
      };
      arcadyan_arv7510pw22 = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ltq-adsl-danube-mei"
          "kmod-ltq-adsl-danube"
          "kmod-ltq-adsl-danube-fw-a"
          "kmod-ltq-atm-danube"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "kmod-rt2800-pci"
          "wpad-openssl"
          "kmod-usb-uhci"
          "kmod-usb2"
          "kmod-usb2-pci"
        ];
      };
      arcadyan_arv7518pw = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ltq-adsl-danube-mei"
          "kmod-ltq-adsl-danube"
          "kmod-ltq-adsl-danube-fw-a"
          "kmod-ltq-atm-danube"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
        ];
      };
      arcadyan_arv7519pw = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-ltq-adsl-danube-mei"
          "kmod-ltq-adsl-danube"
          "kmod-ltq-adsl-danube-fw-a"
          "kmod-ltq-atm-danube"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-rt2800-pci"
          "wpad-openssl"
        ];
      };
      arcadyan_arv752dpw = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ltq-adsl-danube-mei"
          "kmod-ltq-adsl-danube"
          "kmod-ltq-adsl-danube-fw-b"
          "kmod-ltq-atm-danube"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
        ];
      };
      arcadyan_arv752dpw22 = {
        device_packages = [
          "kmod-usb2-pci"
          "kmod-usb-uhci"
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ltq-adsl-danube-mei"
          "kmod-ltq-adsl-danube"
          "kmod-ltq-adsl-danube-fw-b"
          "kmod-ltq-atm-danube"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
        ];
      };
      arcadyan_arv8539pw22 = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-ltq-adsl-danube-mei"
          "kmod-ltq-adsl-danube"
          "kmod-ltq-adsl-danube-fw-b"
          "kmod-ltq-atm-danube"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
        ];
      };
      audiocodes_mp-252 = {
        device_packages = [
          "kmod-ltq-adsl-danube-mei"
          "kmod-ltq-adsl-danube"
          "kmod-ltq-adsl-danube-fw-a"
          "kmod-ltq-atm-danube"
          "kmod-ltq-tapi"
          "kmod-ltq-vmmc"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb-dwc2"
          "kmod-rt2800-pci"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "wpad-openssl"
        ];
      };
      avm_fritz7312 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
          "kmod-ltq-adsl-ar9-mei"
          "kmod-ltq-adsl-ar9"
          "kmod-ltq-adsl-ar9-fw-b"
          "kmod-ltq-atm-ar9"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-ltq-deu-ar9"
          "fritz-tffs"
          "-swconfig"
        ];
      };
      avm_fritz7320 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
          "kmod-ltq-adsl-ar9-mei"
          "kmod-ltq-adsl-ar9"
          "kmod-ltq-adsl-ar9-fw-b"
          "kmod-ltq-atm-ar9"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-ltq-deu-ar9"
          "kmod-usb-dwc2"
          "fritz-tffs"
          "-swconfig"
        ];
      };
      buffalo_wbmr-hp-g300h-a = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ltq-adsl-ar9-mei"
          "kmod-ltq-adsl-ar9"
          "kmod-ltq-adsl-ar9-fw-a"
          "kmod-ltq-atm-ar9"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
        ];
      };
      buffalo_wbmr-hp-g300h-b = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ltq-adsl-ar9-mei"
          "kmod-ltq-adsl-ar9"
          "kmod-ltq-adsl-ar9-fw-b"
          "kmod-ltq-atm-ar9"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
        ];
      };
      netgear_dgn3500 = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
          "kmod-ltq-adsl-ar9-mei"
          "kmod-ltq-adsl-ar9"
          "kmod-ltq-adsl-ar9-fw-a"
          "kmod-ltq-atm-ar9"
          "kmod-ltq-deu-ar9"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
        ];
      };
      netgear_dgn3500b = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-openssl"
          "kmod-ltq-adsl-ar9-mei"
          "kmod-ltq-adsl-ar9"
          "kmod-ltq-adsl-ar9-fw-b"
          "kmod-ltq-atm-ar9"
          "kmod-ltq-deu-ar9"
          "ltq-adsl-app"
          "ppp-mod-pppoa"
        ];
      };
      zyxel_p-2601hn = {
        device_packages = [
          "kmod-rt2800-usb"
          "wpad-openssl"
          "kmod-ltq-adsl-ar9-mei"
          "kmod-ltq-adsl-ar9"
          "kmod-ltq-adsl-ar9-fw-b"
          "kmod-ltq-atm-ar9"
          "kmod-ltq-deu-ar9"
          "ltq-adsl-app"
          "ppp-mod-pppoe"
          "kmod-usb-dwc2"
        ];
      };
    };
  };
  kmods."6.12.67-1-5daca7163968ff1dd22ab31175587905" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xway/kmods/6.12.67-1-5daca7163968ff1dd22ab31175587905/";
    sourceInfo = {
      hash = "sha256-z5I+ajXBAEy8QBT5y6Q9Jxc9sk0ULnwbx6BASdPXB7M=";
      name = "kmods-lantiq_xway-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xway/kmods/6.12.67-1-5daca7163968ff1dd22ab31175587905/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xway/packages/";
    sourceInfo = {
      hash = "sha256-hdjfTmlswv6GURLI95zWPU7mlGnotugdUeK48RyzC0w=";
      name = "lantiq_xway-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/lantiq/xway/packages/packages.adb";
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
