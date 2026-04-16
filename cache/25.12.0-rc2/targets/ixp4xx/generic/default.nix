# 25.12.0-rc2 ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-leCwZ54ABcXofVTJOiVwAV0EDz7fh01g1yvpbPGGiyY=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "22741f94a740cbb5978792feddded8813513ded59f9c2abcaf354514613977ca";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-uM/bvD30tYtXHmERtL/f0Dq5o4UJJGW5e/rZlBXMJtE=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "ca02837ec98ce3c9e5a78de1b50883de";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-ca02837ec98ce3c9e5a78de1b50883de";
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
  kmods."6.12.79-1-ca02837ec98ce3c9e5a78de1b50883de" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ixp4xx/generic/kmods/6.12.79-1-ca02837ec98ce3c9e5a78de1b50883de/";
    sourceInfo = {
      hash = "sha256-gGvd/rggb1BsxUFb+A+9MZVh3NAR2qEy4Fj1BTVFsoI=";
      name = "kmods-ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ixp4xx/generic/kmods/6.12.79-1-ca02837ec98ce3c9e5a78de1b50883de/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-YIalQoo72SwJJX9hMkRa46gPi/NSi9i5BP1iFOFcsRQ=";
      name = "ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ixp4xx/generic/packages/packages.adb";
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
