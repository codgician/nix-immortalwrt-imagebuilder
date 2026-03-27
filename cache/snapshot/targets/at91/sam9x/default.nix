# snapshot at91/sam9x
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/";
  sha256sums = {
    hash = "sha256-xMLDX9TZ0xD9PuT0iK8UjQSR5tOMhabs+SD3iQFEopE=";
    name = "at91_sam9x-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/sha256sums";
  };
  imagebuilder = {
    sha256 = "c3c677221200a7f24cfd0f617a009069853c09dc84a920588de97afed31f67c3";
    filename = "immortalwrt-imagebuilder-at91-sam9x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-pp/PLWHf2DpyFtadd0BHFFdMmu1/uX7Q2FXOsyj0YFo=";
    name = "at91_sam9x-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "87aeffaa6d2f08b62bef7a2ca5e89d08";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-87aeffaa6d2f08b62bef7a2ca5e89d08";
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
  kmods."6.12.77-1-87aeffaa6d2f08b62bef7a2ca5e89d08" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/kmods/6.12.77-1-87aeffaa6d2f08b62bef7a2ca5e89d08/";
    sourceInfo = {
      hash = "sha256-BbSkUBiW8l2IvSuMI/pZ2vSkaNaEtiFHraiyXU3lXgk=";
      name = "kmods-at91_sam9x-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sam9x/kmods/6.12.77-1-87aeffaa6d2f08b62bef7a2ca5e89d08/packages.adb";
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
      hash = "sha256-Y3L8RDXV+AkVMhFWoQgAOhceBDAGojYuWAcurjb29zI=";
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
