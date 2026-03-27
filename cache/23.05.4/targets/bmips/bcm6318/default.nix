# 23.05.4 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-SZDpnesMv5q7aKnjVOMwPq8lTEBv8oP99M9ZQuVDvKo=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "9a8bce329e82f730271e3dc1a7ee7c1cb14b78fdeb6e6e42f69f516acfdabb3d";
    filename = "immortalwrt-imagebuilder-23.05.4-bmips-bcm6318.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-9bPTSBlD1RNLE+VvGG/9D///Cbhktsx4yHeZ6y4KoHQ=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6318/profiles.json";
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
      comtrend_ar-5315u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-qUIW0sAVb6V0ffwFxjRRxSxM22EPRman7XeuCl9I1a8=";
      name = "bmips_bcm6318-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bmips/bcm6318/packages/Packages";
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
