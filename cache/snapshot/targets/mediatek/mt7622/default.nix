# snapshot mediatek/mt7622
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7622/";
  sha256sums = {
    hash = "sha256-3gxxABtzWQXihO2vAJng53wYeSIAOBgYH6lPsVEMIUY=";
    name = "mediatek_mt7622-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7622/sha256sums";
  };
  imagebuilder = {
    sha256 = "a5da304a6e92e38072222f2cdf74fa2be0b1861b397cd66fb3b2cc76ef195750";
    filename = "immortalwrt-imagebuilder-mediatek-mt7622.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VK0DniTvXMtJeYurX7N7OdrVhRyaZV4iCu07NQDZnLI=";
    name = "mediatek_mt7622-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7622/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "620d90480d4a4b88aa12b4ec8b8e4b8d";
      version = "6.18.21";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "bridger"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-mt7622-firmware"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.18.21-1-620d90480d4a4b88aa12b4ec8b8e4b8d";
    profiles = {
      asiarf_ap7622-wh1 = {
        device_packages = [
          "kmod-ata-ahci-mtk"
          "kmod-btmtkuart"
          "kmod-usb3"
        ];
      };
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
      buffalo_wsr-3200ax4s = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      dlink_eagle-pro-ai-m32-a1 = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      dlink_eagle-pro-ai-r32-a1 = {
        device_packages = [ "kmod-mt7915-firmware" ];
      };
      elecom_wrc-2533gent = {
        device_packages = [
          "kmod-btmtkuart"
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "swconfig"
        ];
      };
      elecom_wrc-g01 = {
        device_packages = [ "kmod-mt7915-firmware" ];
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
      smartrg_sdg-841-t6 = {
        device_packages = [
          "e2fsprogs"
          "f2fsck"
          "mkf2fs"
          "kmod-mt7915e"
          "kmod-mt7915-firmware"
        ];
      };
      totolink_a8000ru = {
        device_packages = [
          "kmod-mt7615-firmware"
          "kmod-usb3"
          "swconfig"
        ];
      };
      tplink_tl-xdr3230-v1 = {
        device_packages = [
          "kmod-mt7915-firmware"
          "swconfig"
        ];
      };
      tplink_tl-xdr3250-v1 = {
        device_packages = [
          "kmod-mt7915-firmware"
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
  kmods."6.18.21-1-620d90480d4a4b88aa12b4ec8b8e4b8d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7622/kmods/6.18.21-1-620d90480d4a4b88aa12b4ec8b8e4b8d/";
    sourceInfo = {
      hash = "sha256-StKTtfU3Q8HF05Wty3WvYIkc3mO8LzYFUMV+jW2Ulzo=";
      name = "kmods-mediatek_mt7622-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7622/kmods/6.18.21-1-620d90480d4a4b88aa12b4ec8b8e4b8d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7622/packages/";
    sourceInfo = {
      hash = "sha256-mW779Enh4fgnrcFtyxBaM3b8uf4CV9wRVQih42O/glY=";
      name = "mediatek_mt7622-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7622/packages/packages.adb";
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
