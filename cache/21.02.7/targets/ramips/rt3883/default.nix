# 21.02.7 ramips/rt3883
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-dAkYpoLHitmwst1XapCUr4l/ALnFzwAoHeFNWddcTvc=";
    name = "ramips_rt3883-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "0d7346f75080a6cd812aaeef281a20fe85be00d7d9c15784aefa2a821af523e4";
    filename = "immortalwrt-imagebuilder-21.02.7-ramips-rt3883.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-JPlkoI1dHfYf4+gDWF6cvQCnk4OqNnL3NFmEnTr+Avc=";
    name = "ramips_rt3883-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
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
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
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
      "opkg"
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
      loewe_wmdr-143n = {
        device_packages = [ ];
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
      sitecom_wlr-6000 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-gG/p7FZ+b0Z4RxdgBJgaid6EIcpsclAkKHbNfImnEa4=";
      name = "ramips_rt3883-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ramips/rt3883/packages/Packages";
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
