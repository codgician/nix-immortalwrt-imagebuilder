# 21.02.7 bcm47xx/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-vICyGsmsGlWFDFIM/aXDCPjrgxnPlDZcTWo9dkVXdWs=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e4a0b55737e641b4b37934e15332997dcad7796a1a2ab3f1972869602d59f4fb";
    filename = "immortalwrt-imagebuilder-21.02.7-bcm47xx-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-e+wrcCLepN0X4f6fobOHBgk3dwaSXwHlJJV6sJngAj8=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nvram"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      linksys_e3000-v1 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      "linksys_wrt300n-v1.1" = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
        ];
      };
      linksys_wrt310n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
        ];
      };
      linksys_wrt350n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v2 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [
          "kmod-b44"
          "kmod-bgmac"
          "kmod-tg3"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-7pFpRCFqBwUrMyjifHSxbbLmfwIGz4rc8dFcIv9RZIs=";
      name = "bcm47xx_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
