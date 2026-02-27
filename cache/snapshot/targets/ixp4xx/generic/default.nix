# snapshot ixp4xx/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-p5srCg/YDiTrxI8mvKBbk/JrD1HcZ9fKc9fOmbFbokI=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "eeebd4e88a305c1731fd7596fd423e66fe0a12794a89baec0a809a5adbc0701b";
    filename = "immortalwrt-imagebuilder-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-E1pzm7ovVZLkHUOSOfyEAXR8xNnSXhQV8sg4WKncJwo=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "ea8634f2ca469a931ead3e0e1e8b9221";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-ea8634f2ca469a931ead3e0e1e8b9221";
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
  kmods."6.12.67-1-ea8634f2ca469a931ead3e0e1e8b9221" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ixp4xx/generic/kmods/6.12.67-1-ea8634f2ca469a931ead3e0e1e8b9221/";
    sourceInfo = {
      hash = "sha256-FJP4+C+v+8/clsk43du8MzLUOllVeYjzFSL5u3XEygg=";
      name = "kmods-ixp4xx_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ixp4xx/generic/kmods/6.12.67-1-ea8634f2ca469a931ead3e0e1e8b9221/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-RhgtadXAt2arjQlLYJlxUCEt7ye7eWJM6x95LjTaNCI=";
      name = "ixp4xx_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ixp4xx/generic/packages/packages.adb";
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
