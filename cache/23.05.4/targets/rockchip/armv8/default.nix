# 23.05.4 rockchip/armv8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/rockchip/armv8/";
  sha256sums = {
    hash = "sha256-/HjC0gzUpENPs9DVK4wfMK65ejlujX31IUZwCPsHucw=";
    name = "rockchip_armv8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/rockchip/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "1973aff99299810e7cb200f8444a3843016ac76f699dde59262919cc38d39347";
    filename = "immortalwrt-imagebuilder-23.05.4-rockchip-armv8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-mUETl8Q/mSrKt+FLqVglJlkVWayGVp2mHJg7gRK3DlY=";
    name = "rockchip_armv8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/rockchip/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
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
      "fdisk"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "partx-utils"
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
    ];
    kmods_target = "null-null-null";
    profiles = {
      ariaboard_photonicat = {
        device_packages = [
          "pcat-manager"
          "kmod-ath10k-sdio"
          "ath10k-firmware-qca9377-sdio"
          "wpad-openssl"
          "kmod-usb-net-cdc-mbim"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
          "iwinfo"
        ];
      };
      armsom_sige3 = {
        device_packages = [
          "kmod-brcmfmac"
          "kmod-r8125"
          "wpad-openssl"
          "brcmfmac-firmware-43752-sdio"
          "brcmfmac-nvram-43752-sdio"
          "iwinfo"
        ];
      };
      ezpro_mrkaio-m68s = {
        device_packages = [
          "kmod-ata-ahci"
          "kmod-ata-ahci-platform"
        ];
      };
      firefly_roc-rk3328-cc = {
        device_packages = [ ];
      };
      firefly_roc-rk3568-pc = {
        device_packages = [
          "kmod-ata-ahci-platform"
          "kmod-brcmfmac"
          "wpad-openssl"
          "brcmfmac-firmware-43752-sdio"
          "brcmfmac-nvram-43752-sdio"
          "iwinfo"
        ];
      };
      friendlyarm_nanopc-t4 = {
        device_packages = [
          "kmod-brcmfmac"
          "wpad-openssl"
          "brcmfmac-firmware-4356-sdio"
          "brcmfmac-nvram-4356-sdio"
          "iwinfo"
        ];
      };
      friendlyarm_nanopi-r2c = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
      friendlyarm_nanopi-r2c-plus = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
      friendlyarm_nanopi-r2s = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
      friendlyarm_nanopi-r4s = {
        device_packages = [ "kmod-r8168" ];
      };
      friendlyarm_nanopi-r4s-enterprise = {
        device_packages = [ "kmod-r8168" ];
      };
      friendlyarm_nanopi-r4se = {
        device_packages = [ "kmod-r8168" ];
      };
      friendlyarm_nanopi-r5c = {
        device_packages = [
          "kmod-r8125"
          "kmod-rtw88-8822ce"
          "rtl8822ce-firmware"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      friendlyarm_nanopi-r5s = {
        device_packages = [ "kmod-r8125" ];
      };
      huake_guangmiao-g4c = {
        device_packages = [ "kmod-r8168" ];
      };
      lunzn_fastrhino-r66s = {
        device_packages = [ "kmod-r8125" ];
      };
      lunzn_fastrhino-r68s = {
        device_packages = [ "kmod-r8125" ];
      };
      lyt_t68m = {
        device_packages = [
          "kmod-r8125"
          "kmod-mt7921e"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      pine64_rockpro64 = {
        device_packages = [ ];
      };
      radxa_rock-pi-4a = {
        device_packages = [
          "kmod-brcmfmac"
          "wpad-openssl"
          "brcmfmac-firmware-43456-sdio"
          "brcmfmac-nvram-43456-sdio"
          "iwinfo"
        ];
      };
      radxa_rock-pi-e = {
        device_packages = [
          "kmod-rtw88-8723du"
          "kmod-usb-net-cdc-ncm"
          "kmod-usb-net-rndis"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      xunlong_orangepi-r1-plus = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
      xunlong_orangepi-r1-plus-lts = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/rockchip/armv8/packages/";
    sourceInfo = {
      hash = "sha256-E0vTG1InNxNfyQ+ca/rHWxiFzEMG3p5EcHZpsoEyWq8=";
      name = "rockchip_armv8-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/rockchip/armv8/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_generic";
  feeds = import ./../../../packages/aarch64_generic.nix;
}
