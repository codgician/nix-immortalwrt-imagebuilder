# snapshot loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-Oc/VoYAwOt5sAe9ZwVM3XOaPxzUGuITRXVrzIgBxNOE=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7fdb5d7d035529ac896f52cf3f2b8a2334df9bebc7343f7170134bc1f14e8a2c";
    filename = "immortalwrt-imagebuilder-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xf3Nyfg8h2RXWVg4bCJn8EmvcBiu9xXwwBxK2wlizzs=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "94e8ab68507364e2632607c5d2ef79e3";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "blkid"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "fdisk"
      "firewall4"
      "fstools"
      "grub2-efi-loongarch64"
      "kmod-dwmac-motorcomm"
      "kmod-e1000e"
      "kmod-i40e"
      "kmod-igb"
      "kmod-igbvf"
      "kmod-igc"
      "kmod-ixgbe"
      "kmod-ixgbevf"
      "kmod-nft-offload"
      "kmod-r8125"
      "kmod-r8126"
      "kmod-r8127"
      "kmod-r8168"
      "kmod-usb-net-asix"
      "kmod-usb-net-asix-ax88179"
      "kmod-usb-net-rtl8150"
      "kmod-usb-net-rtl8152-vendor"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    ];
    kmods_target = "6.12.94-1-94e8ab68507364e2632607c5d2ef79e3";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.94-1-94e8ab68507364e2632607c5d2ef79e3" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.94-1-94e8ab68507364e2632607c5d2ef79e3/";
    sourceInfo = {
      hash = "sha256-P/NT0mFWGQWg0XLvICPjCOVqyNl4ugCtiCj338Yptgg=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.94-1-94e8ab68507364e2632607c5d2ef79e3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-FcPEWO06CfHN6ciRM9EvXb6dIzMq2bfXbmCkp8rAmRM=";
      name = "loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "loongarch64_generic";
  feeds = import ./../../../packages/loongarch64_generic.nix;
}
