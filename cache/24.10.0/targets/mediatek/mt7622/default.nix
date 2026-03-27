# 24.10.0 mediatek/mt7622
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7622/";
  sha256sums = {
    hash = "sha256-QJtUH+yM6Aq3K3FWs4jiPILT/ofQ/bLyVf7lYuZVYPc=";
    name = "mediatek_mt7622-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7622/sha256sums";
  };
  imagebuilder = {
    sha256 = "feec588804ef29dc9b708211ab2c89ec5b822d602a0f2617d2226f51d6b4e8e6";
    filename = "immortalwrt-imagebuilder-24.10.0-mediatek-mt7622.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dcDeV+h8lB5ulukanimjM5ZdLhUvQoX3VYjN4fXRWKM=";
    name = "mediatek_mt7622-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7622/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "5d77ee1cbbcd17c3222c31b3eea58bc8";
      version = "6.6.73";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "bridger"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
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
      "wpad-openssl"
    ];
    kmods_target = "6.6.73-1-5d77ee1cbbcd17c3222c31b3eea58bc8";
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
  kmods."6.6.73-1-5d77ee1cbbcd17c3222c31b3eea58bc8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7622/kmods/6.6.73-1-5d77ee1cbbcd17c3222c31b3eea58bc8/";
    sourceInfo = {
      hash = "sha256-8q5wV1gxMWZb0rSJiIyHfRsOXAb05UcAWvHqRxx/qpw=";
      name = "kmods-mediatek_mt7622-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7622/kmods/6.6.73-1-5d77ee1cbbcd17c3222c31b3eea58bc8/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7622/packages/";
    sourceInfo = {
      hash = "sha256-tSlv9Wy8aGPmAFngAzvETpewNpozqX+wSdifpW+yJ88=";
      name = "mediatek_mt7622-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7622/packages/Packages";
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
