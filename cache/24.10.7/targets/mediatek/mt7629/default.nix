# 24.10.7 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-UqwA/ZeYHqzZS2Ah1iL/yF5CRNCFca2nfzO/y0oJCac=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "1017e35d4451362beea90ea2fb1c3fc5dba782b7da1e4828974a29e645054672";
    filename = "immortalwrt-imagebuilder-24.10.7-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xFwXpqBS3xLI07616N4i/w7oocyIcH6j0DPGSidTHaY=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "23fb6589d30ab3e5e155933ce2096ef5";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-23fb6589d30ab3e5e155933ce2096ef5";
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
  kmods."6.6.159-1-23fb6589d30ab3e5e155933ce2096ef5" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mediatek/mt7629/kmods/6.6.159-1-23fb6589d30ab3e5e155933ce2096ef5/";
    sourceInfo = {
      hash = "sha256-EscS46YAtdpN0RPHX4DRmvq7Up351//jnNnFTQYgGAo=";
      name = "kmods-mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mediatek/mt7629/kmods/6.6.159-1-23fb6589d30ab3e5e155933ce2096ef5/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-PDePpzVENjmk3klVbXkkohz9oDhPyJFpqNodNJNKOO8=";
      name = "mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mediatek/mt7629/packages/Packages";
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
