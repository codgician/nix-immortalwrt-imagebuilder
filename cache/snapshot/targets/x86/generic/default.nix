# snapshot x86/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-CADBYRL/bLIqPM6nDbmdd3WoifTpk5a0IMLWXMjR7M8=";
    name = "x86_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ff0fd8829426e178244d0e8de76b52a6467e1caefad6c68860dc743a051c9d59";
    filename = "immortalwrt-imagebuilder-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+LDgS7Ac+bceJqQbhD3tzdU8J8kY8nbXyTKF1aRfUd8=";
    name = "x86_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "57ad40a0697af5c3879313b87c8d3a97";
      version = "6.18.21";
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
    kmods_target = "6.18.21-1-57ad40a0697af5c3879313b87c8d3a97";
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
  kmods."6.18.21-1-57ad40a0697af5c3879313b87c8d3a97" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/kmods/6.18.21-1-57ad40a0697af5c3879313b87c8d3a97/";
    sourceInfo = {
      hash = "sha256-7N7LEcW6BY4EqbC9AT1uyyv+W6U+7+qPWcMq6bIkrtE=";
      name = "kmods-x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/kmods/6.18.21-1-57ad40a0697af5c3879313b87c8d3a97/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/packages/";
    sourceInfo = {
      hash = "sha256-cIkwaTeCHbrvWSKyo1XJ4b8JtEDLSGtHjHs5FHYl8/s=";
      name = "x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/packages/packages.adb";
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
