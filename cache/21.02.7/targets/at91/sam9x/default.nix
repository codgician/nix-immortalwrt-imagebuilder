# 21.02.7 at91/sam9x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sam9x/";
  sha256sums = {
    hash = "sha256-oRHNjci7Cv9Eo2RkoNfEqepw/kIYJQVK7DaAS0m0nwc=";
    name = "at91_sam9x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sam9x/sha256sums";
  };
  imagebuilder = {
    sha256 = "260119813fd9d56b433006274cac0c0441555ec376bb2337acdd336813c92008";
    filename = "immortalwrt-imagebuilder-21.02.7-at91-sam9x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Bu+hi3v+5lDFxZOe9YdmBR1HQE+icD/vtOlAByCgbl0=";
    name = "at91_sam9x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sam9x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
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
      "kmod-at91-udc"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb-gadget-eth"
      "kmod-usb-ohci"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      atmel_at91sam9263ek = {
        device_packages = [ ];
      };
      atmel_at91sam9g15ek = {
        device_packages = [ ];
      };
      atmel_at91sam9g20ek = {
        device_packages = [ ];
      };
      atmel_at91sam9g20ek-2mmc = {
        device_packages = [ ];
      };
      atmel_at91sam9g25ek = {
        device_packages = [ ];
      };
      atmel_at91sam9g35ek = {
        device_packages = [ ];
      };
      atmel_at91sam9m10g45ek = {
        device_packages = [ ];
      };
      atmel_at91sam9x25ek = {
        device_packages = [ ];
      };
      atmel_at91sam9x35ek = {
        device_packages = [ ];
      };
      calamp_lmu5000 = {
        device_packages = [
          "kmod-rtc-pcf2123"
          "kmod-usb-acm"
          "kmod-usb-serial-option"
          "kmod-usb-serial-sierrawireless"
          "kmod-gpio-mcp23s08"
        ];
      };
      calao_tny-a9260 = {
        device_packages = [ ];
      };
      calao_tny-a9263 = {
        device_packages = [ ];
      };
      calao_tny-a9g20 = {
        device_packages = [ ];
      };
      calao_usb-a9260 = {
        device_packages = [ ];
      };
      calao_usb-a9263 = {
        device_packages = [ ];
      };
      calao_usb-a9g20 = {
        device_packages = [ ];
      };
      egnite_ethernut5 = {
        device_packages = [ ];
      };
      laird_wb45n = {
        device_packages = [
          "kmod-mmc-at91"
          "kmod-ath6kl-sdio"
          "ath6k-firmware"
          "kmod-usb-storage"
          "kmod-fs-vfat"
          "kmod-fs-msdos"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sam9x/packages/";
    sourceInfo = {
      hash = "sha256-nHP5uCAuKiY3C+Cz1fuQ1fDBxw9OYMj8HPDq/lttD24=";
      name = "at91_sam9x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sam9x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm926ej-s";
  feeds = import ./../../../packages/arm_arm926ej-s.nix;
}
