# 25.12.0 ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-i0QS8KbT8l+qdX4LRRWRO8Afez4YNSPGBjW/mwOdXW0=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7effc6bcd4eb97c66c8f539b64cbc56b29f279aa2742c357132de1fe786ae7f3";
    filename = "immortalwrt-imagebuilder-25.12.0-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-O4IlzFyFsuZW8DQNSKE0UriJ2ERVlFhnuLHHf1CITgM=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "03dc8bb4248f976f233a47843a514a75";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fconfig"
      "firewall4"
      "fstools"
      "kmod-crypto-hw-ixp4xx"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.87-1-03dc8bb4248f976f233a47843a514a75";
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
  kmods."6.12.87-1-03dc8bb4248f976f233a47843a514a75" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ixp4xx/generic/kmods/6.12.87-1-03dc8bb4248f976f233a47843a514a75/";
    sourceInfo = {
      hash = "sha256-ytmaPj7az3Dh3xGOPOQiPeFEljKRPKxi6t0GU6/gids=";
      name = "kmods-ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ixp4xx/generic/kmods/6.12.87-1-03dc8bb4248f976f233a47843a514a75/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-PJUF3xwDuKQJc3D05rr7PSd5iigyhRZ79mhS5VXTM80=";
      name = "ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ixp4xx/generic/packages/packages.adb";
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
