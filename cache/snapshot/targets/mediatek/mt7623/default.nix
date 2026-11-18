# snapshot mediatek/mt7623
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/";
  sha256sums = {
    hash = "sha256-REStElUq4+aLji9jsLN7QyhuGmHGnHII7wFwUuX2DfE=";
    name = "mediatek_mt7623-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/sha256sums";
  };
  imagebuilder = {
    sha256 = "172d06e89ef9b8ce15cb9a81599d836f04b4282800330393129ee29051a7e83d";
    filename = "immortalwrt-imagebuilder-mediatek-mt7623.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jVLopVk2C1Mr/zdtqkW42LFU2NIPiQoARCmhVVGPxrU=";
    name = "mediatek_mt7623-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "c40ecf38bf9700f70588128c4bf504c6";
      version = "6.18.60";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-crypto-hw-safexcel"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "video-support"
    ];
    kmods_target = "6.18.60-1-c40ecf38bf9700f70588128c4bf504c6";
    profiles = {
      bananapi_bpi-r2 = {
        device_packages = [
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb3"
          "kmod-ata-ahci"
        ];
      };
      unielec_u7623-02 = {
        device_packages = [
          "kmod-fs-vfat"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-mmc"
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci"
        ];
      };
      unielec_u7623-02-emmc-512m-legacy = {
        device_packages = [
          "kmod-fs-vfat"
          "kmod-nls-cp437"
          "kmod-nls-iso8859-1"
          "kmod-mmc"
          "mkf2fs"
          "e2fsprogs"
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb3"
          "kmod-ata-ahci"
          "partx-utils"
        ];
      };
    };
  };
  kmods."6.18.60-1-c40ecf38bf9700f70588128c4bf504c6" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.60-1-c40ecf38bf9700f70588128c4bf504c6/";
    sourceInfo = {
      hash = "sha256-2YJxA1qQjr58jZvk05lN3wX3eNbi0jVRY8ItB86LUzA=";
      name = "kmods-mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/kmods/6.18.60-1-c40ecf38bf9700f70588128c4bf504c6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/packages/";
    sourceInfo = {
      hash = "sha256-FTE03tQ3p2eYFlFm53EFGAg7Tefg+X7ds+NHzhRcCx4=";
      name = "mediatek_mt7623-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mediatek/mt7623/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
