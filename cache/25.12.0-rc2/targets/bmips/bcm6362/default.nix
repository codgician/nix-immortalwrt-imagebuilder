# 25.12.0-rc2 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-WP0IZYCPfrs/VW7HepHtcDhY7vzqcYlcaX74j0qyToA=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "834db77a1e22a32c7bcdcc68283e3f4b022b9e1b7d83d96df452abf419e54d02";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/wfsBm6U/Ez59JySSxOx7CgZW66lDOWnLwRICdcmzW8=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "9bf441a029ff732225986fb750e23c1d";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-9bf441a029ff732225986fb750e23c1d";
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
  kmods."6.12.79-1-9bf441a029ff732225986fb750e23c1d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6362/kmods/6.12.79-1-9bf441a029ff732225986fb750e23c1d/";
    sourceInfo = {
      hash = "sha256-eyBlAjDCDNbZBeTFlduT4tA96nhSB0E2rtFq70o2IEw=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6362/kmods/6.12.79-1-9bf441a029ff732225986fb750e23c1d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-5C3PU28rh6Gj57AXnl75HdOBhriA/RqMMpVSDq5iaoQ=";
      name = "bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6362/packages/packages.adb";
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
