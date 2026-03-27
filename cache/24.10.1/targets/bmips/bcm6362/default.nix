# 24.10.1 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-sF+/e6GiSiXgddhD9LybMwHRSq3bCCS8G2OG63zUTOU=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "a1291d8d827ad5c33165793cf46e3d012cfe8e310e1038c7f0734fd2236ec971";
    filename = "immortalwrt-imagebuilder-24.10.1-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qWsMurrwbf0xf9xIg4D+LeSLe2J5yJU4fs3lESCgZvA=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "f6240cc2cbc494a9cf244bc2a7fd7944";
      version = "6.6.86";
    };
    default_packages = [
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
    kmods_target = "6.6.86-1-f6240cc2cbc494a9cf244bc2a7fd7944";
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
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.86-1-f6240cc2cbc494a9cf244bc2a7fd7944" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6362/kmods/6.6.86-1-f6240cc2cbc494a9cf244bc2a7fd7944/";
    sourceInfo = {
      hash = "sha256-LrIrzb6j7t4ihgjVovy9as25h+EPJEerlBI6wNIHvkE=";
      name = "kmods-bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6362/kmods/6.6.86-1-f6240cc2cbc494a9cf244bc2a7fd7944/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-jvpZJOU/cXd6FY/3cg5hh3zQ8mDRriFbMPbN9YqaLxU=";
      name = "bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/bmips/bcm6362/packages/Packages";
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
