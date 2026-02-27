# 23.05.7 mediatek/mt7622
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7622/";
  sha256sums = {
    hash = "sha256-qHavKjHuCruxkoMVTlj9+cO5ER6vBERdmtdyBPSBWuA=";
    name = "mediatek_mt7622-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7622/sha256sums";
  };
  imagebuilder = {
    sha256 = "4ac17e83cc9d37a0a6e56a186f74ba570a4bbf0ec5f55aa87d7c6097a512a788";
    filename = "immortalwrt-imagebuilder-23.05.7-mediatek-mt7622.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-02//1Nyjd7Mn2OJA0HEfLA5Y8x3PCsPUhGVDQqUiaSI=";
    name = "mediatek_mt7622-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7622/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "29a1f90a7986d2bfef49af4763e7a386";
      version = "5.15.195";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "bridger"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
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
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.195-1-29a1f90a7986d2bfef49af4763e7a386";
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7622/packages/";
    sourceInfo = {
      hash = "sha256-9HxO8QKlDjpeR9MN1ijQY/456L4PvBy8XHozVxu/uPU=";
      name = "mediatek_mt7622-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7622/packages/Packages";
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
