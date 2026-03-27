# 24.10.0 ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-D6vctB+kbnhETJnB5OJMVLHC1O4UeiJ0WKadZnt0r+U=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "43893cc325110ec3fa01023b2795b94a140b286623986676fe6816de224c36ef";
    filename = "immortalwrt-imagebuilder-24.10.0-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-FeOt/SLaP5h8ktC9mvp4sT1gHXZ75om5Ga0bvRSeI1Q=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "f1172ba4833b84a29d24c7875d6f9709";
      version = "6.6.73";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
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
    kmods_target = "6.6.73-1-f1172ba4833b84a29d24c7875d6f9709";
    profiles = {
      dlink_dsm_g600_a = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-pcf8563"
          "kmod-via-velocity"
          "kmod-ata-artop"
          "kmod-ath5k"
          "wpad-basic-mbedtls"
          "iwinfo"
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
  kmods."6.6.73-1-f1172ba4833b84a29d24c7875d6f9709" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ixp4xx/generic/kmods/6.6.73-1-f1172ba4833b84a29d24c7875d6f9709/";
    sourceInfo = {
      hash = "sha256-N5mg061tgUtiK0yXmbFseAN1ympBaur3yal7pnTxcb8=";
      name = "kmods-ixp4xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ixp4xx/generic/kmods/6.6.73-1-f1172ba4833b84a29d24c7875d6f9709/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-34T6yaNfrjvpuaUJaGscrbYdLLru8uCwuvHKYte5BNw=";
      name = "ixp4xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ixp4xx/generic/packages/Packages";
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
