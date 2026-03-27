# 24.10.1 x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/64/";
  sha256sums = {
    hash = "sha256-M9cGIo63B+KkYOh64VRbtArclAuyIqe14uXJEESYYtg=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "c26e0fe80e40ac22d4ead88db3eaba4e45d3390cde1b61bffc770eafa7be139f";
    filename = "immortalwrt-imagebuilder-24.10.1-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-opCH+KQ0rSjO1skumxuaLBDPvEeMJlgRE1a8mJNfGZo=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "a99af258b23725bab7a4c5448b90efca";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-a99af258b23725bab7a4c5448b90efca";
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
  kmods."6.6.86-1-a99af258b23725bab7a4c5448b90efca" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/64/kmods/6.6.86-1-a99af258b23725bab7a4c5448b90efca/";
    sourceInfo = {
      hash = "sha256-ui/DfEBKSfnP90oVbJRq9NSbjA6F4LS4PeGHqpk7D5U=";
      name = "kmods-x86_64-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/64/kmods/6.6.86-1-a99af258b23725bab7a4c5448b90efca/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-IMpWXPwd2SUDpl1l1JDxT5ClCUhKtAOozfOunAEpJVQ=";
      name = "x86_64-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/64/packages/Packages";
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
