# snapshot octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-MeyE8ck0IadKrY3r8wD+cIfrr2Bu5KNUHlI+WEhLFgc=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "df4659330f735268426bd7576a7f684354005129ee11634c6793ac888533381f";
    filename = "immortalwrt-imagebuilder-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ywOu8MruWhf7V7e/pcA7g2pMIpinaOUmrqxsSOqPchc=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "a37a98c501d19920b611b221f9dc32f9";
      version = "6.18.39";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "kmod-usb-dwc3-octeon"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
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
    kmods_target = "6.18.39-1-a37a98c501d19920b611b221f9dc32f9";
    profiles = {
      cisco_vedge1000 = {
        device_packages = [
          "blkid"
          "kmod-hwmon-jc42"
          "kmod-hwmon-max6697"
          "kmod-of-mdio"
          "kmod-rtc-ds1307"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
          "kmod-usb3"
          "sfdisk"
          "uboot-envtools"
        ];
      };
      generic = {
        device_packages = [ ];
      };
      itus_shield-router = {
        device_packages = [ ];
      };
      ubnt_edgerouter = {
        device_packages = [ ];
      };
      ubnt_edgerouter-4 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-6p = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-lite = {
        device_packages = [ ];
      };
      ubnt_unifi-usg = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.18.39-1-a37a98c501d19920b611b221f9dc32f9" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.18.39-1-a37a98c501d19920b611b221f9dc32f9/";
    sourceInfo = {
      hash = "sha256-hiOVIrSdzD40VqlfXGKS5EKxaxYy/9kB3RLwt8zvvKg=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.18.39-1-a37a98c501d19920b611b221f9dc32f9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-Tl58flLxh9QWnbTViLoAhqh2z0vPnELz+UAvc4iPKak=";
      name = "octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64_octeonplus";
  feeds = import ./../../../packages/mips64_octeonplus.nix;
}
