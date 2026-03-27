# 24.10.4 ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-zSoJfgG3BCRrmMm30pe2JVZ8JVfIpO3+zzjx1iBbTzA=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "fc3c4b5ef72f57d55dab72d340d1fc5dbc458b5387258bd62b58e840107d2f0b";
    filename = "immortalwrt-imagebuilder-24.10.4-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Y4SjXx5mp651EVplTCRk2L/AFay5E/ekoVuU77mAcmk=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "a6c3c7eb937963aef9330ba199164d33";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-a6c3c7eb937963aef9330ba199164d33";
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
  kmods."6.6.110-1-a6c3c7eb937963aef9330ba199164d33" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ixp4xx/generic/kmods/6.6.110-1-a6c3c7eb937963aef9330ba199164d33/";
    sourceInfo = {
      hash = "sha256-ogDtTUczOHtsA/Aebc0P2LCdT15KVJZTlnttaSvazr0=";
      name = "kmods-ixp4xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ixp4xx/generic/kmods/6.6.110-1-a6c3c7eb937963aef9330ba199164d33/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-++WCmau4JPUyAw6kagQ3maXby4luiJd2L+RwK1IJELs=";
      name = "ixp4xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ixp4xx/generic/packages/Packages";
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
