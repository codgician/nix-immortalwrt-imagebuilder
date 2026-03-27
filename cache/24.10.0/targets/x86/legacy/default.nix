# 24.10.0 x86/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-lkvqx2GxuXWSdLYpkIg0WeUKHm4PNOlt6+HKJ+00hfg=";
    name = "x86_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "7d890194957b6f16c3dafdc7481998e3b81ad447ceb45602a789a34dccd4fb22";
    filename = "immortalwrt-imagebuilder-24.10.0-x86-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2leA8Nf33q30pItepVnGBgvluZ2QQJbTFJMNUqPEeWE=";
    name = "x86_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "a3781d1b6a9fd3bf54edd715ae65af8d";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-a3781d1b6a9fd3bf54edd715ae65af8d";
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
          "kmod-drm-i915"
        ];
      };
    };
  };
  kmods."6.6.73-1-a3781d1b6a9fd3bf54edd715ae65af8d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/legacy/kmods/6.6.73-1-a3781d1b6a9fd3bf54edd715ae65af8d/";
    sourceInfo = {
      hash = "sha256-AE5+8l3W7vfYhn7kFF110GJ8nbNVEUkB9q4dTxdDCqY=";
      name = "kmods-x86_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/legacy/kmods/6.6.73-1-a3781d1b6a9fd3bf54edd715ae65af8d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-t7dTADHTsQe5nMh6N/fJxrS24psTsqu1RfdTp+qny/k=";
      name = "x86_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/legacy/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "i386_pentium-mmx";
  feeds = import ./../../../packages/i386_pentium-mmx.nix;
}
