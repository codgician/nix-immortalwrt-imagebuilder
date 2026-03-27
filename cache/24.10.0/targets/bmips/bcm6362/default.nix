# 24.10.0 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-aiFDNRUDA/ZcwA8o8i0H51Yx+vWIECwYD/N60cyy4Mo=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "7985c81db368855ff16b074bb6a7c6df7e12219a08f4e3280d1910bd9a115acc";
    filename = "immortalwrt-imagebuilder-24.10.0-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-U7gmuQkEKXWEJvmzkEONJDUh9tlfcWDAR8Gk9wQbFJU=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "9c21513072f4767a0eee9363a455c98d";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-9c21513072f4767a0eee9363a455c98d";
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
  kmods."6.6.73-1-9c21513072f4767a0eee9363a455c98d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6362/kmods/6.6.73-1-9c21513072f4767a0eee9363a455c98d/";
    sourceInfo = {
      hash = "sha256-p9n9THimpVJCMvPfM/qgIU5iuH/PGYxDn4qhjr2TBFs=";
      name = "kmods-bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6362/kmods/6.6.73-1-9c21513072f4767a0eee9363a455c98d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-G83EjrDCc/8H3w+TmSHfMgMfl+b2lSx8U0alGTqh11g=";
      name = "bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bmips/bcm6362/packages/Packages";
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
