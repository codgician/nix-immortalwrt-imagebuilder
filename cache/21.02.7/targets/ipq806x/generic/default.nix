# 21.02.7 ipq806x/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq806x/generic/";
  sha256sums = {
    hash = "sha256-++FDjfOaufh6wbhVM/EwQcYwdvpS2xP4fQ0gTK9tHtM=";
    name = "ipq806x_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq806x/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "adb03b5cbba2001ae8568efe72e9620963b7500648daa9d98c57246c3d72b13e";
    filename = "immortalwrt-imagebuilder-21.02.7-ipq806x-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-NyTtUUdDBCiqSQjbvXWf9j217Q5RaaG2+MJfdVPmFBw=";
    name = "ipq806x_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq806x/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
      "automount"
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
      "kmod-ata-ahci"
      "kmod-ata-ahci-platform"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
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
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
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
        device_packages = [
          "ath10k-firmware-qca9984-ct"
          "ipq-wifi-edgecore_ecw5410"
        ];
      };
      linksys_ea7500-v1 = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
      };
      linksys_ea8500 = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
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
          "-kmod-usb-phy-qcom-dwc3"
          "-kmod-usb3"
          "-kmod-usb-dwc3-qcom"
          "ath10k-firmware-qca9984-ct"
          "ipq-wifi-nec_wg2600hp3"
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
          "e2fsprogs"
          "kmod-hwmon-lm75"
          "kmod-fs-f2fs"
          "kmod-rtc-pcf8563"
          "losetup"
          "mkf2fs"
        ];
      };
      tplink_ad7200 = {
        device_packages = [
          "ath10k-firmware-qca99x0-ct"
          "kmod-wil6210"
        ];
      };
      tplink_c2600 = {
        device_packages = [ "ath10k-firmware-qca99x0-ct" ];
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
          "kmod-hwmon-emc2305"
          "kmod-hwmon-lm75"
          "hwmon-drivetemp"
          "kmod-usb-storage-uas"
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq806x/generic/packages/";
    sourceInfo = {
      hash = "sha256-s7yFIEmW0PujmHS250Gjxu3WIey/l01d9Di8wvZW2co=";
      name = "ipq806x_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq806x/generic/packages/Packages";
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
