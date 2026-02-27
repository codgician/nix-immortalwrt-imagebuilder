# 21.02.7 bcm47xx/legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-75L86wMoXNRcm8zRqOVMmr6FcIxlcTG3k4Q/nHd3uSk=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "7cd670ef535f01a01a7752cdfb824a729536b2734c433bf8d45680c2200ca7b0";
    filename = "immortalwrt-imagebuilder-21.02.7-bcm47xx-legacy.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-aww0cHRG3oMn5P/QiX01Edq7TzaNK+4gS3DbpVQrmWY=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/legacy/profiles.json";
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
      asus_wl-300g = {
        device_packages = [
          "kmod-b43"
          "kmod-b43legacy"
        ];
      };
      asus_wl-320gp = {
        device_packages = [ "kmod-b43" ];
      };
      asus_wl-330ge = {
        device_packages = [ "kmod-b43" ];
      };
      asus_wl-500gd = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_wl-500gp-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_wl-500gp-v2 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_wl-500w = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-uhci"
          "kmod-usb2-pci"
        ];
      };
      asus_wl-520gu = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_wl-550ge = {
        device_packages = [ "kmod-b43" ];
      };
      asus_wl-hdd25 = {
        device_packages = [
          "kmod-b43"
          "kmod-b43legacy"
          "kmod-usb-ohci"
        ];
      };
      dlink_dwl-3150 = {
        device_packages = [ ];
      };
      edimax_ps1208-mfg = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      huawei_e970 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_wrt150n = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_wrt160n-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_wrt300n-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_wrt54g = {
        device_packages = [
          "kmod-b43"
          "kmod-b43legacy"
        ];
      };
      linksys_wrt54g3g = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_wrt54g3g-em = {
        device_packages = [ ];
      };
      linksys_wrt54g3gv2-vf = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt54gs = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_wrt54gs-v4 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_wrtsl54gs = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      motorola_wa840g = {
        device_packages = [
          "kmod-b43"
          "kmod-b43legacy"
        ];
      };
      motorola_we800g = {
        device_packages = [
          "kmod-b43"
          "kmod-b43legacy"
        ];
      };
      motorola_wr850g = {
        device_packages = [
          "kmod-b43"
          "kmod-b43legacy"
        ];
      };
      netgear_wgr614-v8 = {
        device_packages = [ "kmod-b43" ];
      };
      netgear_wgt634u = {
        device_packages = [
          "kmod-ath5k"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wndr3300-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      netgear_wnr834b-v2 = {
        device_packages = [ "kmod-b43" ];
      };
      standard = {
        device_packages = [ ];
      };
      standard-noloader-gz = {
        device_packages = [ ];
      };
      usrobotics_usr5461 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-o6xNNX0M3y6ECqge+OpdN7x+DiaIJkMrTCEIhIxUR04=";
      name = "bcm47xx_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/legacy/packages/Packages";
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
