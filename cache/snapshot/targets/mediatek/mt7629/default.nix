# snapshot mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-45TVPtc03EF+PlxIR/2AL9SwLXNR33n9irzj8sNHmjE=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "e6089e4404db2f1a1fe3c48d13a84a90436914431e444a61a80d449d82493f88";
    filename = "immortalwrt-imagebuilder-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-88we6qSdupt/ONnKd6cwZHEVGMBJU0SsxWQYsLp23ME=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "76d72915ba76fa3b2dcaf715c9c211fe";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.55-1-76d72915ba76fa3b2dcaf715c9c211fe";
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
  kmods."6.18.55-1-76d72915ba76fa3b2dcaf715c9c211fe" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.18.55-1-76d72915ba76fa3b2dcaf715c9c211fe/";
    sourceInfo = {
      hash = "sha256-w4Lf6+FJT6KFKNcyHY7InSdxyrC95LkR47e12ZI5U/k=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.18.55-1-76d72915ba76fa3b2dcaf715c9c211fe/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-fnAFZYMlkeHVfuwynxXFDXrc/T+zz0+uQDn8QxLr60Q=";
      name = "mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/packages/packages.adb";
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
