# 24.10.4 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-wEpqBnMqFDmS+UAdhPnD26hOYXi4RJNvDyDm2HSQRyU=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d3182af5fd0a5b35a13b5bf3dcb355344e9913cc040c7ceb8af2ae3016b778df";
    filename = "immortalwrt-imagebuilder-24.10.4-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rhJNLWXfZoAhT/eWcuOExtRdxp7t4Iy5dNtr/YfLCh4=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "89dcb400f1b970689a725ff7cbf4063b";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-89dcb400f1b970689a725ff7cbf4063b";
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
  kmods."6.6.110-1-89dcb400f1b970689a725ff7cbf4063b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/octeon/generic/kmods/6.6.110-1-89dcb400f1b970689a725ff7cbf4063b/";
    sourceInfo = {
      hash = "sha256-tAv70PwqVKyS/BqL2X6TZc6CLbfUDjwv8/MP+0nNbgI=";
      name = "kmods-octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/octeon/generic/kmods/6.6.110-1-89dcb400f1b970689a725ff7cbf4063b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-qE7D7ek6USo/Td3RIlt9mwSN+icjTSnYfv1G+NDv6rQ=";
      name = "octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/octeon/generic/packages/Packages";
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
