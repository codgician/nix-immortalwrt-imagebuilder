# snapshot mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-eQ16QXmf1OuqqwB4CRBWqb9xTWSdv+i1XEnbauozYGI=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "2b9a21632bdc16601c1855afa03dfaa8df471a592585603a1147d92f37562a49";
    filename = "immortalwrt-imagebuilder-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/nnvSfgTNtW/3Ov/b+Tka1Jza6wfxvRDb1HpiKaHdVI=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "20d6ef593026941c47a5941fde446803";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-20d6ef593026941c47a5941fde446803";
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
  kmods."6.12.77-1-20d6ef593026941c47a5941fde446803" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.12.77-1-20d6ef593026941c47a5941fde446803/";
    sourceInfo = {
      hash = "sha256-krAJ2XY8rbL6rOJIfdgnNxi20zDMpsCqfTAH+3gmHlQ=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.12.77-1-20d6ef593026941c47a5941fde446803/packages.adb";
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
      hash = "sha256-a8+wpA+xZmMy14FXJtB27Zi7yZJSatR/OK8MC0O9px0=";
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
