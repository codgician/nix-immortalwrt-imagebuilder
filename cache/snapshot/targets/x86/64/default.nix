# snapshot x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/";
  sha256sums = {
    hash = "sha256-CM0xQa4xebn5Y0a1ofk2TTIDKdKa6946GiLRdOmFUJE=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "9f7ff7ca79206b1ee69c682046efc137d2a22a8f45c4402671a6883a2d391865";
    filename = "immortalwrt-imagebuilder-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MSqXM0IN98cHi00vXSJyguu0rhLFylDAVXbSMcXaKVw=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "2ed14b9ed944c456837b6855207917d1";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-2ed14b9ed944c456837b6855207917d1";
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
  kmods."6.12.74-1-2ed14b9ed944c456837b6855207917d1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.12.74-1-2ed14b9ed944c456837b6855207917d1/";
    sourceInfo = {
      hash = "sha256-YYLzP1vF51tmk5yjSBBEflg0+w6QTn/K/7psBLEBUJ8=";
      name = "kmods-x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.12.74-1-2ed14b9ed944c456837b6855207917d1/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-8EbVCYTRu2z5oT9Tr/TChkXfv1Dt5H28Zx4F2nJm88Q=";
      name = "x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/packages/packages.adb";
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
