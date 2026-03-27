# 24.10.2 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-0/OfREriys4uuCwa6toRAIevYAdMxlQzbA1swhYlxQ0=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "26a7dae0257243a1374ce134fe368212b6e7736482af0b97603d23d1d19a00b4";
    filename = "immortalwrt-imagebuilder-24.10.2-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NgQ3x3Z9Vy4O8LCvVx+v8mPmJPT8qF8q+lPmKEd3UtQ=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "1db9053036a0844bf33fca4fbb6139af";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-1db9053036a0844bf33fca4fbb6139af";
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
  kmods."6.6.93-1-1db9053036a0844bf33fca4fbb6139af" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/octeon/generic/kmods/6.6.93-1-1db9053036a0844bf33fca4fbb6139af/";
    sourceInfo = {
      hash = "sha256-FFtycvsWOn/Mr0OWGzeL/n0yeNa+xLywdMdFeWclB64=";
      name = "kmods-octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/octeon/generic/kmods/6.6.93-1-1db9053036a0844bf33fca4fbb6139af/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-/1o1opH/Op3B7zwX9ZHL5muBNeqbl/NmfiOw80MrSMQ=";
      name = "octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/octeon/generic/packages/Packages";
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
