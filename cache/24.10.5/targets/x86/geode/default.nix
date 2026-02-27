# 24.10.5 x86/geode
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-3Fd/oo0mxIQwbDqEshFchtVIk4mdcfglbIS4rEYiB4M=";
    name = "x86_geode-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "1ab09568ade47f20eb8ac4ce417053624e1bb45882ba7ac33152ea7b7f362c97";
    filename = "immortalwrt-imagebuilder-24.10.5-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-1rbieVofuxzscnDyGw2K3eag7WX502CDoBpoNTGxC4E=";
    name = "x86_geode-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "ee22491d751cf0de7ec4069e1289e95e";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-ee22491d751cf0de7ec4069e1289e95e";
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
  kmods."6.6.122-1-ee22491d751cf0de7ec4069e1289e95e" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/geode/kmods/6.6.122-1-ee22491d751cf0de7ec4069e1289e95e/";
    sourceInfo = {
      hash = "sha256-t4gUnLB6U+U3o/+raWKQ6oOy6DgQE0bI4sfzxyhN25s=";
      name = "kmods-x86_geode-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/geode/kmods/6.6.122-1-ee22491d751cf0de7ec4069e1289e95e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/geode/packages/";
    sourceInfo = {
      hash = "sha256-O1+u7JIJiTSKeCiTwKIOnM8BwzkJsmYlbLooAWlRsF0=";
      name = "x86_geode-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/geode/packages/Packages";
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
