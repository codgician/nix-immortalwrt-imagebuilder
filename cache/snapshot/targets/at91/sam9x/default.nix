# snapshot at91/sam9x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/";
  sha256sums = {
    hash = "sha256-RcFqaXSvLuiqY6QedszOAjjEZYpU12S7vdjIP1Zy7rc=";
    name = "at91_sam9x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/sha256sums";
  };
  imagebuilder = {
    sha256 = "13b1b15c68183075f58eaa5485738d5b972fcbbcf2b443b0cf349a451bd305c9";
    filename = "immortalwrt-imagebuilder-at91-sam9x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KoENEFFTfR8GuJ7aC9TZe7VtoJNZy4RKgvx326V6b18=";
    name = "at91_sam9x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "c73da8453a48a37d21a3ce028ee51f2a";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-at91-udc"
      "kmod-nft-offload"
      "kmod-usb-gadget-eth"
      "kmod-usb-ohci"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.18.55-1-c73da8453a48a37d21a3ce028ee51f2a";
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
  kmods."6.18.55-1-c73da8453a48a37d21a3ce028ee51f2a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/kmods/6.18.55-1-c73da8453a48a37d21a3ce028ee51f2a/";
    sourceInfo = {
      hash = "sha256-CCjUoom6vy1s14EdpHStupFtWaS54ZBoSvfm/jz0HKE=";
      name = "kmods-at91_sam9x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/kmods/6.18.55-1-c73da8453a48a37d21a3ce028ee51f2a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/packages/";
    sourceInfo = {
      hash = "sha256-q0XRU9XBU3e2LJ/JZ6r+PQMSBy3AbhgWurS/1wO5D94=";
      name = "at91_sam9x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/packages/packages.adb";
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
