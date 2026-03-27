# 24.10.3 ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-e4w9mBj1dpJuN4V3lZ1NrlzRMniV5J1cp7UrBfUzfAE=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "97ecd91964035788a2132059f73959ce7fe2c9e365ab9f14c48f7cbc40758e77";
    filename = "immortalwrt-imagebuilder-24.10.3-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-az6HxKWrynyh5iyLOnp+c8dyR7Hhm5MZAwA4nJjkBic=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "411f506ca007fe46f31d30063f8a6493";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-411f506ca007fe46f31d30063f8a6493";
    profiles = {
      dlink_dsm_g600_a = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-pcf8563"
          "kmod-via-velocity"
          "kmod-ata-artop"
          "kmod-ath5k"
          "wpad-openssl"
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
  kmods."6.6.104-1-411f506ca007fe46f31d30063f8a6493" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ixp4xx/generic/kmods/6.6.104-1-411f506ca007fe46f31d30063f8a6493/";
    sourceInfo = {
      hash = "sha256-8hxfET8F6Jgv5+XgIkv89OrS+qr3mcmeAmPWEXV8/LI=";
      name = "kmods-ixp4xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ixp4xx/generic/kmods/6.6.104-1-411f506ca007fe46f31d30063f8a6493/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-fhGy/uh3Fy/Zuz0Htmn7b53aVGldbnLhEHPWwX+z2kU=";
      name = "ixp4xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ixp4xx/generic/packages/Packages";
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
