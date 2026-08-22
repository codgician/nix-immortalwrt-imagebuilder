# snapshot x86/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-ybkEDjPFQ+njKFf5rwXcmtPZ6dlR9mKHIMXIgiYMWhw=";
    name = "x86_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "20ecac26adb88c60e3a255eff8021f0b946b214481c7c0c3dfc1206bcaec0c36";
    filename = "immortalwrt-imagebuilder-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6Be7XLfPLbUqLDeODa+mXwqxLaWFJlxKjqUUITSuj0Y=";
    name = "x86_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "92e15b7d2410334d9e234396b8d8b02b";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-92e15b7d2410334d9e234396b8d8b02b";
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
  kmods."6.18.44-1-92e15b7d2410334d9e234396b8d8b02b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/kmods/6.18.44-1-92e15b7d2410334d9e234396b8d8b02b/";
    sourceInfo = {
      hash = "sha256-AJQx8uVpaaBu8bO/cRLEtnhMS9yeWXrnZ8ZBkvHGX8Q=";
      name = "kmods-x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/kmods/6.18.44-1-92e15b7d2410334d9e234396b8d8b02b/packages.adb";
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
      hash = "sha256-6p6R8brhWxsAFCW1P/ovK59X7dOTu1DxJCYlK8XOKxc=";
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
