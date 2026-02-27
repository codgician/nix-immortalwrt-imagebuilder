# 23.05.7 ramips/rt3883
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-PzuXSJv0SrLADfNZ9XbvDGd4g7n0YDlC3pEJRlMLQq0=";
    name = "ramips_rt3883-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "1c7c90fc9054fc15f9565316508b82c0159f24ed292f767875b75858ad3433cd";
    filename = "immortalwrt-imagebuilder-23.05.7-ramips-rt3883.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-CLswpEzZ+LEVPwn7hMCBPIRcEs6lopzPw+Bgd6X5jK8=";
    name = "ramips_rt3883-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "60069f1f46c79b6586ea055692b200d3";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "5.15.195-1-60069f1f46c79b6586ea055692b200d3";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-B9hv4iIBow5rEebrK1n9oB1oabaFFUKXya0of6ud7ws=";
      name = "ramips_rt3883-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ramips/rt3883/packages/Packages";
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
