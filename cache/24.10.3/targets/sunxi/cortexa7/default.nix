# 24.10.3 sunxi/cortexa7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa7/";
  sha256sums = {
    hash = "sha256-aJGfKsZSf12ZwhmcdG9Naw3YU0wDoT0FffStyJOw3PM=";
    name = "sunxi_cortexa7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa7/sha256sums";
  };
  imagebuilder = {
    sha256 = "8773ab1eeeecd94f2fe8e39bb974698140c12af033756cab2e5b0dd311b88dce";
    filename = "immortalwrt-imagebuilder-24.10.3-sunxi-cortexa7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hHSxoPvkmKSLH75yhjfUdOn0rwSjXgm9t9KDo4pywTY=";
    name = "sunxi_cortexa7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "707d062949898674f64e356880d4dc3c";
      version = "6.6.104";
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
      "firewall4"
      "fstools"
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
    kmods_target = "6.6.104-1-707d062949898674f64e356880d4dc3c";
    profiles = {
      cubietech_cubieboard2 = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      cubietech_cubietruck = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtc-sunxi"
          "kmod-brcmfmac"
        ];
      };
      friendlyarm_nanopi-m1-plus = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      friendlyarm_nanopi-neo = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-neo-air = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43430a0-sdio"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      friendlyarm_nanopi-r1 = {
        device_packages = [
          "kmod-usb-net-rtl8152"
          "kmod-leds-gpio"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      friendlyarm_zeropi = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      lamobo_lamobo-r1 = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtl8192cu"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      lemaker_bananapi = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
        ];
      };
      lemaker_bananapro = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
          "kmod-brcmfmac"
          "cypress-firmware-43362-sdio"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      licheepi_licheepi-zero-dock = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      linksprite_pcduino3 = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
          "kmod-rtl8xxxu"
          "rtl8188eu-firmware"
        ];
      };
      linksprite_pcduino3-nano = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-ata-sunxi"
        ];
      };
      mele_m9 = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtl8192cu"
        ];
      };
      olimex_a20-olinuxino-lime = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtc-sunxi"
        ];
      };
      olimex_a20-olinuxino-lime2 = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtc-sunxi"
          "kmod-usb-hid"
        ];
      };
      olimex_a20-olinuxino-lime2-emmc = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-rtc-sunxi"
          "kmod-usb-hid"
        ];
      };
      olimex_a20-olinuxino-micro = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      sinovoip_bananapi-m2-berry = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      sinovoip_bananapi-m2-plus = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43430a0-sdio"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      sinovoip_bananapi-m2-ultra = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-brcmfmac"
          "brcmfmac-firmware-43430a0-sdio"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      sinovoip_bananapi-m3 = {
        device_packages = [
          "kmod-rtc-sunxi"
          "kmod-leds-gpio"
          "kmod-rtc-ac100"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      sinovoip_bananapi-p2-zero = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-brcmfmac"
          "cypress-firmware-43430-sdio"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      xunlong_orangepi-2 = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      xunlong_orangepi-one = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      xunlong_orangepi-pc = {
        device_packages = [ "kmod-gpio-button-hotplug" ];
      };
      xunlong_orangepi-pc-plus = {
        device_packages = [ "kmod-gpio-button-hotplug" ];
      };
      xunlong_orangepi-plus = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      xunlong_orangepi-r1 = {
        device_packages = [ "kmod-usb-net-rtl8152" ];
      };
      xunlong_orangepi-zero = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.6.104-1-707d062949898674f64e356880d4dc3c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa7/kmods/6.6.104-1-707d062949898674f64e356880d4dc3c/";
    sourceInfo = {
      hash = "sha256-gRT78e0FqKBZNPR/fQhkHOtiXu4fZKIP/7afhiNyN7M=";
      name = "kmods-sunxi_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa7/kmods/6.6.104-1-707d062949898674f64e356880d4dc3c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa7/packages/";
    sourceInfo = {
      hash = "sha256-qOyB20VwOpEPlbD1LNrhaGvc+Di2mXnuPMoTWl7E8ok=";
      name = "sunxi_cortexa7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/sunxi/cortexa7/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
