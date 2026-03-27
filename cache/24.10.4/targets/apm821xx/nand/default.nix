# 24.10.4 apm821xx/nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/nand/";
  sha256sums = {
    hash = "sha256-qEB8m21COQDoHl+krDUBCSQYrHqUjW/DBOb8TKZZwPA=";
    name = "apm821xx_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "a4e46ea435b8f46b25dd7a39f83cc88519601ef3f52dc13f09d371dff8b09383";
    filename = "immortalwrt-imagebuilder-24.10.4-apm821xx-nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VCD2s/yxPW2+ITe9V4z1+RHkSnEGduT51jt/5bpys8w=";
    name = "apm821xx_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "0cd8cea3cc54268eac31ec729bb4e7bf";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-hw-crypto-4xx"
      "kmod-i2c-core"
      "kmod-leds-gpio"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.110-1-0cd8cea3cc54268eac31ec729bb4e7bf";
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
          "kmod-ata-dwc"
        ];
      };
    };
  };
  kmods."6.6.110-1-0cd8cea3cc54268eac31ec729bb4e7bf" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/nand/kmods/6.6.110-1-0cd8cea3cc54268eac31ec729bb4e7bf/";
    sourceInfo = {
      hash = "sha256-OzouHkGbxT+tZTs7PU7LhVhCJIuax27tNsAwFoxGoBg=";
      name = "kmods-apm821xx_nand-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/nand/kmods/6.6.110-1-0cd8cea3cc54268eac31ec729bb4e7bf/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/nand/packages/";
    sourceInfo = {
      hash = "sha256-vZIzmg48mYfUVFlie69oMCbEqJthTDCFX/FY1HJtA74=";
      name = "apm821xx_nand-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/nand/packages/Packages";
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
