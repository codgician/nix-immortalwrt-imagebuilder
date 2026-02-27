# 21.02.7 apm821xx/nand
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-3u4a6YqOsUmsYW8skfYM1ki5vZ2fuWntEFIwx81zh9s=";
    name = "apm821xx_nand-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "80d233ae9fc3bba2ea9996e8562352fff8724265720d13c214a9305d5cd7a54c";
    filename = "immortalwrt-imagebuilder-21.02.7-apm821xx-nand.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-csYEx24bMRNPr4rMKhi6gp+o73fjFe8NVK80mKpceWU=";
    name = "apm821xx_nand-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-i2c-core"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-QDuCeEua7tnm0+6juPIb8tTa4FJTw9ZhGXQCC9VpKWY=";
      name = "apm821xx_nand-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/nand/packages/Packages";
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
