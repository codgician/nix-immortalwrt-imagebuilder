# 24.10.6 at91/sam9x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/at91/sam9x/";
  sha256sums = {
    hash = "sha256-aiJUbK5cBQM7FtmeBfLdtFgdk4ZLnWNNQI5gNDlYPow=";
    name = "at91_sam9x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/at91/sam9x/sha256sums";
  };
  imagebuilder = {
    sha256 = "bb50d44e06cd246824b936e3895451d48178d8b85483d10335951ae21c3009a5";
    filename = "immortalwrt-imagebuilder-24.10.6-at91-sam9x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bZHruf3qQG5wyTSnDzy68hAYO2hZ/bu09185Z+u9f6k=";
    name = "at91_sam9x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/at91/sam9x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "c12bd335dda5ee600668d682dd9a85f3";
      version = "6.6.133";
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
      "kmod-at91-udc"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-gadget-eth"
      "kmod-usb-ohci"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.133-1-c12bd335dda5ee600668d682dd9a85f3";
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
          "kmod-pinctrl-mcp23s08-spi"
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
      microchip_sam9x60ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.133-1-c12bd335dda5ee600668d682dd9a85f3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/at91/sam9x/kmods/6.6.133-1-c12bd335dda5ee600668d682dd9a85f3/";
    sourceInfo = {
      hash = "sha256-cquXe/12pl6oxU6pNhXf/6bOqMkoVyVfPyNn9hN9/SQ=";
      name = "kmods-at91_sam9x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/at91/sam9x/kmods/6.6.133-1-c12bd335dda5ee600668d682dd9a85f3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/at91/sam9x/packages/";
    sourceInfo = {
      hash = "sha256-MCZSjB/xm1Ws6/Oe8Aq8wCWhzgRhc4/IaN/++d6f3BM=";
      name = "at91_sam9x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/at91/sam9x/packages/Packages";
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
