# snapshot mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-4RUeEqCljZHPVntWQn5oX5FpSyO2YKSljYeW93sf9RY=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "1297af87b386907e5e913d27e5923d651e404673ce81383783e251a99270e800";
    filename = "immortalwrt-imagebuilder-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mehg7M6F47nFnBMIWr3nhDFPAycUrqwxZ6dvGWv1IIw=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "a2af30575bb1474931423d0e22d9e9e1";
      version = "6.18.39";
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
    kmods_target = "6.18.39-1-a2af30575bb1474931423d0e22d9e9e1";
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
  kmods."6.18.39-1-a2af30575bb1474931423d0e22d9e9e1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.18.39-1-a2af30575bb1474931423d0e22d9e9e1/";
    sourceInfo = {
      hash = "sha256-2d/qYcd/sjUG3l/QaNoTCmvZ1oA+Reved0NQk40lckY=";
      name = "kmods-mediatek_mt7629-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7629/kmods/6.18.39-1-a2af30575bb1474931423d0e22d9e9e1/packages.adb";
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
      hash = "sha256-IpwfzTl/IC/ZQ/Ulvk252veci9PaIU9a4X9gkemz1wQ=";
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
