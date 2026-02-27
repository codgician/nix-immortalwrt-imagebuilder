# snapshot x86/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-Em3pgryNpXezHC/hgbBW5ObpG+j2mFXQU5li1NT4YmY=";
    name = "x86_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e17524f215bea8c780af29d2438d963692cbe72a094b20fe82109cb638e39f4f";
    filename = "immortalwrt-imagebuilder-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lJp8I3pnRgghAu7U9OJ1PAMTU92JZeI1k2/OYQvOvlE=";
    name = "x86_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "49109746f02e552e0301bd2ae7faa70f";
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
    kmods_target = "6.12.67-1-49109746f02e552e0301bd2ae7faa70f";
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
  kmods."6.12.67-1-49109746f02e552e0301bd2ae7faa70f" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/generic/kmods/6.12.67-1-49109746f02e552e0301bd2ae7faa70f/";
    sourceInfo = {
      hash = "sha256-b6SKaqfqmkg2XsDL6a57n0J4Oz/zOU4k0MIj5rwd0Fs=";
      name = "kmods-x86_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/generic/kmods/6.12.67-1-49109746f02e552e0301bd2ae7faa70f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/generic/packages/";
    sourceInfo = {
      hash = "sha256-qAGkQsSOlaFjXf/NS30pBgEZAKc+Ja3D6Ou6bxv0xX0=";
      name = "x86_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/generic/packages/packages.adb";
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
