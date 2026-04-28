# 24.10.6 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-VeUd2MjDmkGPMzl68nGL/dR4ViUbANMH5tY5t2PbhsA=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "faf47cc350110da9f18828ef53800ab4d33b13a1353635cda19b13d8cebcfbc8";
    filename = "immortalwrt-imagebuilder-24.10.6-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Wx7gJc2PmAQgVXWauu6SeP6ecW7StSCtlkf1uPpwqrE=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "751e3894f4de2a041cf8e701e8a82a47";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-751e3894f4de2a041cf8e701e8a82a47";
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
  kmods."6.6.133-1-751e3894f4de2a041cf8e701e8a82a47" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/octeon/generic/kmods/6.6.133-1-751e3894f4de2a041cf8e701e8a82a47/";
    sourceInfo = {
      hash = "sha256-l1Hf9iSoP7OhC7MPgZ0ZwiZClzfCsYTK7/qgsB2OHlw=";
      name = "kmods-octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/octeon/generic/kmods/6.6.133-1-751e3894f4de2a041cf8e701e8a82a47/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-6FYtEGjJqP7w3qDbgUFQlhWAqbGypPoWsXLS+2tGZgM=";
      name = "octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/octeon/generic/packages/Packages";
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
