# 23.05.7 rockchip/armv8
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/rockchip/armv8/";
  sha256sums = {
    hash = "sha256-kMcxOxSigpLhY8Liv+cXd65VZ7fZ8U/OpJqNfLCj408=";
    name = "rockchip_armv8-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/rockchip/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "e3eccf5607c9758373b2c941ee474f7939937058101304df950e5b88cb77f4b4";
    filename = "immortalwrt-imagebuilder-23.05.7-rockchip-armv8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-I3Mly+fBCGzfYydpdotBypAxePOS74KOFpCj53MpV+8=";
    name = "rockchip_armv8-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/rockchip/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "1165e14f95a921713988260b06d8b0ab";
      version = "5.15.195";
    };
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
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.195-1-1165e14f95a921713988260b06d8b0ab";
    profiles = {
      ariaboard_photonicat = {
        device_packages = [
          "pcat-manager"
          "kmod-ath10k-sdio"
          "ath10k-firmware-qca9377-photonicat"
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
      mmbox_anas3035 = {
        device_packages = [
          "kmod-r8125"
          "kmod-ata-ahci-platform"
          "kmod-hwmon-pwmfan"
          "kmod-hwmon-drivetemp"
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/rockchip/armv8/packages/";
    sourceInfo = {
      hash = "sha256-KZ29yNC6EwwigCeuaq284QQw+wVBq19kuSanvlZ5UOY=";
      name = "rockchip_armv8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/rockchip/armv8/packages/Packages";
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
