# 21.02.7 kirkwood/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/kirkwood/generic/";
  sha256sums = {
    hash = "sha256-1+OfzQaZWy//nzQfVcHqjIQycOgdlN+PmdnERdFGGq0=";
    name = "kirkwood_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/kirkwood/generic/sha256sums";
  };
  imagebuilder = null;
  profiles.sourceInfo = {
    hash = "sha256-PRRaMJHgdObeD1Yo5mxBMkChmsAaOhFAbFrRJY9+L+E=";
    name = "kirkwood_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/kirkwood/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_xscale";
    linux_kernel = null;
    default_packages = [
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
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb2"
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
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      checkpoint_l-50 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-gpio-button-hotplug"
          "kmod-mvsdio"
          "kmod-rtc-s35390a"
          "kmod-usb-ledtrig-usbport"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      cisco_on100 = {
        device_packages = [ "kmod-mvsdio" ];
      };
      cloudengines_pogoe02 = {
        device_packages = [ ];
      };
      cloudengines_pogoplugv4 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-mvsdio"
          "kmod-usb3"
          "kmod-gpio-button-hotplug"
        ];
      };
      "iom_iconnect-1.1" = {
        device_packages = [ ];
      };
      iom_ix2-200 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-lm63"
        ];
      };
      linksys_e4200-v2 = {
        device_packages = [
          "kmod-mwl8k"
          "wpad-basic-openssl"
          "kmod-gpio-button-hotplug"
          "iwinfo"
        ];
      };
      linksys_ea3500 = {
        device_packages = [
          "kmod-mwl8k"
          "wpad-basic-openssl"
          "kmod-gpio-button-hotplug"
          "iwinfo"
        ];
      };
      linksys_ea4500 = {
        device_packages = [
          "kmod-mwl8k"
          "wpad-basic-openssl"
          "kmod-gpio-button-hotplug"
          "iwinfo"
        ];
      };
      raidsonic_ib-nas62x0 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
        ];
      };
      seagate_blackarmor-nas220 = {
        device_packages = [
          "kmod-hwmon-adt7475"
          "kmod-fs-ext4"
          "kmod-ata-marvell-sata"
          "mdadm"
          "kmod-gpio-button-hotplug"
        ];
      };
      seagate_dockstar = {
        device_packages = [ ];
      };
      seagate_goflexhome = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
        ];
      };
      seagate_goflexnet = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
        ];
      };
      zyxel_nsa310b = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-r8169"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-lm85"
        ];
      };
      zyxel_nsa310s = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
        ];
      };
      zyxel_nsa325 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-rtc-pcf8563"
          "kmod-usb3"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/kirkwood/generic/packages/";
    sourceInfo = {
      hash = "sha256-CNrKSjlQFeTYPvtZ4KVcP3ZdYixB+0C34oTlmm1qIYw=";
      name = "kirkwood_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/kirkwood/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_xscale";
  feeds = import ./../../../packages/arm_xscale.nix;
}
