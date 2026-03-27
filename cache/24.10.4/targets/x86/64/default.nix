# 24.10.4 x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/x86/64/";
  sha256sums = {
    hash = "sha256-1uAuIsd5LaB9ZoCZQcVE3KfQ6pWO4sctUhLDSpukkq4=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "c87d2cb33757f2740ca5e892cc3ef1538866b71c1f4b852e0e0a445a3e7775f5";
    filename = "immortalwrt-imagebuilder-24.10.4-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ubO8LKiC+Jn8fBHoiKFZTgSyOZX1SCkIKi2XS7Z+Aow=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "f8c5d7fde74fa4fedf4370775255c515";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-f8c5d7fde74fa4fedf4370775255c515";
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
  kmods."6.6.110-1-f8c5d7fde74fa4fedf4370775255c515" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/x86/64/kmods/6.6.110-1-f8c5d7fde74fa4fedf4370775255c515/";
    sourceInfo = {
      hash = "sha256-w/bcU7wNXY6w1cMq+aTxRprJlXnJQHvC1pC3qz65aXM=";
      name = "kmods-x86_64-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/x86/64/kmods/6.6.110-1-f8c5d7fde74fa4fedf4370775255c515/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-5OdN6n/SAqb76vSxDc+4ZDVdr8VCsUS3FDLPEqNAP/A=";
      name = "x86_64-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/x86/64/packages/Packages";
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
