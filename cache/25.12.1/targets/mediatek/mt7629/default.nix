# 25.12.1 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-ojhpY+FD7VsuH+Je6ZQByimH1Lflgs2Fm6Vs3SbOHwA=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "6422b8a402aa0d6fda99d45402a48f65a1b9c596144ca91e2039d51d8e8ae0e5";
    filename = "immortalwrt-imagebuilder-25.12.1-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Z4m7qeKvDwZRDeBTe5y6GEnsH3YodA8wAi62V6PQToo=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "41eef23ad397fc7a180cffa443ba7d24";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-41eef23ad397fc7a180cffa443ba7d24";
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
  kmods."6.12.94-1-41eef23ad397fc7a180cffa443ba7d24" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7629/kmods/6.12.94-1-41eef23ad397fc7a180cffa443ba7d24/";
    sourceInfo = {
      hash = "sha256-Kns3Dxoxoc1pwN/KUk6cYDUDkdmej0xjQy+kuEuyehg=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7629/kmods/6.12.94-1-41eef23ad397fc7a180cffa443ba7d24/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-sTR2iKxmDWcFMWbkmOmOX9JIWcv2AObjH6S6hPG6xpc=";
      name = "mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mediatek/mt7629/packages/packages.adb";
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
