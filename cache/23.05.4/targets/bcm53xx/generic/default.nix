# 23.05.4 bcm53xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm53xx/generic/";
  sha256sums = {
    hash = "sha256-6fif81/fRiVGpiObvrlWiUM1D7IU1PCTJE9sCCPk9qQ=";
    name = "bcm53xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm53xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "f3bf602a0b59e7610be7b54fb8e4b47e0ea3d8dbc58617a9c81a85743e5713fb";
    filename = "immortalwrt-imagebuilder-23.05.4-bcm53xx-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-PAO6iBfOIs9Ree8pju//XDQAcW0REteiT8ZzYioYk6Q=";
    name = "bcm53xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm53xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "opkg"
      "osafeloader"
      "oseama"
      "otrx"
      "ppp"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
        ];
      };
      dlink_dwl-8610ap = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
        ];
      };
      luxul_abr-4500 = {
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
      luxul_xap-1610 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie"
          "iwinfo"
        ];
      };
      luxul_xbr-4500 = {
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
      luxul_xwr-3150 = {
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
          "iwinfo"
        ];
      };
      meraki_mr26 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-i2c-bcm-iproc"
          "kmod-eeprom-at24"
          "kmod-hwmon-ina2xx"
          "kmod-leds-uleds"
          "nu801"
          "iwinfo"
        ];
      };
      meraki_mr32 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-i2c-bcm-iproc"
          "kmod-eeprom-at24"
          "kmod-leds-pwm"
          "kmod-hwmon-ina2xx"
          "kmod-bluetooth"
          "iwinfo"
        ];
      };
      netgear_r6250 = {
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
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
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm53xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-J74FSbw+ZIYaEQc9BKmQU+EvYXgOGyzS8A9HaYaaky0=";
      name = "bcm53xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm53xx/generic/packages/Packages";
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
