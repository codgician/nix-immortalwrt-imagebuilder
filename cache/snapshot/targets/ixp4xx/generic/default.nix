# snapshot ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-hTiw6T8Mat9wp9No84KrACvHVAfwBd8/LeJ4IChR9gk=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7551349c2b7761bf968e5d554426d8e9d428a12a0935a457d2ba32128459654d";
    filename = "immortalwrt-imagebuilder-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-a93IRDglV9BAoj9bjK98iw/vx7pr8guCfWONxK2eLvY=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "29db2efb34c7d9812705930b658958ce";
      version = "6.18.21";
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
    kmods_target = "6.18.21-1-29db2efb34c7d9812705930b658958ce";
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
  kmods."6.18.21-1-29db2efb34c7d9812705930b658958ce" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.18.21-1-29db2efb34c7d9812705930b658958ce/";
    sourceInfo = {
      hash = "sha256-uOuCQOP6zPUfqnOOG/cBWvk2zMdo4zmRQ/pv/5/TTUg=";
      name = "kmods-ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ixp4xx/generic/kmods/6.18.21-1-29db2efb34c7d9812705930b658958ce/packages.adb";
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
      hash = "sha256-dxj4Z2prwDnyO2WNwQVTvN/fIQeO5sfBSdN8LaodMe0=";
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
