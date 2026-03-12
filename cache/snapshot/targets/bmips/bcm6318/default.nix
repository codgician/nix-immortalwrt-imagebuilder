# snapshot bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-6OBjtha9CCwyu3laiCC8Gl8V4SYEmQHxw1bo2A/RELc=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "4e5d8118b3d3329030cc861e971a9bed658392e4e69c6caaf912b239209f5f25";
    filename = "immortalwrt-imagebuilder-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Jnc9C10Dx9pasgBFl0cPpaN0jW5XYtDUXzUcPpq3hqY=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "7364c64843a7d8d1af57f3083f063e94";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-7364c64843a7d8d1af57f3083f063e94";
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
        ];
      };
      tp-link_td-w8968-v3 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
    };
  };
  kmods."6.12.74-1-7364c64843a7d8d1af57f3083f063e94" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.12.74-1-7364c64843a7d8d1af57f3083f063e94/";
    sourceInfo = {
      hash = "sha256-ob772XhHpcCqvE1UtUj087sDHDHs8STi2TY8AkrSSTA=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.12.74-1-7364c64843a7d8d1af57f3083f063e94/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-R7/NnuRhokgJ+J5o9l2mqCQuqEwK2fX7G05W/JlI5JQ=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/packages.adb";
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
