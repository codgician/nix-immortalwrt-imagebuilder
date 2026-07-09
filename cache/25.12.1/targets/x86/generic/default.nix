# 25.12.1 x86/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-aWKpFav5AQib2Wzg1rx8Ms4U00Vv9yaug21IsATMlhk=";
    name = "x86_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d383b780b4978f0bebcd291542a7029fd97946cd1e64e00e91f2623af0ac667c";
    filename = "immortalwrt-imagebuilder-25.12.1-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xgF6dcTjEwVLm2h3FK8wY49ZpiX5S4d+3KSXKLDaOZg=";
    name = "x86_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "47886279075e85a39974a97eda0135bf";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-47886279075e85a39974a97eda0135bf";
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
  kmods."6.12.94-1-47886279075e85a39974a97eda0135bf" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/generic/kmods/6.12.94-1-47886279075e85a39974a97eda0135bf/";
    sourceInfo = {
      hash = "sha256-HNt3PdQvy+Kayo0tlmwg/pywMRbY09hJelBInlWdQfQ=";
      name = "kmods-x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/generic/kmods/6.12.94-1-47886279075e85a39974a97eda0135bf/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/generic/packages/";
    sourceInfo = {
      hash = "sha256-b7UxaHAgWqmgqo9KdFsJvnSWXjpM6XitM5oIzeAbhQk=";
      name = "x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/generic/packages/packages.adb";
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
