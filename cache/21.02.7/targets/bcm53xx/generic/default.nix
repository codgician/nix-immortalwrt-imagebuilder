# 21.02.7 bcm53xx/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm53xx/generic/";
  sha256sums = {
    hash = "sha256-bkKxLAPz3o9/v6oLvp6YVBCDK+Y+V/pH6nU9cTrbqwY=";
    name = "bcm53xx_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm53xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9e062f40fa82a6d95ef4901e469dfdb07559388a49dfca7e1ef4d02ecdcf4ab0";
    filename = "immortalwrt-imagebuilder-21.02.7-bcm53xx-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-0F2tb0VCtwvFw8Q/ZgMA067G8Mi4JXNMb6dsSzqVElI=";
    name = "bcm53xx_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm53xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nvram"
      "opkg"
      "osafeloader"
      "oseama"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      asus_rt-ac56u = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
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
          "brcmfmac-firmware-4366c0-pcie-vendor"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
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
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
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
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
          "iwinfo"
        ];
      };
      linksys_ea9500 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie-vendor"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
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
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      luxul_xap-1610 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie-vendor"
          "iwinfo"
        ];
      };
      luxul_xbr-4500 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
        ];
      };
      luxul_xwr-3150 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie-vendor"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
          "iwinfo"
        ];
      };
      meraki_mr32 = {
        device_packages = [
          "wpad-openssl"
          "kmod-b43"
          "kmod-i2c-bcm-iproc"
          "kmod-i2c-gpio"
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
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
          "iwinfo"
        ];
      };
      phicomm_k3 = {
        device_packages = [
          "wpad-openssl"
          "kmod-brcmfmac"
          "brcmfmac-firmware-4366c0-pcie-vendor"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-phy-bcm-ns-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb3"
          "kmod-phy-bcm-ns-usb3"
          "luci-app-k3screenctrl"
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
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm53xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-cqw1Vyyq5qlJYt+K/wKuTlIJ+w2NuXGbVb+LnnEuOGk=";
      name = "bcm53xx_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm53xx/generic/packages/Packages";
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
