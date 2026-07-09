# snapshot octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-fqSVmgS2C5zfVZxX8vCV8Efogx5vM/R70eDy80X4+aQ=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e7eaf682123b49422f2622524ecd5061cefdd609ddcaa2ccdd49307802649e66";
    filename = "immortalwrt-imagebuilder-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Rc+qS61y2s6dhVFtZMQzbV3zbSeczWPPa+FNfCH7S8I=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "4df7ab43c7afa79fa3f7a2ea8f7e1870";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-4df7ab43c7afa79fa3f7a2ea8f7e1870";
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
  kmods."6.18.37-1-4df7ab43c7afa79fa3f7a2ea8f7e1870" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.18.37-1-4df7ab43c7afa79fa3f7a2ea8f7e1870/";
    sourceInfo = {
      hash = "sha256-H8PsL2XEp02qw0CaNvO40+xOrpZbMyK/Q4bc6D1uoCE=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.18.37-1-4df7ab43c7afa79fa3f7a2ea8f7e1870/packages.adb";
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
      hash = "sha256-cxXR3rTreZFbCxtIX5oAJ3DnjpsAVnPLRMlPpM4MiFE=";
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
