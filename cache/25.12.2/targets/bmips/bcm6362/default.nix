# 25.12.2 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-71NOBs10c3UHj8ijz3n1648xaejUyh/XwwFRyf9RuWo=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "7c66decd255a5cd9d902519317e5cb929e3d0b363ecb036658cf669146544b67";
    filename = "immortalwrt-imagebuilder-25.12.2-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-imHONrM2NpuvCXzz6YaKQigxh6mz1vkMO+8VSVmvyqs=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "f56cc0940b26cbe2a2308660bdb8b425";
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
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
    kmods_target = "6.12.103-1-f56cc0940b26cbe2a2308660bdb8b425";
    profiles = {
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.103-1-f56cc0940b26cbe2a2308660bdb8b425" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6362/kmods/6.12.103-1-f56cc0940b26cbe2a2308660bdb8b425/";
    sourceInfo = {
      hash = "sha256-8ll4eWyZrIM7owiOrnEtV+QCxxD7Q7HSGsOAj8Py3aQ=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6362/kmods/6.12.103-1-f56cc0940b26cbe2a2308660bdb8b425/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-MxRey2SyHCZ/LPn2UgVxYR6+8mhwN3sAYhjzNAImf3Q=";
      name = "bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bmips/bcm6362/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
