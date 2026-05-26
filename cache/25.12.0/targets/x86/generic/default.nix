# 25.12.0 x86/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/generic/";
  sha256sums = {
    hash = "sha256-FUdIoyHu+D1jBE73ggvRnLu/7g0FfwNAt3bu2zcKZf4=";
    name = "x86_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "bfe0705699b1c9e7d80bc2c68d00d65c64291a3725a1460590050d89e96f49ec";
    filename = "immortalwrt-imagebuilder-25.12.0-x86-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-FJS6I5mPlt0JqRP6lXPyCNS5GRx1TNaWgKSvo9/UdLE=";
    name = "x86_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium4";
    linux_kernel = {
      release = "1";
      vermagic = "0893a5f5ea34016b09bb63245473a9ad";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-0893a5f5ea34016b09bb63245473a9ad";
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
  kmods."6.12.87-1-0893a5f5ea34016b09bb63245473a9ad" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/generic/kmods/6.12.87-1-0893a5f5ea34016b09bb63245473a9ad/";
    sourceInfo = {
      hash = "sha256-ke7FFXACCQkeFJ1UdOaBkUSuXEXVypDaIOBGWw9aAKE=";
      name = "kmods-x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/generic/kmods/6.12.87-1-0893a5f5ea34016b09bb63245473a9ad/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/generic/packages/";
    sourceInfo = {
      hash = "sha256-WFBHC6RikPTnMAKkR30J4bL9h5KlKGXk/v57K+L3OaE=";
      name = "x86_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/generic/packages/packages.adb";
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
