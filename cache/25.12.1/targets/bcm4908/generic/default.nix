# 25.12.1 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-lrZnec58TkH7LrinNffRG8tUr/RtmtCd70zox7vH9rg=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "50f586e7f509a323827e51428c844223dc86951a1dfc035b5ce28a391d084581";
    filename = "immortalwrt-imagebuilder-25.12.1-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-d9Amz97Z8/o0scGyV9ZrNRCkzPJDQol6XxRaQIDI6bM=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "e1f8590b56d1bc6570f9c7011970019c";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-e1f8590b56d1bc6570f9c7011970019c";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.94-1-e1f8590b56d1bc6570f9c7011970019c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm4908/generic/kmods/6.12.94-1-e1f8590b56d1bc6570f9c7011970019c/";
    sourceInfo = {
      hash = "sha256-JPFwzAzJCdwjBX3dhEs6T4634rfV79eSA5kLiZE7GiU=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm4908/generic/kmods/6.12.94-1-e1f8590b56d1bc6570f9c7011970019c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-lgCuQgmLiJOrp5sLJT4M1A9lllbk+ML2KabVuGABSCg=";
      name = "bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm4908/generic/packages/packages.adb";
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
