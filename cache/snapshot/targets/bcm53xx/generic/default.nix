# snapshot bcm53xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm53xx/generic/";
  sha256sums = {
    hash = "sha256-4NNUrkTBCuYbNx0vFTS+0HErOfxwufm2RPuL8xu+kCk=";
    name = "bcm53xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm53xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "113e1f37213ce12cc2af0dfd9421e1a8df5b4a9890f3b5e7eb02d49b96e13545";
    filename = "immortalwrt-imagebuilder-bcm53xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sD2IhRak+3sdp22+/Zzpa5S1eATEBb+i1M3FBwMb/k4=";
    name = "bcm53xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm53xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9";
    linux_kernel = {
      release = "1";
      vermagic = "53ecf42e87b80a0116ea2c00ff1f27e6";
      version = "6.18.55";
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
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "osafeloader"
      "oseama"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.55-1-53ecf42e87b80a0116ea2c00ff1f27e6";
    profiles = {
      asus_rt-ac3100 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366b1-pcie"
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      asus_rt-ac3200 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43602a1-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      asus_rt-ac5300 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      asus_rt-ac56u = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      asus_rt-ac68u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      asus_rt-ac87u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      asus_rt-ac88u = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366b1-pcie"
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      asus_rt-n18u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      buffalo_wxr-1900dhp = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      buffalo_wzr-1750dhp = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      buffalo_wzr-600dhp2 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
        ];
      };
      buffalo_wzr-900dhp = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      dlink_dir-885l = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366b1-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      dlink_dir-890l = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43602a1-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      dlink_dwl-8610ap = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
        ];
      };
      linksys_ea6300-v1 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      linksys_ea6500-v2 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      linksys_ea9200 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43602a1-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
          "kmod-ledtrig-network"
        ];
      };
      linksys_ea9500 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      luxul_abr-4500-v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      luxul_xap-1610-v1 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie"
        ];
      };
      luxul_xbr-4500-v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      luxul_xwr-3150-v1 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      meraki_mr26 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-hwmon-ina2xx"
          "kmod-leds-uleds"
          "nu801"
        ];
      };
      meraki_mr32 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-leds-pwm"
          "kmod-hwmon-ina2xx"
          "kmod-hci-uart"
        ];
      };
      meraki_mx64 = {
        device_packages = [
          "-oseama"
          "kmod-leds-pwm"
          "kmod-usb-ehci"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      meraki_mx64-a0 = {
        device_packages = [
          "-oseama"
          "kmod-leds-pwm"
          "kmod-usb-ehci"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      meraki_mx65 = {
        device_packages = [
          "-oseama"
          "kmod-leds-pwm"
          "kmod-usb-ehci"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-dsa-qca8k"
        ];
      };
      netgear_r6250-v1 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      netgear_r6300-v2 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      netgear_r6400-v1 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      netgear_r7000 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      netgear_r7900 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43602a1-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      netgear_r8000 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43602a1-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      phicomm_k3 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
          "-brcmfmac-firmware-4366c0-pcie"
          "brcmfmac-firmware-4366c0-pcie-k3"
        ];
      };
      smartrg_sr400ac = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43602a1-pcie"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      tenda_ac9 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "automount"
        ];
      };
    };
  };
  kmods."6.18.55-1-53ecf42e87b80a0116ea2c00ff1f27e6" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm53xx/generic/kmods/6.18.55-1-53ecf42e87b80a0116ea2c00ff1f27e6/";
    sourceInfo = {
      hash = "sha256-VERf6tSDc/1h1LgWdndhFQaRZ/os9g6qEXuEZ+Gouf4=";
      name = "kmods-bcm53xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm53xx/generic/kmods/6.18.55-1-53ecf42e87b80a0116ea2c00ff1f27e6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm53xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-DGBMxow7us1WqyWG5CKuIm5WQjEgpYcPsx8uV6yMj+Y=";
      name = "bcm53xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm53xx/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9";
  feeds = import ./../../../packages/arm_cortex-a9.nix;
}
