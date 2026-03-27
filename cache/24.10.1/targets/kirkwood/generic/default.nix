# 24.10.1 kirkwood/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/kirkwood/generic/";
  sha256sums = {
    hash = "sha256-RhwxF9LbA3EOD6Tvnbi5T6JkpzNyDxx114AOea/+DcU=";
    name = "kirkwood_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/kirkwood/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "85b11a276d519a2cdb3fcdcc93cfe5f8d088845e1b5afb7512748a948b5cd3d0";
    filename = "immortalwrt-imagebuilder-24.10.1-kirkwood-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JyagPQm24vkR+UHm/TDnzzxVY76uWVdpHWRXVADz+9o=";
    name = "kirkwood_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/kirkwood/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "69fd7e3766745d38354d62a5d3f2f715";
      version = "6.6.86";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-69fd7e3766745d38354d62a5d3f2f715";
    profiles = {
      checkpoint_l-50 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-gpio-button-hotplug"
          "kmod-mvsdio"
          "kmod-rtc-s35390a"
          "kmod-usb-ledtrig-usbport"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      cisco_on100 = {
        device_packages = [
          "kmod-mvsdio"
          "kmod-rtc-mv"
        ];
      };
      cloudengines_pogoe02 = {
        device_packages = [ "kmod-rtc-mv" ];
      };
      cloudengines_pogoplugv4 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-mvsdio"
          "kmod-usb3"
          "kmod-gpio-button-hotplug"
          "kmod-rtc-mv"
        ];
      };
      ctera_c200-v1 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-lm63"
          "kmod-rtc-s35390a"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dns320l = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-usb-storage"
          "kmod-usb-ledtrig-usbport"
          "dns320l-mcu"
          "kmod-rtc-mv"
        ];
      };
      endian_4i-edge-200 = {
        device_packages = [
          "kmod-ath9k"
          "kmod-mvsdio"
          "wpad-openssl"
          "kmod-rtc-mv"
          "iwinfo"
        ];
      };
      globalscale_sheevaplug = {
        device_packages = [
          "kmod-mvsdio"
          "kmod-rtc-mv"
        ];
      };
      "iom_iconnect-1.1" = {
        device_packages = [ "kmod-rtc-mv" ];
      };
      iom_ix2-200 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-lm63"
          "kmod-rtc-mv"
        ];
      };
      iom_ix4-200d = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-gpio-nxp-74hc164"
          "kmod-hwmon-adt7475"
          "kmod-mvsdio"
          "kmod-spi-gpio"
          "kmod-rtc-mv"
        ];
      };
      iptime_nas1 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-gpio-pca953x"
          "kmod-hwmon-drivetemp"
          "kmod-hwmon-gpiofan"
          "kmod-usb-ledtrig-usbport"
          "kmod-rtc-mv"
          "kmod-thermal"
          "-uboot-envtools"
        ];
      };
      linksys_e4200-v2 = {
        device_packages = [
          "kmod-mwl8k"
          "wpad-openssl"
          "kmod-gpio-button-hotplug"
          "kmod-rtc-mv"
          "iwinfo"
        ];
      };
      linksys_ea3500 = {
        device_packages = [
          "kmod-mwl8k"
          "wpad-openssl"
          "kmod-gpio-button-hotplug"
          "kmod-rtc-mv"
          "iwinfo"
        ];
      };
      linksys_ea4500 = {
        device_packages = [
          "kmod-mwl8k"
          "wpad-openssl"
          "kmod-gpio-button-hotplug"
          "kmod-rtc-mv"
          "iwinfo"
        ];
      };
      netgear_readynas-duo-v2 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-g762"
          "kmod-rtc-rs5c372a"
          "kmod-usb3"
        ];
      };
      netgear_stora = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-rtc-pcf8563"
          "kmod-hwmon-lm75"
          "kmod-hwmon-tc654"
          "kmod-gpio-button-hotplug"
        ];
      };
      raidsonic_ib-nas62x0 = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-rtc-mv"
        ];
      };
      seagate_blackarmor-nas220 = {
        device_packages = [
          "kmod-hwmon-adt7475"
          "kmod-fs-ext4"
          "kmod-ata-marvell-sata"
          "mdadm"
          "kmod-gpio-button-hotplug"
          "kmod-rtc-mv"
        ];
      };
      seagate_dockstar = {
        device_packages = [ "kmod-rtc-mv" ];
      };
      seagate_goflexhome = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-rtc-mv"
        ];
      };
      seagate_goflexnet = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-rtc-mv"
        ];
      };
      zyxel_nsa310b = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-r8169"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-lm85"
          "kmod-rtc-mv"
        ];
      };
      zyxel_nsa310s = {
        device_packages = [
          "kmod-ata-marvell-sata"
          "kmod-fs-ext4"
          "kmod-gpio-button-hotplug"
          "kmod-rtc-mv"
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
  kmods."6.6.86-1-69fd7e3766745d38354d62a5d3f2f715" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/kirkwood/generic/kmods/6.6.86-1-69fd7e3766745d38354d62a5d3f2f715/";
    sourceInfo = {
      hash = "sha256-H8hcA9Gy8J2amTsvYV2LWyEB0LOjf7fi7DFR117H1fU=";
      name = "kmods-kirkwood_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/kirkwood/generic/kmods/6.6.86-1-69fd7e3766745d38354d62a5d3f2f715/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/kirkwood/generic/packages/";
    sourceInfo = {
      hash = "sha256-hHxek1adFRNNadt799eKvMjZz7mbyK7YpnWbjmqEyaI=";
      name = "kirkwood_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/kirkwood/generic/packages/Packages";
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
