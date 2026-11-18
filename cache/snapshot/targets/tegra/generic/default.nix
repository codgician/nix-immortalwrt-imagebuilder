# snapshot tegra/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/";
  sha256sums = {
    hash = "sha256-Y5QBsWVxq7XDB7IAa/cmqU1GJlX3he9fFkF0WdWrxFU=";
    name = "tegra_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2cccb671fd3973f5f4ce6ff8d910757d62d6719356af320ca6638f02560cbca2";
    filename = "immortalwrt-imagebuilder-tegra-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hhQl5Yd8XdRm4dpgnQTRsSII5pz80s8I9edctSgXuxw=";
    name = "tegra_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a9_vfpv3-d16";
    linux_kernel = {
      release = "1";
      vermagic = "cd882739e8386a8309ea4a5b0f17f70f";
      version = "6.18.60";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "video-support"
    ];
    kmods_target = "6.18.60-1-cd882739e8386a8309ea4a5b0f17f70f";
    profiles = {
      compulab_trimslice = {
        device_packages = [
          "kmod-leds-gpio"
          "kmod-r8169"
          "kmod-rt2800-usb"
          "kmod-rtc-em3027"
          "kmod-usb-hid"
          "kmod-usb-storage"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.18.60-1-cd882739e8386a8309ea4a5b0f17f70f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.18.60-1-cd882739e8386a8309ea4a5b0f17f70f/";
    sourceInfo = {
      hash = "sha256-/tVEPNpWP420pwiKEQ875BCSoSgnpBvMC0ZDBMWX3HU=";
      name = "kmods-tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/kmods/6.18.60-1-cd882739e8386a8309ea4a5b0f17f70f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/packages/";
    sourceInfo = {
      hash = "sha256-7xWxsaaZ+TfxmH2X5MzEvXC4m/XcvtgnY9Kax4e1zOo=";
      name = "tegra_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/tegra/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a9_vfpv3-d16";
  feeds = import ./../../../packages/arm_cortex-a9_vfpv3-d16.nix;
}
