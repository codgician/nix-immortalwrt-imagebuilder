# 24.10.1 x86/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-YA8ZwAvv2NdXMPxbDnQW2mSJCekoMhXPUKyxoRkCsfI=";
    name = "x86_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a5e5a2e3a4a6e68c01cbb8af5296146bf3da8af0741c1c6d4c684c7f8816f83e";
    filename = "immortalwrt-imagebuilder-24.10.1-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RCsneSC9d5BsCy/heWFnAw8LnP7ir3eNHkDRFbs74sk=";
    name = "x86_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "97dc47c36684c7df8da68c6761786329";
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
    kmods_target = "6.6.86-1-97dc47c36684c7df8da68c6761786329";
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
  kmods."6.6.86-1-97dc47c36684c7df8da68c6761786329" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/generic/kmods/6.6.86-1-97dc47c36684c7df8da68c6761786329/";
    sourceInfo = {
      hash = "sha256-WeYqMT3OLZpfiTGCRVS2gGhLyI70rpwf9CKif1p6Xe0=";
      name = "kmods-x86_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/generic/kmods/6.6.86-1-97dc47c36684c7df8da68c6761786329/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/generic/packages/";
    sourceInfo = {
      hash = "sha256-SyCcxDALWYAWZELd4TyF3LaCJDT+F/zSi7yneOfHLpQ=";
      name = "x86_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/x86/generic/packages/Packages";
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
