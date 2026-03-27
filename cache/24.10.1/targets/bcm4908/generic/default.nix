# 24.10.1 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-WMvXUJryrZw5Yn+7FrKm8fXp7EzGkxsBeM3OnuTvjzM=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0e71783e4c298a100d15568eb1e98b41cf8ba0a0b670280ceeefcd6b3a04f346";
    filename = "immortalwrt-imagebuilder-24.10.1-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-eAMmpcPwCubswK8EHTnwSNnTgW42Nazix3RRT9Wz8cE=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "1b4db294420e66ab049178e87f0b4634";
      version = "6.6.86";
    };
    default_packages = [
      "base-files"
      "bcm4908img"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdt-utils"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-1b4db294420e66ab049178e87f0b4634";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.86-1-1b4db294420e66ab049178e87f0b4634" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm4908/generic/kmods/6.6.86-1-1b4db294420e66ab049178e87f0b4634/";
    sourceInfo = {
      hash = "sha256-C1Kx9NCOE2HA7UUC/bYFJe5P7GqVK0H2JPYQLHsZOqI=";
      name = "kmods-bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm4908/generic/kmods/6.6.86-1-1b4db294420e66ab049178e87f0b4634/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-JAvMp1K6k5JAdFW3PQAYhPvziEoYkeGS0350kKVFoBA=";
      name = "bcm4908_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bcm4908/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
