# 24.10.0 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-oT3ZWJNrhtWKpw8qSk61W3tSNMTprr3MRtZrUarVY5o=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "11e93bad29ff14dd060cc067747312be104df0c56225fac8610bc4fb21f07ace";
    filename = "immortalwrt-imagebuilder-24.10.0-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5c+FgBcgSi3qvJIulEffayhicmuX1fL3fANmnWQ1RAo=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "9913a39ee04710d9b1dd5647c45ef71e";
      version = "6.6.73";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3-octeon"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
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
    kmods_target = "6.6.73-1-9913a39ee04710d9b1dd5647c45ef71e";
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
  kmods."6.6.73-1-9913a39ee04710d9b1dd5647c45ef71e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/octeon/generic/kmods/6.6.73-1-9913a39ee04710d9b1dd5647c45ef71e/";
    sourceInfo = {
      hash = "sha256-4u8BhiU7PDjbZUOW273jWSfmPK23pL7WOo7gT3kfQEQ=";
      name = "kmods-octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/octeon/generic/kmods/6.6.73-1-9913a39ee04710d9b1dd5647c45ef71e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-chuxkR3UYQx7n04ypHA4bDgl71GPZQIZCQO50nNw5Qs=";
      name = "octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/octeon/generic/packages/Packages";
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
