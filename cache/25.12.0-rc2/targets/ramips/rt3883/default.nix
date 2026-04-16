# 25.12.0-rc2 ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-7fPWuFMIWZrfa2FEL/yBM18u5wr75+wTMdXxfI7xER4=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "1e4fc4b5398a8283e1b9626ff9ddf452588c4453230b083c22c719f33afc81b2";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qkZJ4IHkMv6zLG5NgsO7NUBIXN4KFA3v1CVkrSgCd7w=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "e1368bae8a95a137d363fe643b86e679";
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
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.79-1-e1368bae8a95a137d363fe643b86e679";
    profiles = {
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
  kmods."6.12.79-1-e1368bae8a95a137d363fe643b86e679" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt3883/kmods/6.12.79-1-e1368bae8a95a137d363fe643b86e679/";
    sourceInfo = {
      hash = "sha256-9lHbJgOI18Qdz0gf6ub7DBhoMt3iXa/HChSKcIxUTbE=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt3883/kmods/6.12.79-1-e1368bae8a95a137d363fe643b86e679/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-u+PN9tYxPMYl24zXZri+wPcH2MVRubohbSvpwf3n6sk=";
      name = "ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ramips/rt3883/packages/packages.adb";
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
