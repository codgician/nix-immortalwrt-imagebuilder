# snapshot x86/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-v6H1rm7Ld/cx3La2RQ22cFJWs3fMhcsmKKJr7DtYNYM=";
    name = "x86_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8a33dcc556a819fd286c40e9bdfccd22a1d6505e37ef933d8e418a991d91d6aa";
    filename = "immortalwrt-imagebuilder-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-H0qUSx6mCJz2nPBFJewPVqJ5oLJDnAzQGrBrosmrlOs=";
    name = "x86_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "a2008e115ca79b473ed2700d8dc243ff";
      version = "6.18.60";
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
      "video-support"
    ];
    kmods_target = "6.18.60-1-a2008e115ca79b473ed2700d8dc243ff";
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
  kmods."6.18.60-1-a2008e115ca79b473ed2700d8dc243ff" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/kmods/6.18.60-1-a2008e115ca79b473ed2700d8dc243ff/";
    sourceInfo = {
      hash = "sha256-F48L6WEEIW6u7Sg1DMffpx1snGu+S8blQLip5Ko9mnw=";
      name = "kmods-x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/generic/kmods/6.18.60-1-a2008e115ca79b473ed2700d8dc243ff/packages.adb";
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
      hash = "sha256-Kdxd/KSsMY/LIg3NuplYT0V5WSlq+/MP2qkChnTjOB8=";
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
