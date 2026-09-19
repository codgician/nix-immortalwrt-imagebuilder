# snapshot octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-WPcwB0oRv/+euBFAjrfKM5vSYOHJ+v2bwvfFHRTemhw=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8f3208d574e611622ba7d337a869a4e03c200ad8cb6caad4517c1de2b6e19f5e";
    filename = "immortalwrt-imagebuilder-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-onR+XcV4Xi6HQDsLngi8DiMgCLOKjp0PQMvx3bJiB+k=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "2ee1f01a2f7a5dfaf052e305dd1a0e40";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-2ee1f01a2f7a5dfaf052e305dd1a0e40";
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
  kmods."6.18.52-1-2ee1f01a2f7a5dfaf052e305dd1a0e40" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.18.52-1-2ee1f01a2f7a5dfaf052e305dd1a0e40/";
    sourceInfo = {
      hash = "sha256-NvewzGm+iYY5qPEg4jrFes30UxYHBcv+mraMakVz9Rw=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.18.52-1-2ee1f01a2f7a5dfaf052e305dd1a0e40/packages.adb";
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
      hash = "sha256-lzco1M/uLP4NCUZ0DzDLbz1uf7pMzkK60htY548Hv9Q=";
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
