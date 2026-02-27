# snapshot x86/64
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/64/";
  sha256sums = {
    hash = "sha256-Y3GNNAlvlSS6g4B6uweTtURIT52oxMyiFGd16S4dAs4=";
    name = "x86_64-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "cd75c0dd2cc5b4982e085189520182a57c2435d8ce407dfca413e864baa1ab2c";
    filename = "immortalwrt-imagebuilder-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dG3w5/kYnW6O38WllnLeha7eQc7cOY0eAuHPPIUqMDk=";
    name = "x86_64-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "d35abff69dc28fe0c31399d408087b8d";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "fdisk"
      "firewall4"
      "fstools"
      "grub2-bios-setup"
      "i915-firmware-dmc"
      "kmod-8139cp"
      "kmod-8139too"
      "kmod-button-hotplug"
      "kmod-e1000e"
      "kmod-fs-f2fs"
      "kmod-i40e"
      "kmod-igb"
      "kmod-igbvf"
      "kmod-igc"
      "kmod-ixgbe"
      "kmod-ixgbevf"
      "kmod-nft-offload"
      "kmod-pcnet32"
      "kmod-r8101"
      "kmod-r8125"
      "kmod-r8126"
      "kmod-r8168"
      "kmod-tulip"
      "kmod-usb-hid"
      "kmod-usb-net"
      "kmod-usb-net-asix"
      "kmod-usb-net-asix-ax88179"
      "kmod-usb-net-rtl8150"
      "kmod-usb-net-rtl8152-vendor"
      "kmod-vmxnet3"
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
    ];
    kmods_target = "6.12.67-1-d35abff69dc28fe0c31399d408087b8d";
    profiles = {
      generic = {
        device_packages = [
          "kmod-amazon-ena"
          "kmod-amd-xgbe"
          "kmod-bnx2"
          "kmod-e1000"
          "kmod-dwmac-intel"
          "kmod-forcedeth"
          "kmod-fs-vfat"
          "kmod-tg3"
          "kmod-drm-i915"
        ];
      };
    };
  };
  kmods."6.12.67-1-d35abff69dc28fe0c31399d408087b8d" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/64/kmods/6.12.67-1-d35abff69dc28fe0c31399d408087b8d/";
    sourceInfo = {
      hash = "sha256-oB09us7apwRw3iMTtZwICcfVayatrPepUM/3fsVqzVU=";
      name = "kmods-x86_64-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/64/kmods/6.12.67-1-d35abff69dc28fe0c31399d408087b8d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-2bP30G/kVm50jTZwwJuCLLU3hgHLKfgwKW3AbdjDHF0=";
      name = "x86_64-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/64/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "x86_64";
  feeds = import ./../../../packages/x86_64.nix;
}
