# 25.12.0 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-aRL/PJUo0Ea1MBN3hnue6jw/uHoIJSO9Wcn8imqEFSU=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "fca6915a84f986c9670f1a47ae32027580b0797bd58a6e8e30830ce3f65f62d2";
    filename = "immortalwrt-imagebuilder-25.12.0-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lHOXIxw8kqxoafLTIyyWepUAWNKMrPK5Z9qXfqxefZo=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "e161ede124847371aae6e79de26bcb88";
      version = "6.12.87";
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
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.87-1-e161ede124847371aae6e79de26bcb88";
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
  kmods."6.12.87-1-e161ede124847371aae6e79de26bcb88" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/generic/kmods/6.12.87-1-e161ede124847371aae6e79de26bcb88/";
    sourceInfo = {
      hash = "sha256-nBTjMZXovjIEwuILXOt8oT4wIUcNfK71pxJ2b8bKgCw=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/generic/kmods/6.12.87-1-e161ede124847371aae6e79de26bcb88/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-MRVACL2xJUE4DpCCeOPd8IUZwpoOmAon/0vnemHIcGQ=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/bcm47xx/generic/packages/packages.adb";
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
