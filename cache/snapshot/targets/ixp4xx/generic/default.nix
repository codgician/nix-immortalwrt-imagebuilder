# snapshot ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-FeTPq9V98rpd5MO20bppllgLb7kS/JJgPDFEVM01+0M=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "f97c0fe5233d51b8d282f481f3420edb3a1a18018596c98ee0b8f4ac18e5286d";
    filename = "immortalwrt-imagebuilder-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jRmq35+j+hu9Emo63dOcw+tPFob2Y/OYdu0OjBA+qf0=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "db15f692880e18e3056586db2075c423";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-db15f692880e18e3056586db2075c423";
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
  kmods."6.18.60-1-db15f692880e18e3056586db2075c423" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.18.60-1-db15f692880e18e3056586db2075c423/";
    sourceInfo = {
      hash = "sha256-qpse3zakHrlYjFRnO90klzj2nRhGolOAN0tIIh9C/v8=";
      name = "kmods-ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.18.60-1-db15f692880e18e3056586db2075c423/packages.adb";
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
      hash = "sha256-qIvjuHffKTTDDWRgRGy4LNukGuMNcV5J0dkaXqGNz4o=";
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
