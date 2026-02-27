# 24.10.5 ramips/rt3883
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-pAyTDzQdTyN2h4ALMq0DIcL5Z4W/FRyLuf6LstdPO+I=";
    name = "ramips_rt3883-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "9c2c18eb27a195eba2f848dd4af81e8af958f3026847e19b90ec3b290f1af4ff";
    filename = "immortalwrt-imagebuilder-24.10.5-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zy5U/wiUUE70+HfwVZmonGXw/twoYRVOLMypl2QnJs4=";
    name = "ramips_rt3883-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "d8dd0c00f6cca84b4917d08a76ce0d99";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-d8dd0c00f6cca84b4917d08a76ce0d99";
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
  kmods."6.6.122-1-d8dd0c00f6cca84b4917d08a76ce0d99" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt3883/kmods/6.6.122-1-d8dd0c00f6cca84b4917d08a76ce0d99/";
    sourceInfo = {
      hash = "sha256-7s54zkIBECYHY32KxOeZbovhHhucquHGreP8dJs4yJQ=";
      name = "kmods-ramips_rt3883-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt3883/kmods/6.6.122-1-d8dd0c00f6cca84b4917d08a76ce0d99/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-i50AR69C5zMaQWzJhSFuNdclTWCJW/XfU63q1CIdlQE=";
      name = "ramips_rt3883-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ramips/rt3883/packages/Packages";
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
