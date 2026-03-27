# 23.05.1 ipq806x/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq806x/generic/";
  sha256sums = {
    hash = "sha256-63Yju27jM1o1O2MNqTjAOQ71TbRf/gZgI4SUwepA+1Y=";
    name = "ipq806x_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq806x/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "acf395aa3418a6540c978830227e8e9972f44c0e0c14b072423b6e597127d27d";
    filename = "immortalwrt-imagebuilder-23.05.1-ipq806x-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-5552NfRUrrnC5hbBGLf5pA1b14+GlzgdMwIxhrWCbyk=";
    name = "ipq806x_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq806x/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "automount"
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
      "kmod-ata-ahci"
      "kmod-ata-ahci-platform"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-phy-qcom-ipq806x-usb"
      "kmod-usb-dwc3-qcom"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
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
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      arris_tr4400-v2 = {
        device_packages = [
          "ath10k-firmware-qca9984-ct"
          "ath10k-firmware-qca99x0-ct"
        ];
      };
      askey_rt4230w-rev6 = {
        device_packages = [ "ath10k-firmware-qca9984-ct" ];
      };
      asrock_g10 = {
        device_packages = [
          "kmod-i2c-gpio"
          "ath10k-firmware-qca99x0-ct"
        ];
      };
      buffalo_wxr-2533dhp = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      compex_wpq864 = {
        device_packages = [ "kmod-gpio-beeper" ];
      };
      edgecore_ecw5410 = {
        device_packages = [ "ath10k-firmware-qca9984-ct" ];
      };
      linksys_ea7500-v1 = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      linksys_ea8500 = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      meraki_mr42 = {
        device_packages = [
          "-swconfig"
          "-kmod-ata-ahci"
          "-kmod-ata-ahci-platform"
          "-kmod-usb-ohci"
          "-kmod-usb2"
          "-kmod-usb-ledtrig-usbport"
          "-kmod-phy-qcom-ipq806x-usb"
          "-kmod-usb3"
          "-kmod-usb-dwc3-qcom"
          "-uboot-envtools"
          "ath10k-firmware-qca9887-ct"
          "ath10k-firmware-qca99x0-ct"
          "kmod-eeprom-at24"
          "kmod-hwmon-ina2xx"
          "kmod-leds-tlc591xx"
        ];
      };
      meraki_mr52 = {
        device_packages = [
          "-swconfig"
          "-kmod-ata-ahci"
          "-kmod-ata-ahci-platform"
          "-kmod-usb-ohci"
          "-kmod-usb2"
          "-kmod-usb-ledtrig-usbport"
          "-kmod-phy-qcom-ipq806x-usb"
          "-kmod-usb3"
          "-kmod-usb-dwc3-qcom"
          "-uboot-envtools"
          "ath10k-firmware-qca9887-ct"
          "ath10k-firmware-qca9984-ct"
          "kmod-eeprom-at24"
          "kmod-hwmon-ina2xx"
          "kmod-leds-tlc591xx"
        ];
      };
      nec_wg2600hp = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      nec_wg2600hp3 = {
        device_packages = [
          "-kmod-ata-ahci"
          "-kmod-ata-ahci-platform"
          "-kmod-usb-ohci"
          "-kmod-usb2"
          "-kmod-usb-ledtrig-usbport"
          "-kmod-phy-qcom-ipq806x-usb"
          "-kmod-usb3"
          "-kmod-usb-dwc3-qcom"
          "ath10k-firmware-qca9984-ct"
        ];
      };
      netgear_d7800 = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      netgear_r7500 = {
        device_packages = [ "ath10k-firmware-qca988x-ct" ];
      };
      netgear_r7500v2 = {
        device_packages = [
          "ath10k-firmware-qca99x0-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      netgear_r7800 = {
        device_packages = [
          "ath10k-firmware-qca9984-ct"
          "kmod-ramoops"
        ];
      };
      netgear_xr500 = {
        device_packages = [
          "ath10k-firmware-qca9984-ct"
          "kmod-ramoops"
        ];
      };
      nokia_ac400i = {
        device_packages = [ "ath10k-firmware-qca9984-ct" ];
      };
      qcom_ipq8064-ap148 = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      qcom_ipq8064-ap148-legacy = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      qcom_ipq8064-ap161 = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      qcom_ipq8064-db149 = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      ruijie_rg-mtfi-m520 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-hwmon-lm75"
          "kmod-rtc-pcf8563"
          "kmod-fs-f2fs"
          "losetup"
          "mkf2fs"
        ];
      };
      tplink_ad7200 = {
        device_packages = [
          "ath10k-firmware-qca99x0-ct"
          "kmod-ramoops"
          "kmod-wil6210"
        ];
      };
      tplink_c2600 = {
        device_packages = [
          "ath10k-firmware-qca99x0-ct"
          "kmod-ramoops"
        ];
      };
      tplink_vr2600v = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      ubnt_unifi-ac-hd = {
        device_packages = [ "ath10k-firmware-qca9984-ct" ];
      };
      xiaomi_mi-router-hd = {
        device_packages = [
          "kmod-i2c-gpio"
          "kmod-hwmon-lm75"
          "hwmon-drivetemp"
          "ath10k-firmware-qca9984-ct"
          "ath10k-firmware-qca99x0-ct"
        ];
      };
      zyxel_nbg6817 = {
        device_packages = [
          "ath10k-firmware-qca9984-ct"
          "e2fsprogs"
          "kmod-fs-ext4"
          "losetup"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq806x/generic/packages/";
    sourceInfo = {
      hash = "sha256-XaPzbP/Rw2f7zzTS2PQMfmUb0R6O/rl1mOZKngQpt6k=";
      name = "ipq806x_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq806x/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a15_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a15_neon-vfpv4.nix;
}
