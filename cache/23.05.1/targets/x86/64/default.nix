# 23.05.1 x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/x86/64/";
  sha256sums = {
    hash = "sha256-F6ZrHMQ8/02RQE+WfGyDhg/q1u01l3Mc4r8D0M1ERz0=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "fdc2873369f9fcc1998b39d59951b16619f9687aa50284ad99803142b5066f4c";
    filename = "immortalwrt-imagebuilder-23.05.1-x86-64.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-+tKloBmE/LgYN7aL7zINBFh492dkbX6Bv7Xpt9XBC/A=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = null;
    default_packages = [
      "alsa-utils"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdisk"
      "firewall4"
      "fstools"
      "grub2-bios-setup"
      "ipv6helper"
      "kmod-8139cp"
      "kmod-8139too"
      "kmod-ac97"
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
      "kmod-r8168"
      "kmod-sound-hda-codec-hdmi"
      "kmod-sound-hda-codec-realtek"
      "kmod-sound-hda-codec-via"
      "kmod-sound-hda-core"
      "kmod-sound-hda-intel"
      "kmod-sound-i8x0"
      "kmod-sound-via82xx"
      "kmod-tulip"
      "kmod-usb-audio"
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
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      generic = {
        device_packages = [
          "kmod-amazon-ena"
          "kmod-amd-xgbe"
          "kmod-bnx2"
          "kmod-e1000"
          "kmod-forcedeth"
          "kmod-fs-vfat"
          "kmod-tg3"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-PS81KEEjhCgP/e9d0KLF0DoFu1r0aGXdgEzDmgAKU1c=";
      name = "x86_64-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/x86/64/packages/Packages";
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
