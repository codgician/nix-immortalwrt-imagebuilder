# 25.12.0-rc2 x86/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-0s8Gg1g3xRaa9fSjXsHSKwPg5kmYhb+TnUXXUMM7YQY=";
    name = "x86_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "fa79975b7c814af0105c3eee20545579664b47bd283ee82ece9aa7034f743637";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-x86-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ee7qj/nfN2Ak30CAyrSUh7rZKsaHgzax8nhWAvU+CBY=";
    name = "x86_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "8bbc8cba9ce61f25b8c4508a0cf0cd91";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
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
      "luci"
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
    kmods_target = "6.12.79-1-8bbc8cba9ce61f25b8c4508a0cf0cd91";
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
  kmods."6.12.79-1-8bbc8cba9ce61f25b8c4508a0cf0cd91" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/legacy/kmods/6.12.79-1-8bbc8cba9ce61f25b8c4508a0cf0cd91/";
    sourceInfo = {
      hash = "sha256-0aFiDMklvNAO/IOyckJb1NqZnf0ORG+deNfaOnihk7o=";
      name = "kmods-x86_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/legacy/kmods/6.12.79-1-8bbc8cba9ce61f25b8c4508a0cf0cd91/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-yNdGUYRPhPTK4gwsXuBPQaYrbxGk499WBdNpKqn+FCs=";
      name = "x86_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/legacy/packages/packages.adb";
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
