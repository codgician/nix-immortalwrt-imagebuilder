# 23.05.1 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-qAzrA3qoIuow/b9FGJEC2CSlzzFZOoUZilrJbD+Z3x8=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "63944d7d76d46dcbebb12ffbfe6d64d6e920389fa252969814618d0e5640b877";
    filename = "immortalwrt-imagebuilder-23.05.1-bmips-bcm6362.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-irEZr6EfWWyPw84jZKL2qgNyx07ZiGr1pYd2J3AdIBM=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-ngn1S+rIQf9SZDXtEPqwf5MImQdsnYx/+GVMZ8RaiOw=";
      name = "bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6362/packages/Packages";
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
