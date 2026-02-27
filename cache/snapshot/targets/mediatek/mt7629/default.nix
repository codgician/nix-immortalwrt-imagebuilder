# snapshot mediatek/mt7629
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-ZsKm0XtRVvHVRgYyUI0MhyPg+tE5w59e92xKfdpg8Ro=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "02a32d9d0daf5cbe755881785af790e272a0fcbcda1b40968ac5849b5ed123a7";
    filename = "immortalwrt-imagebuilder-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3oBtV/4EKBAY7GPmDQHxNNrt3lZRg55FzdwgxhbgDJw=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "91aab7c21ea354be95f6115a16fd8eca";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-91aab7c21ea354be95f6115a16fd8eca";
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
  kmods."6.12.67-1-91aab7c21ea354be95f6115a16fd8eca" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7629/kmods/6.12.67-1-91aab7c21ea354be95f6115a16fd8eca/";
    sourceInfo = {
      hash = "sha256-Eszjt3yDZ6QV8pWGmnzDRipXTaYefaxZ0Rn2ximQScY=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7629/kmods/6.12.67-1-91aab7c21ea354be95f6115a16fd8eca/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-2Vs9W7nytoorhCrCUmBoYphjmrMCiBzQIlLTPi/qxR8=";
      name = "mediatek_mt7629-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mediatek/mt7629/packages/packages.adb";
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
