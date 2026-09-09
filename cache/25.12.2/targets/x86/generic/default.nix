# 25.12.2 x86/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-xQCfdmoeJDVv/t+07IuBSf0YyTwxVVnqWmo2oms7ajY=";
    name = "x86_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "309c8847f09eef705da71010bded9a7a7d60754c30dc487f2eeab0de3d398eba";
    filename = "immortalwrt-imagebuilder-25.12.2-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-W6Am6VsWdUsd9mLJXfUkupQDzK8TJmLqqsP26Dl4cBg=";
    name = "x86_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "47886279075e85a39974a97eda0135bf";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
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
      "luci"
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
    kmods_target = "6.12.103-1-47886279075e85a39974a97eda0135bf";
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
  kmods."6.12.103-1-47886279075e85a39974a97eda0135bf" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/generic/kmods/6.12.103-1-47886279075e85a39974a97eda0135bf/";
    sourceInfo = {
      hash = "sha256-rTXLxW5RVQaqkF+NIID+GYR8o94fO6cHDwMPNZHj6nw=";
      name = "kmods-x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/generic/kmods/6.12.103-1-47886279075e85a39974a97eda0135bf/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/generic/packages/";
    sourceInfo = {
      hash = "sha256-RHDJl9p3j+nawt9OsyBHF1fbLqq+j/Ke5sIarBzYap0=";
      name = "x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/generic/packages/packages.adb";
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
