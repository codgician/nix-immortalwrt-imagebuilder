# 25.12.0 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-HJYvNBxZt5ruzp7uYsNCtVbxKrFVG/Gnt6c+Ni+Qdeo=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "a8f8bdc79c1ddf89179da8fbedfec7fb2383d1fb86686bb7b1acccf0e1212c36";
    filename = "immortalwrt-imagebuilder-25.12.0-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-LuG2EHUPXGEa1gJGZhPBUR0ACQe32gHj2pyezDQn9vA=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "a44fb84c65f0f388aa7a2573595a9f07";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
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
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.87-1-a44fb84c65f0f388aa7a2573595a9f07";
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
  kmods."6.12.87-1-a44fb84c65f0f388aa7a2573595a9f07" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7629/kmods/6.12.87-1-a44fb84c65f0f388aa7a2573595a9f07/";
    sourceInfo = {
      hash = "sha256-Dp/w9SiA2sqv7Cw8RsYCc233XNCa7rluUqdvK3ybaFs=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7629/kmods/6.12.87-1-a44fb84c65f0f388aa7a2573595a9f07/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-GIE8AukteczVgnJH7dMznoFCB+6KxW2H2QLkWqxEZwo=";
      name = "mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mediatek/mt7629/packages/packages.adb";
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
