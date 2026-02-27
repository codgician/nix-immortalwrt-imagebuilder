# 24.10.5 mediatek/mt7629
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-h812zY4oQb0/TjPd8nMiOPxaVaCcOKUoPfXRSTia1+M=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "3a3b07bb2d760b5d504252b58e1b2bffbd7914554a28399a7aeb96512c04e67f";
    filename = "immortalwrt-imagebuilder-24.10.5-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sWNTB6xIdWV8YF8CAD7vazy2n8SUcZICekQAOdDZ9m0=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "23fb6589d30ab3e5e155933ce2096ef5";
      version = "6.6.122";
    };
    default_packages = [
      "autocore"
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
    kmods_target = "6.6.122-1-23fb6589d30ab3e5e155933ce2096ef5";
    profiles = {
      iptime_a6004mx = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      linksys_ea7500-v3 = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      mediatek_mt7629-rfb = {
        device_packages = [ "swconfig" ];
      };
      netgear_ex6250-v2 = {
        device_packages = [ "uboot-envtools" ];
      };
      tplink_eap225-v5 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.122-1-23fb6589d30ab3e5e155933ce2096ef5" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7629/kmods/6.6.122-1-23fb6589d30ab3e5e155933ce2096ef5/";
    sourceInfo = {
      hash = "sha256-qnqncTkehgoEx/vM4lp+3xQyui6Ffl3nBG6VdulGHqs=";
      name = "kmods-mediatek_mt7629-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7629/kmods/6.6.122-1-23fb6589d30ab3e5e155933ce2096ef5/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-JoLl15sryFYzl6sf8J3dd1Oht2tUvdWkPOCVoEJBH04=";
      name = "mediatek_mt7629-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mediatek/mt7629/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7";
  feeds = import ./../../../packages/arm_cortex-a7.nix;
}
