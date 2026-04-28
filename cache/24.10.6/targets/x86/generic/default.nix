# 24.10.6 x86/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-3fbeICmJuy1gnX26A3o0TEOT5VnMG+J5daWxyCuK4D8=";
    name = "x86_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a7907eaeca528742df51b4a6d2d5ad3f5207d6d6ee15555f9c8e15cb836c3421";
    filename = "immortalwrt-imagebuilder-24.10.6-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/TdkFHY1mRSW05GLTVrDBXvmKh9BetjsbTieKXVotOE=";
    name = "x86_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "f06f6e65f2074e275c0b7924b02611fb";
      version = "6.6.133";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
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
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
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
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.133-1-f06f6e65f2074e275c0b7924b02611fb";
    profiles = {
      generic = {
        device_packages = [
          "kmod-3c59x"
          "kmod-e100"
          "kmod-e1000"
          "kmod-natsemi"
          "kmod-ne2k-pci"
          "kmod-pcnet32"
          "kmod-sis900"
          "kmod-tg3"
          "kmod-via-rhine"
          "kmod-via-velocity"
          "kmod-forcedeth"
          "kmod-fs-vfat"
          "kmod-drm-i915"
        ];
      };
    };
  };
  kmods."6.6.133-1-f06f6e65f2074e275c0b7924b02611fb" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/x86/generic/kmods/6.6.133-1-f06f6e65f2074e275c0b7924b02611fb/";
    sourceInfo = {
      hash = "sha256-bIRplWeKf9XxDrmJrOmi//3ACHxiP3TxlzkxlORe3Ic=";
      name = "kmods-x86_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/x86/generic/kmods/6.6.133-1-f06f6e65f2074e275c0b7924b02611fb/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/x86/generic/packages/";
    sourceInfo = {
      hash = "sha256-SvXf9fiDvUoMOeSW1B7VrQPEyDZCAlNY8EePc0WZ4zk=";
      name = "x86_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/x86/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "i386_pentium4";
  feeds = import ./../../../packages/i386_pentium4.nix;
}
