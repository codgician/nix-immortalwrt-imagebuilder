# 25.12.2 at91/sam9x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sam9x/";
  sha256sums = {
    hash = "sha256-d6vYZA+fxH5IZeH0rPd1Hu6nEZVZQYTWlIaQqY98Q8U=";
    name = "at91_sam9x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sam9x/sha256sums";
  };
  imagebuilder = {
    sha256 = "0a16ebaf9ad5759a63da3d456cc6c1f5a2a8aa1dcf865994f473481f3a96d088";
    filename = "immortalwrt-imagebuilder-25.12.2-at91-sam9x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-BYkob0XpjYTT0jjadAw7rIpJ2rWYfQRYHe2+YLorR2g=";
    name = "at91_sam9x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sam9x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "0c560fe0ffb8bcc567b9effc8dbc9eeb";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "kmod-usb-gadget-eth"
      "kmod-usb-ohci"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.103-1-0c560fe0ffb8bcc567b9effc8dbc9eeb";
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
  kmods."6.12.103-1-0c560fe0ffb8bcc567b9effc8dbc9eeb" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sam9x/kmods/6.12.103-1-0c560fe0ffb8bcc567b9effc8dbc9eeb/";
    sourceInfo = {
      hash = "sha256-fx+TQscjDI7lVwwuyw8EQ1OGFH+u/mhLosS/WDNIf7U=";
      name = "kmods-at91_sam9x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sam9x/kmods/6.12.103-1-0c560fe0ffb8bcc567b9effc8dbc9eeb/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sam9x/packages/";
    sourceInfo = {
      hash = "sha256-UC425rB6nTO3vom1Kas05iG3rJZaWEcXD4lVBDFgluI=";
      name = "at91_sam9x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sam9x/packages/packages.adb";
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
