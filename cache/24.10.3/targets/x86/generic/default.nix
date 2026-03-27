# 24.10.3 x86/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-COR+m1OlSjj7LxVLewDUJVmXY0m5hTtgcxA5JnIUqIs=";
    name = "x86_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6850c464d39829d6463037170385fb11b1a0b7b57ed1ad94acfab0434cb8f961";
    filename = "immortalwrt-imagebuilder-24.10.3-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-78gXbBxQ5nPkeVuLpiRou7WaweG6TcbjNI0AKUYnQQQ=";
    name = "x86_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "c2705f32519631421628b703864bf0aa";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-c2705f32519631421628b703864bf0aa";
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
  kmods."6.6.104-1-c2705f32519631421628b703864bf0aa" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/generic/kmods/6.6.104-1-c2705f32519631421628b703864bf0aa/";
    sourceInfo = {
      hash = "sha256-LRwDeGcr/AzTuvIcdVYMhMrCRKtk6TyNex3RyXwGNvI=";
      name = "kmods-x86_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/generic/kmods/6.6.104-1-c2705f32519631421628b703864bf0aa/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/generic/packages/";
    sourceInfo = {
      hash = "sha256-O/mzDTfi081YpyFD7ztwzgNiWAL2X/4+ZGBs81zEoPg=";
      name = "x86_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/generic/packages/Packages";
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
