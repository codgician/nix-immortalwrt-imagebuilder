# 23.05.3 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-sh7GJ6pkjEFaPRTDKiCURARDjZVeEN4uD/IlzXN1ieI=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3da36efb512c39d09cca33773320001ac13f9950de51a84f02011b68c7b380a7";
    filename = "immortalwrt-imagebuilder-23.05.3-bcm47xx-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-x8HWwL0zewDujuxTcU+bwvJxifOCTXdbq2dAvF5dc/I=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-4s6RA1lE7bucl5tb4mIJi+CoGHx9d/oiiHPRx5TuU3M=";
      name = "bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/bcm47xx/generic/packages/Packages";
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
