# snapshot x86/legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-AlngDXgND++2fo8IPyVg0vdEOCDAkQvJtQlbRIbC3JI=";
    name = "x86_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "cadacc96732c0bba1b4c5f6a41623fa7690d6be581845b3fc8df05b50485304b";
    filename = "immortalwrt-imagebuilder-x86-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-re4PljH9LsySJ1Tkxzl2ZL1yDaHTMhVffHvwWkkUAn0=";
    name = "x86_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "4c74789eaea637c0f925c9aa21e71fba";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-4c74789eaea637c0f925c9aa21e71fba";
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
  kmods."6.12.67-1-4c74789eaea637c0f925c9aa21e71fba" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/legacy/kmods/6.12.67-1-4c74789eaea637c0f925c9aa21e71fba/";
    sourceInfo = {
      hash = "sha256-V82j23tY0AaI4u9oGcW/aFKa3i0LLdsiPox3/v1ftFg=";
      name = "kmods-x86_legacy-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/legacy/kmods/6.12.67-1-4c74789eaea637c0f925c9aa21e71fba/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-OtZHk+AK+LZq5MYtYLsCpTXXFU34pcyocbRttmni2ko=";
      name = "x86_legacy-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/legacy/packages/packages.adb";
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
