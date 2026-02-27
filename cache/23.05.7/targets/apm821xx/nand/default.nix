# 23.05.7 apm821xx/nand
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-N/Gv/yoFwiA/zlsAeGUWra0wwY0DZzcsY0UPI1xZY04=";
    name = "apm821xx_nand-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "6fea84e444aa17d5d2f3b00ca8c12b84e566a02c239d7cd9a25965db2200e82b";
    filename = "immortalwrt-imagebuilder-23.05.7-apm821xx-nand.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-zh30Je+QGE8prp/2O+cpECn1psXc3CMHx8xOJdITgdI=";
    name = "apm821xx_nand-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "2a4d237c8d58b7c82babbee96aa177d1";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-i2c-core"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "5.15.195-1-2a4d237c8d58b7c82babbee96aa177d1";
    profiles = {
      meraki_mr24 = {
        device_packages = [
          "kmod-spi-gpio"
          "-swconfig"
        ];
      };
      meraki_mx60 = {
        device_packages = [
          "kmod-spi-gpio"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb-dwc2"
          "kmod-usb-storage"
          "block-mount"
        ];
      };
      netgear_wndap620 = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
      netgear_wndap660 = {
        device_packages = [ "kmod-eeprom-at24" ];
      };
      netgear_wndr4700 = {
        device_packages = [
          "badblocks"
          "block-mount"
          "e2fsprogs"
          "kmod-hwmon-drivetemp"
          "kmod-dm"
          "kmod-fs-ext4"
          "kmod-fs-vfat"
          "kmod-usb-ledtrig-usbport"
          "kmod-md-mod"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-nls-iso8859-15"
          "kmod-nls-utf8"
          "kmod-usb3"
          "kmod-usb-dwc2"
          "kmod-usb-storage"
          "partx-utils"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-10vMTeyNNqQyhCXcaxgLxrUpqqRLy21Beyj/8haULio=";
      name = "apm821xx_nand-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/nand/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_464fp";
  feeds = import ./../../../packages/powerpc_464fp.nix;
}
