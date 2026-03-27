# 24.10.3 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-EnOG5O8E/OSzDv3inNP4RI0lVKgeiu6OBP3MbPGbatA=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "5e1a1c852c601b1b660809ce93e6c5800e7ff3944371abd1af24f48afc739b35";
    filename = "immortalwrt-imagebuilder-24.10.3-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/YkYvdGMY1hlo9qARvhVRYX7BUT2wblrxEBW/pHr4hI=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "7af0e682c15922453753755bb37c07ca";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-7af0e682c15922453753755bb37c07ca";
    profiles = {
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.104-1-7af0e682c15922453753755bb37c07ca" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6358/kmods/6.6.104-1-7af0e682c15922453753755bb37c07ca/";
    sourceInfo = {
      hash = "sha256-rM/aYub7nNdm/gkuqal3BXB52/iqCEncQWiBAvYvRvM=";
      name = "kmods-bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6358/kmods/6.6.104-1-7af0e682c15922453753755bb37c07ca/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-u5wHQaTNdWsvgc3+JrYCfYucI5mUNqn1jxgE6e3VtBM=";
      name = "bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bmips/bcm6358/packages/Packages";
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
