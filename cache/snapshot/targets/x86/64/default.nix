# snapshot x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/";
  sha256sums = {
    hash = "sha256-GZtLnIpTCctPN6PxpnPoavZGUJGDxKg7MlR1xVTK8bA=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "1cbc66424edb296480febb93c0bb60a5d8c5776cdfe6520f12c9c626dee99e26";
    filename = "immortalwrt-imagebuilder-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-PmUAbCYVakmAq9J8YZ+AiGaGHtfKWrbqle2Bqw6sOho=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "51e4c1591715b5686aa766aa195f4f42";
      version = "6.18.34";
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
    kmods_target = "6.18.34-1-51e4c1591715b5686aa766aa195f4f42";
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
  kmods."6.18.34-1-51e4c1591715b5686aa766aa195f4f42" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.18.34-1-51e4c1591715b5686aa766aa195f4f42/";
    sourceInfo = {
      hash = "sha256-Y6T33uOwqL4B0DHuER8Yrp/2TRntJzJZkj9T1cPkaTc=";
      name = "kmods-x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.18.34-1-51e4c1591715b5686aa766aa195f4f42/packages.adb";
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
      hash = "sha256-Il8MJ/PSDT86fPSUjjx3linCBa3viRwlZZUDyhu+34I=";
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
