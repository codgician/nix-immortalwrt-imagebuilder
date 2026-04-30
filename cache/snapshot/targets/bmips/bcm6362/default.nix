# snapshot bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-kQETHB0Mw0EiWdLKkuNYr6FnuLwB3ekKMvPuoMLoBt4=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "18bf1fd58ede948359e911deced3caf041cf5d219c3370eb773acb65ec397a50";
    filename = "immortalwrt-imagebuilder-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-moTJJbK+v/sN/UkqlDOjGGSl2eH2uqJIm6ivNwKH9Bk=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "e7fefc78b3faed75fc801b425aa7743b";
      version = "6.12.80";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.80-1-e7fefc78b3faed75fc801b425aa7743b";
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
  kmods."6.12.80-1-e7fefc78b3faed75fc801b425aa7743b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.12.80-1-e7fefc78b3faed75fc801b425aa7743b/";
    sourceInfo = {
      hash = "sha256-AXECyRlXEqReSyO4dNCMucOyDWyA8Q2Eg+yk4WSDGB4=";
      name = "kmods-bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/kmods/6.12.80-1-e7fefc78b3faed75fc801b425aa7743b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-bkz0ArmY6cKv7jeEZTX6Ucb2oa706bdpBCxWkY+HW4k=";
      name = "bmips_bcm6362-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6362/packages/packages.adb";
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
