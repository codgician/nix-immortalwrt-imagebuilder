# 24.10.2 ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-K6eJYPFwVhT5Ic4GIUAEgKHEVVKJ9JDg2d8BhJAQuuc=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "4907831ff8200c6e85293f2cd2d4c346fce1fa8148884ec09dd17cb5b17b29a6";
    filename = "immortalwrt-imagebuilder-24.10.2-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bI4QB4N0w5aIu2w23E3vcH83jhKwAm8nsZDyS+fcyZQ=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "d3f39ed9f3715394a6559281373c1549";
      version = "6.6.93";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.93-1-d3f39ed9f3715394a6559281373c1549";
    profiles = {
      belkin_f9k1109v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-645 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      edimax_br-6475nd = {
        device_packages = [ ];
      };
      engenius_esr600h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "uboot-envtools"
        ];
      };
      omnima_hpm = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      samsung_cy-swr1100 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      trendnet_tew-691gr = {
        device_packages = [ ];
      };
      trendnet_tew-692gr = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.93-1-d3f39ed9f3715394a6559281373c1549" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt3883/kmods/6.6.93-1-d3f39ed9f3715394a6559281373c1549/";
    sourceInfo = {
      hash = "sha256-v2Zr4JFHwghspFt0BXE1zbb0PVwsWKVDYRjbhjjYVRc=";
      name = "kmods-ramips_rt3883-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt3883/kmods/6.6.93-1-d3f39ed9f3715394a6559281373c1549/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-ejv7ykJBdni8HaxllQFdeAqtBn2URtMoEmI1xUzhAsY=";
      name = "ramips_rt3883-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ramips/rt3883/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_74kc";
  feeds = import ./../../../packages/mipsel_74kc.nix;
}
