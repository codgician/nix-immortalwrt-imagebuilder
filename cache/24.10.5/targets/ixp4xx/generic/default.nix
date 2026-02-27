# 24.10.5 ixp4xx/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-yvUMJ5mfGacx9Upq+BgBLSm8TLKxw08Im7jPyNOxcbY=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "147f45bfd33852ce54750e7b9f9f2fbc2869f43480697a901a0d8d5090a7dce6";
    filename = "immortalwrt-imagebuilder-24.10.5-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XjiONQX9IOez5I52ekFWJNSqxsM0/2sfhQHthAGlSH4=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "506bddee533e329d28b6fc699bb09dec";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-506bddee533e329d28b6fc699bb09dec";
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
  kmods."6.6.122-1-506bddee533e329d28b6fc699bb09dec" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ixp4xx/generic/kmods/6.6.122-1-506bddee533e329d28b6fc699bb09dec/";
    sourceInfo = {
      hash = "sha256-nNMT0QFhauSMqaX2qJ8IBXD1rTCF5KIJf3LZ+VbPCBo=";
      name = "kmods-ixp4xx_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ixp4xx/generic/kmods/6.6.122-1-506bddee533e329d28b6fc699bb09dec/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-Z1c7HS7Nrnrw/Y19Co+w1OV3Ax+acIzJ3nrQxbe6HuQ=";
      name = "ixp4xx_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ixp4xx/generic/packages/Packages";
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
