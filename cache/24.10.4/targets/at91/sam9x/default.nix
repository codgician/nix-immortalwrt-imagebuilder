# 24.10.4 at91/sam9x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sam9x/";
  sha256sums = {
    hash = "sha256-4laAvd0l2r0Dn/z/yc6S2yZZxRG9RVz/KpZ5TQsQ3D0=";
    name = "at91_sam9x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sam9x/sha256sums";
  };
  imagebuilder = {
    sha256 = "647060b5de626a4e6849b2fc12b81b5f6ac5202e14d1f67f8cbf241276750d65";
    filename = "immortalwrt-imagebuilder-24.10.4-at91-sam9x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AaPXxRJsINDRKD/PU+dpE+/FnfuOVsd9R14T4McDC38=";
    name = "at91_sam9x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sam9x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "6a9a074f00e2dc9e4e9d142f6a5ce05a";
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
    kmods_target = "6.6.110-1-6a9a074f00e2dc9e4e9d142f6a5ce05a";
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
  kmods."6.6.110-1-6a9a074f00e2dc9e4e9d142f6a5ce05a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sam9x/kmods/6.6.110-1-6a9a074f00e2dc9e4e9d142f6a5ce05a/";
    sourceInfo = {
      hash = "sha256-neXtoCyeOtlMkX07M46Ibj8eGl+WvBKNNzT3OjWPUV0=";
      name = "kmods-at91_sam9x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sam9x/kmods/6.6.110-1-6a9a074f00e2dc9e4e9d142f6a5ce05a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sam9x/packages/";
    sourceInfo = {
      hash = "sha256-hltpLyiElOVpfiBnDfjnA6EnW7xbAhJtfioTlp1Jk2M=";
      name = "at91_sam9x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sam9x/packages/Packages";
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
