# 25.12.0-rc1 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-Vd05kSDG4N31MukY2Y++sVJuo/GtkaV0LCCStN56mGU=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "1cf36ace255381380f4039730c451b6c266dfbe803a7e937e29ea47086740db6";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2IHCyzKJ/djEGrFVOh5K+LNO811TxOkv1gPkoQKym0M=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "e5cb22be7e489e78ac01f4fb7e3c1cf7";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-e5cb22be7e489e78ac01f4fb7e3c1cf7";
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
  kmods."6.12.74-1-e5cb22be7e489e78ac01f4fb7e3c1cf7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7629/kmods/6.12.74-1-e5cb22be7e489e78ac01f4fb7e3c1cf7/";
    sourceInfo = {
      hash = "sha256-+I/OEGy8TdunlBumCheDUP+JAok3Dbc37fH1vROEp+0=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7629/kmods/6.12.74-1-e5cb22be7e489e78ac01f4fb7e3c1cf7/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-IBh37srW/tV4SBq+Qoj0+rEDeKGXYAdInNLFeOTTDLw=";
      name = "mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mediatek/mt7629/packages/packages.adb";
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
