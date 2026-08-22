# snapshot x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/";
  sha256sums = {
    hash = "sha256-FFdl/iYHLkWOBb4HNMkwfxAmrG2WpQs9DwRkdW6ieMg=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "34008e0d7f74bcafed0dede66fb02a913e8ffe64fd13d9d66e99d3a14d385e4d";
    filename = "immortalwrt-imagebuilder-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rqI39y009o6qsE5TN17oZovpvmPZVkpyV/FnavOpHRc=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "788b1c7a30cf63d450fdd4ed34c0696e";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-788b1c7a30cf63d450fdd4ed34c0696e";
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
  kmods."6.18.44-1-788b1c7a30cf63d450fdd4ed34c0696e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.18.44-1-788b1c7a30cf63d450fdd4ed34c0696e/";
    sourceInfo = {
      hash = "sha256-Vve1QImJjUIGUkuzE+BTBFNGb+rlcCS8vi7nJCNwjgA=";
      name = "kmods-x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.18.44-1-788b1c7a30cf63d450fdd4ed34c0696e/packages.adb";
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
      hash = "sha256-SHk08eVRf9atVGt5qpf2k7sezA8RTeyKn0w1sQglod4=";
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
