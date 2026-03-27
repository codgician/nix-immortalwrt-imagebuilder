# 23.05.6 x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/x86/64/";
  sha256sums = {
    hash = "sha256-356DGdSlWCEqfaNhevK/GPxXWJubXF/PSFcDLso8ULE=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "e012792dfdd87fd9dac43b3f514f79266e155e9bc3340b572cff2d8a0ccd56ad";
    filename = "immortalwrt-imagebuilder-23.05.6-x86-64.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-8pXwdgV+f6SLyVRisntrvQly/ripEWkUj5jFzSStC7c=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "f02ac1d297206696951880229b070530";
      version = "5.15.189";
    };
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
      "intel-igpu-firmware-dmc"
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
      "kmod-r8126"
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
      "luci-lib-ipkg"
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
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.189-1-f02ac1d297206696951880229b070530";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-P9TpWH5IBt8ByWnFCppFaa39JOuFjI9sJGqsw6SdOkU=";
      name = "x86_64-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/x86/64/packages/Packages";
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
