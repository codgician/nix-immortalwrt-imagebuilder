# snapshot ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-kbPNsxNIVgj4aJYJKkgOAx2eyF2o68efvgVIeiEU5Ys=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "496e6e29b9724d9dfef54e3e15976f510849c701f077a0df6a485db241ebb31c";
    filename = "immortalwrt-imagebuilder-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-F/3LRlV9SrFmV+Of3RcbilDnEyVZjxUMjot65Pm8/Q8=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "6249c68fbe338021b31fef32694bdb6e";
      version = "6.18.44";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "fconfig"
      "firewall4"
      "fstools"
      "kmod-crypto-hw-ixp4xx"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
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
    kmods_target = "6.18.44-1-6249c68fbe338021b31fef32694bdb6e";
    profiles = {
      dlink_dsm_g600_a = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-pcf8563"
          "kmod-via-velocity"
          "kmod-ata-artop"
          "kmod-ath5k"
          "wpad-openssl"
        ];
      };
      gateworks_avila = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-hwmon-ad7418"
        ];
      };
      gateworks_cambria = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-hwmon-ad7418"
        ];
      };
      iomega_nas100d = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-pcf8563"
        ];
      };
      usrobotics_usr8200 = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-r7301"
          "kmod-firewire"
          "kmod-firewire-ohci"
          "kmod-dsa-mv88e6060"
        ];
      };
    };
  };
  kmods."6.18.44-1-6249c68fbe338021b31fef32694bdb6e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.18.44-1-6249c68fbe338021b31fef32694bdb6e/";
    sourceInfo = {
      hash = "sha256-RsMFlKnwIYVqZTxjAGSCq0gtJl/IULkvDPRDciFc+Es=";
      name = "kmods-ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.18.44-1-6249c68fbe338021b31fef32694bdb6e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-9MNr9hae4nfEPWQ78uzP4tsIqBHkHXLymANRx6cMvAM=";
      name = "ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "armeb_xscale";
  feeds = import ./../../../packages/armeb_xscale.nix;
}
