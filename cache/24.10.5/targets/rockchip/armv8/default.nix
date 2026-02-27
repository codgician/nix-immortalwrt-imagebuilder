# 24.10.5 rockchip/armv8
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/rockchip/armv8/";
  sha256sums = {
    hash = "sha256-tHpBFMsUZeA18EPLJ2Zd09AtWa4bCqZImXl0ZKc9PKI=";
    name = "rockchip_armv8-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/rockchip/armv8/sha256sums";
  };
  imagebuilder = {
    sha256 = "24530a740255faa02102b24b434064bf4d10b82bc29dff2a9696daa697f726fc";
    filename = "immortalwrt-imagebuilder-24.10.5-rockchip-armv8.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gFZ6NVC+yfTWKd46yzcVzuDGZGlVgPDkfNEOldcj6kQ=";
    name = "rockchip_armv8-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/rockchip/armv8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "23375d261da0c0e9da36857794905cf7";
      version = "6.6.122";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "block-mount"
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
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
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
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-23375d261da0c0e9da36857794905cf7";
    profiles = {
      "9tripod_x3568-v4" = {
        device_packages = [
          "blkdiscard"
          "block-mount"
          "kmod-ata-ahci-dwc"
          "kmod-nvme"
          "kmod-hwmon-pwmfan"
          "kmod-input-adc-keys"
          "kmod-saradc-rockchip"
          "kmod-rtc-pcf8563"
          "kmod-brcmfmac"
          "wpad-openssl"
          "brcmfmac-firmware-43752-sdio"
          "brcmfmac-nvram-43752-sdio"
          "iwinfo"
        ];
      };
      ariaboard_photonicat = {
        device_packages = [
          "kmod-ath10k-sdio"
          "ath10k-firmware-qca9377-photonicat"
          "wpad-openssl"
          "kmod-usb-net-cdc-mbim"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
          "pcat-mgr"
          "luci-mod-battstatus"
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
      armsom_sige7 = {
        device_packages = [
          "kmod-brcmfmac"
          "kmod-r8125"
          "wpad-openssl"
          "brcmfmac-firmware-43752-pcie"
          "brcmfmac-nvram-43752-pcie"
          "iwinfo"
        ];
      };
      cyber_cyber3588-aib = {
        device_packages = [
          "kmod-ata-ahci-dwc"
          "kmod-r8125"
          "kmod-mt7921e"
          "wpad-openssl"
          "kmod-hwmon-pwmfan"
          "kmod-usb-net-cdc-mbim"
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
          "iwinfo"
        ];
      };
      ezpro_mrkaio-m68s = {
        device_packages = [ "kmod-ata-ahci-dwc" ];
      };
      firefly_roc-rk3328-cc = {
        device_packages = [ ];
      };
      firefly_roc-rk3568-pc = {
        device_packages = [
          "kmod-ata-ahci-dwc"
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
      friendlyarm_nanopc-t6 = {
        device_packages = [ "kmod-r8125" ];
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
      friendlyarm_nanopi-r3s = {
        device_packages = [ "kmod-r8169" ];
      };
      friendlyarm_nanopi-r4s = {
        device_packages = [ "kmod-r8169" ];
      };
      friendlyarm_nanopi-r4s-enterprise = {
        device_packages = [ "kmod-r8169" ];
      };
      friendlyarm_nanopi-r4se = {
        device_packages = [ "kmod-r8169" ];
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
      friendlyarm_nanopi-r6c = {
        device_packages = [ "kmod-r8125" ];
      };
      friendlyarm_nanopi-r6s = {
        device_packages = [ "kmod-r8125" ];
      };
      huake_guangmiao-g4c = {
        device_packages = [ "kmod-r8169" ];
      };
      linkease_easepi-r1 = {
        device_packages = [
          "blkdiscard"
          "block-mount"
          "kmod-button-hotplug"
          "kmod-nvme"
          "kmod-r8125"
        ];
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
          "kmod-ata-ahci-dwc"
          "kmod-hwmon-pwmfan"
          "kmod-hwmon-drivetemp"
        ];
      };
      nlnet_xiguapi-v3 = {
        device_packages = [ "kmod-hwmon-pwmfan" ];
      };
      pine64_rock64 = {
        device_packages = [ ];
      };
      pine64_rockpro64 = {
        device_packages = [ ];
      };
      radxa_cm3-io = {
        device_packages = [ ];
      };
      radxa_e25 = {
        device_packages = [
          "kmod-r8125"
          "kmod-ata-ahci-dwc"
        ];
      };
      radxa_e52c = {
        device_packages = [
          "blkdiscard"
          "kmod-r8125"
        ];
      };
      radxa_rock-3a = {
        device_packages = [
          "kmod-usb-net-cdc-ncm"
          "kmod-usb-net-rndis"
        ];
      };
      radxa_rock-3b = {
        device_packages = [
          "kmod-usb-net-cdc-ncm"
          "kmod-usb-net-rndis"
        ];
      };
      radxa_rock-3c = {
        device_packages = [
          "kmod-usb-net-cdc-ncm"
          "kmod-usb-net-rndis"
        ];
      };
      radxa_rock-4c-plus = {
        device_packages = [ ];
      };
      radxa_rock-4se = {
        device_packages = [ ];
      };
      radxa_rock-5-itx = {
        device_packages = [
          "blkdiscard"
          "block-mount"
          "kmod-ata-ahci"
          "kmod-hwmon-pwmfan"
          "kmod-nvme"
          "kmod-r8125"
          "kmod-rtw89-8852be"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      radxa_rock-5a = {
        device_packages = [
          "blkdiscard"
          "block-mount"
          "kmod-ata-ahci"
          "kmod-hwmon-pwmfan"
          "kmod-nvme"
          "kmod-r8125"
          "kmod-rtw89-8852be"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      radxa_rock-5b = {
        device_packages = [
          "blkdiscard"
          "block-mount"
          "kmod-hwmon-pwmfan"
          "kmod-nvme"
          "kmod-r8125"
          "kmod-rtw89-8852be"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      radxa_rock-5b-plus = {
        device_packages = [
          "blkdiscard"
          "block-mount"
          "kmod-hwmon-pwmfan"
          "kmod-nvme"
          "kmod-r8125"
          "kmod-rtw89-8852be"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      radxa_rock-5c = {
        device_packages = [
          "blkdiscard"
          "block-mount"
          "kmod-ata-ahci"
          "kmod-hwmon-pwmfan"
          "kmod-nvme"
          "kmod-r8125"
        ];
      };
      radxa_rock-5t = {
        device_packages = [
          "blkdiscard"
          "block-mount"
          "iwlwifi-firmware-ax210"
          "kmod-hwmon-pwmfan"
          "kmod-iwlwifi"
          "kmod-nvme"
          "kmod-r8125"
          "wpad-openssl"
          "iwinfo"
        ];
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
          "kmod-rtw88-8821cu"
          "kmod-usb-net-cdc-ncm"
          "kmod-usb-net-rndis"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      radxa_rock-pi-s = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "kmod-usb-net-cdc-ncm"
          "kmod-usb-net-rndis"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      radxa_zero-3e = {
        device_packages = [
          "kmod-usb-net-cdc-ncm"
          "kmod-usb-net-rndis"
        ];
      };
      radxa_zero-3w = {
        device_packages = [
          "kmod-usb-net-cdc-ncm"
          "kmod-usb-net-rndis"
        ];
      };
      sinovoip_bpi-r2-pro = {
        device_packages = [ "kmod-ata-ahci-dwc" ];
      };
      xunlong_orangepi-5 = {
        device_packages = [ ];
      };
      xunlong_orangepi-5-plus = {
        device_packages = [ "kmod-r8125" ];
      };
      xunlong_orangepi-r1-plus = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
      xunlong_orangepi-r1-plus-lts = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
    };
  };
  kmods."6.6.122-1-23375d261da0c0e9da36857794905cf7" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/rockchip/armv8/kmods/6.6.122-1-23375d261da0c0e9da36857794905cf7/";
    sourceInfo = {
      hash = "sha256-nFvH09rfOCIXYX0xg0cbyfEjZiflzARXaKVxauPRv0I=";
      name = "kmods-rockchip_armv8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/rockchip/armv8/kmods/6.6.122-1-23375d261da0c0e9da36857794905cf7/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/rockchip/armv8/packages/";
    sourceInfo = {
      hash = "sha256-L/7V+08byPwtzp+iAnNrWoGgk6SP/qTiIoZexD82eD0=";
      name = "rockchip_armv8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/rockchip/armv8/packages/Packages";
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
