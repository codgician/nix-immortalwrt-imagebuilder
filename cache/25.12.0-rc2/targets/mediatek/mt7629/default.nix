# 25.12.0-rc2 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-xKgjLlmW9NSdl1pKFz7VQiJAXLYWudHoM+aTX9uigZs=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "8e3c1dae4e8ca4ad65b52b5bf3dc234acf12f094068add3e76f93bf9ef4cacc1";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-W1eTQWWLX4V4Uv54M0qhvZVjF2HSXk9JwoyJKu3bOX4=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "70501a365c97a80ceafb451b44a46b5a";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-70501a365c97a80ceafb451b44a46b5a";
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
  kmods."6.12.79-1-70501a365c97a80ceafb451b44a46b5a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7629/kmods/6.12.79-1-70501a365c97a80ceafb451b44a46b5a/";
    sourceInfo = {
      hash = "sha256-58dsVx9oYynTiNlvgcd7b/8VjpoTcxXqFuzhoEkEVe8=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7629/kmods/6.12.79-1-70501a365c97a80ceafb451b44a46b5a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-QkEWGphLTFRMRSWoBn+bt792dGo12U4YDC0FkUAZ8As=";
      name = "mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mediatek/mt7629/packages/packages.adb";
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
