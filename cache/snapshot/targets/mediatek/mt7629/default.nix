# snapshot mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-2Ly+o+YjNTeJtvGcMTE7Y3uEkeblAvBadZO1ri94FI0=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "00b2763dfe8bdbff2bf36c5e7d9df18962db592a00b980d9506557edb14ff552";
    filename = "immortalwrt-imagebuilder-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-h8dgZUgZeu2vY6jkRuz5iKOJpe9u7BPSZtCD1a2IOyw=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "fd1850e94459b8e18c721ff4d14654c1";
      version = "6.18.26";
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
    kmods_target = "6.18.26-1-fd1850e94459b8e18c721ff4d14654c1";
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
  kmods."6.18.26-1-fd1850e94459b8e18c721ff4d14654c1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.18.26-1-fd1850e94459b8e18c721ff4d14654c1/";
    sourceInfo = {
      hash = "sha256-r01CoqmAHd5OnEaxxdEScYgkZzBPMtRS/W2MP/2QxyI=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.18.26-1-fd1850e94459b8e18c721ff4d14654c1/packages.adb";
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
      hash = "sha256-ReIvM8LDQ29zYMRZAWjJH4jzI5A8tNRRmKqD/RaZOE4=";
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
