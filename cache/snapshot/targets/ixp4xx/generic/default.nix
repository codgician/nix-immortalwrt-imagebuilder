# snapshot ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-6qAvX+Oo/2vvVwgIatad5pxIigdCfnwH16wsGeJN4+I=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "4764e95d17a6af4801b029f93f5f29476e5ebe7ca1ca1b74f599e053e9a74bac";
    filename = "immortalwrt-imagebuilder-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-yAeQc18NN9ndfSHKxYW5agc7zBqLXhZrR/xCmI6oPNI=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "b4e03f90be9369916ea6425a27f15e6f";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-b4e03f90be9369916ea6425a27f15e6f";
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
  kmods."6.12.74-1-b4e03f90be9369916ea6425a27f15e6f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.12.74-1-b4e03f90be9369916ea6425a27f15e6f/";
    sourceInfo = {
      hash = "sha256-v4vk3mOO6rBeUFWATdknwaB/IDCHkKjUsn4cabhJfec=";
      name = "kmods-ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.12.74-1-b4e03f90be9369916ea6425a27f15e6f/packages.adb";
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
      hash = "sha256-Qaxjjnep5B6WCN55MmsZ+exW/zFgcQgBH0AkjQ6OjoI=";
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
