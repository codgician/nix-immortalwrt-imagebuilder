# 24.10.1 at91/sam9x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sam9x/";
  sha256sums = {
    hash = "sha256-Vd/iX+71xYEwf+lPfj/NHJahq4v0awnvk75QozmdLT8=";
    name = "at91_sam9x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sam9x/sha256sums";
  };
  imagebuilder = {
    sha256 = "2f76ff2bbdc4cd9b9e4576ab737436acaea8b4e283243fa9a2bd6ff622989e99";
    filename = "immortalwrt-imagebuilder-24.10.1-at91-sam9x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-w6IxEppW1HPza94MdLxfx1SO0LFDDAqYmhzy3/Vfnxs=";
    name = "at91_sam9x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sam9x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "11cfe7a2082a2713e5b93126936c4f1c";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-11cfe7a2082a2713e5b93126936c4f1c";
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
  kmods."6.6.86-1-11cfe7a2082a2713e5b93126936c4f1c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sam9x/kmods/6.6.86-1-11cfe7a2082a2713e5b93126936c4f1c/";
    sourceInfo = {
      hash = "sha256-AHr6vDp/5WCQJP+LWMv560dVjHttlsUAeFN7Y+/iu+U=";
      name = "kmods-at91_sam9x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sam9x/kmods/6.6.86-1-11cfe7a2082a2713e5b93126936c4f1c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sam9x/packages/";
    sourceInfo = {
      hash = "sha256-uKXxBnI9K8ifNouBZfCyG+Xuv0CYp+57Pd7WJB8YHBY=";
      name = "at91_sam9x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sam9x/packages/Packages";
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
