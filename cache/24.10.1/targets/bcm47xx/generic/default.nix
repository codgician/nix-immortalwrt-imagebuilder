# 24.10.1 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-RB1PUe6C8JaD6ch9kcxjuISJU2Is61nuXoXNieuqaZU=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d9b19484619fcf46d1b38ae623d132d6d80d95352ac3f6fedfac0b683c75eed8";
    filename = "immortalwrt-imagebuilder-24.10.1-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dw6wF1kOCuJae9/Lyv9ga0xW5ZqkCf+5k/g+Yrukis4=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "0e074ecab124f5c6127c90c494d9807c";
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
      "kmod-gpio-button-hotplug"
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
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.86-1-0e074ecab124f5c6127c90c494d9807c";
    profiles = {
      linksys_e3000-v1 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v2 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [
          "kmod-b44"
          "kmod-bgmac"
          "kmod-tg3"
        ];
      };
    };
  };
  kmods."6.6.86-1-0e074ecab124f5c6127c90c494d9807c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/generic/kmods/6.6.86-1-0e074ecab124f5c6127c90c494d9807c/";
    sourceInfo = {
      hash = "sha256-2y50+ikpIIgtn820rSWZVKN+AeAT8/VV4K7LlKWeBls=";
      name = "kmods-bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/generic/kmods/6.6.86-1-0e074ecab124f5c6127c90c494d9807c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-iCDLXkkt/ij0LjvYb5NKgWcS88U4w0zrS9PVkkpnCb8=";
      name = "bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm47xx/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
