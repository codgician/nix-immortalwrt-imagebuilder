# snapshot octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-XDaZq0TqUDhvs10bb8NRi4h/IqsMFAmloKKUMfBOjd8=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1940d069f454f52a52965fca9d17a6d8a391a72bdbb7d3c48efe5ef64dca4a6d";
    filename = "immortalwrt-imagebuilder-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-7+FUTQEMi01bB6+JOoi4X3vT6De2O4XiyQjYCq7vtr0=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "c488c079dfaa0e4c465b5e9c0d9bfec8";
      version = "6.18.34";
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
    kmods_target = "6.18.34-1-c488c079dfaa0e4c465b5e9c0d9bfec8";
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
  kmods."6.18.34-1-c488c079dfaa0e4c465b5e9c0d9bfec8" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.18.34-1-c488c079dfaa0e4c465b5e9c0d9bfec8/";
    sourceInfo = {
      hash = "sha256-qJsEe22Un42m1EmPTkPBa02m4Ily4OqOIGpjNH+enBU=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/octeon/generic/kmods/6.18.34-1-c488c079dfaa0e4c465b5e9c0d9bfec8/packages.adb";
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
      hash = "sha256-9sjFQzneE9PAfhN03+m+zmVu9rQ/ffPz30r27LmxkXI=";
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
