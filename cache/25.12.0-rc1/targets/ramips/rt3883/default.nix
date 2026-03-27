# 25.12.0-rc1 ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-tMGxBrF0ylAd1DUGGpKAGIYTLBPdq8McrlwyiI4lDNc=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "82d3756a0b5752a5002e3e64495cb6e6e73d9af8e314dbb3351f1588722167af";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vSULQxzStxi6CyUG85FN9ysO/bYA6F3F2nDgnogzwNw=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "269b615d6dd931e7ee808048ba8c16f4";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-269b615d6dd931e7ee808048ba8c16f4";
    profiles = {
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
  kmods."6.12.74-1-269b615d6dd931e7ee808048ba8c16f4" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt3883/kmods/6.12.74-1-269b615d6dd931e7ee808048ba8c16f4/";
    sourceInfo = {
      hash = "sha256-u507ONK0MF1tf9O922hfrO2gvNHwkmsuNmZ5WuBGdNE=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt3883/kmods/6.12.74-1-269b615d6dd931e7ee808048ba8c16f4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-Q5g5tlv7iyPNa6kOyKa5Q0G5dXpgAqiKnTR7Nj33hpc=";
      name = "ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ramips/rt3883/packages/packages.adb";
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
