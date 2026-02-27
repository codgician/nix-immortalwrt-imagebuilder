# snapshot x86/geode
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-RNlsu7sa/ORRJhRthUx5Jgs7m9+EXhHKIeW1VKHS+7U=";
    name = "x86_geode-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "d1c5de3793f3bfd8e843695942c5378609b666305f90984531e9bbec92a11f0f";
    filename = "immortalwrt-imagebuilder-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AJ6zkpDLGjFEUXX7FROnPUp+BWK8PBAno3ajjTqG3O4=";
    name = "x86_geode-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "54e5516eca487c846537a9cd99d3f8a3";
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
    kmods_target = "6.12.67-1-54e5516eca487c846537a9cd99d3f8a3";
    profiles = {
      generic = {
        device_packages = [
          "kmod-crypto-cbc"
          "kmod-crypto-ecb"
          "kmod-crypto-hw-geode"
          "kmod-ledtrig-gpio"
        ];
      };
      geos = {
        device_packages = [
          "kmod-crypto-cbc"
          "kmod-crypto-ecb"
          "kmod-crypto-hw-geode"
          "kmod-ledtrig-gpio"
          "br2684ctl"
          "flashrom"
          "kmod-hwmon-lm90"
          "kmod-mppe"
          "kmod-pppoa"
          "kmod-usb-ohci-pci"
          "linux-atm"
          "ppp-mod-pppoa"
          "pppdump"
          "pppstats"
          "soloscli"
          "tc"
        ];
      };
    };
  };
  kmods."6.12.67-1-54e5516eca487c846537a9cd99d3f8a3" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/geode/kmods/6.12.67-1-54e5516eca487c846537a9cd99d3f8a3/";
    sourceInfo = {
      hash = "sha256-fN3PB/fvyNeknbN1D2wWXftEoLN9kKFVPbP9IddS5To=";
      name = "kmods-x86_geode-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/geode/kmods/6.12.67-1-54e5516eca487c846537a9cd99d3f8a3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/geode/packages/";
    sourceInfo = {
      hash = "sha256-W/34FoGkjL9+/o2WnyKBu/Nwb4G4OQQfXDh0Ck4Brio=";
      name = "x86_geode-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/x86/geode/packages/packages.adb";
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
