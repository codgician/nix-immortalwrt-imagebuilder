# 23.05.1 mediatek/mt7622
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7622/";
  sha256sums = {
    hash = "sha256-Aj/xjYEEo8cPy1wUJWHkLfcoSXldT1k7aD5lnpHGnQk=";
    name = "mediatek_mt7622-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7622/sha256sums";
  };
  imagebuilder = {
    sha256 = "76962fe65e7467f63f8edab15b4b9bf0e2e4f190f702e40419713c0d8b0e4c1d";
    filename = "immortalwrt-imagebuilder-23.05.1-mediatek-mt7622.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-fuGC6d0I43bvS5pDKcNnz630xqdHY1+B+wlk+EwKPbM=";
    name = "mediatek_mt7622-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7622/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
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
      "kmod-mt7622-firmware"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      bananapi_bpi-r64 = {
        device_packages = [
          "kmod-ata-ahci-mtk"
          "kmod-btmtkuart"
          "kmod-usb3"
          "e2fsprogs"
          "mkf2fs"
          "f2fsck"
        ];
      };
      buffalo_wsr-2533dhp2 = {
        device_packages = [
          "kmod-mt7615-firmware"
          "swconfig"
        ];
      };
      elecom_wrc-2533gent = {
        device_packages = [
          "kmod-btmtkuart"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "swconfig"
        ];
      };
      elecom_wrc-x3200gst3 = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      linksys_e8450 = {
        device_packages = [
          "kmod-mt7915-firmware"
          "kmod-usb3"
        ];
      };
      linksys_e8450-ubi = {
        device_packages = [
          "kmod-mt7915-firmware"
          "kmod-usb3"
        ];
      };
      mediatek_mt7622-rfb1 = {
        device_packages = [
          "kmod-ata-ahci-mtk"
          "kmod-btmtkuart"
          "kmod-usb3"
        ];
      };
      mediatek_mt7622-rfb1-ubi = {
        device_packages = [
          "kmod-ata-ahci-mtk"
          "kmod-btmtkuart"
          "kmod-usb3"
        ];
      };
      netgear_wax206 = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      reyee_ax3200-e5 = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      ruijie_rg-ew3200gx-pro = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      totolink_a8000ru = {
        device_packages = [
          "kmod-mt7615-firmware"
          "swconfig"
        ];
      };
      ubnt_unifi-6-lr-v1 = {
        device_packages = [
          "kmod-mt7915-firmware"
          "kmod-leds-ubnt-ledbar"
        ];
      };
      ubnt_unifi-6-lr-v1-ubootmod = {
        device_packages = [
          "kmod-mt7915-firmware"
          "kmod-leds-ubnt-ledbar"
        ];
      };
      ubnt_unifi-6-lr-v2 = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      ubnt_unifi-6-lr-v2-ubootmod = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      ubnt_unifi-6-lr-v3 = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      ubnt_unifi-6-lr-v3-ubootmod = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      xiaomi_redmi-router-ax6s = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7622/packages/";
    sourceInfo = {
      hash = "sha256-aAwLWC8QbX2Mfe6OczuroBLokS5CO0HTyVL9gxVohO0=";
      name = "mediatek_mt7622-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mediatek/mt7622/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
