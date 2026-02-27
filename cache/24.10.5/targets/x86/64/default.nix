# 24.10.5 x86/64
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/64/";
  sha256sums = {
    hash = "sha256-0byBDaX4G9OfaAsXFjNFaIp+QtabIXmM4zqA1H7tsqk=";
    name = "x86_64-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "87bf37d3c3d90f5acb18882282adb8ee661cc79df59442c9ea297cbcc80b8e3f";
    filename = "immortalwrt-imagebuilder-24.10.5-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-42Q9FS1faOXTn6WGrlwuNNhr7mI1LiVU6lnxHXK8yfg=";
    name = "x86_64-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "e7e50fbc0aafa7443418a79928da2602";
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
    kmods_target = "6.6.122-1-e7e50fbc0aafa7443418a79928da2602";
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
  kmods."6.6.122-1-e7e50fbc0aafa7443418a79928da2602" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/64/kmods/6.6.122-1-e7e50fbc0aafa7443418a79928da2602/";
    sourceInfo = {
      hash = "sha256-JyyFNW35+RhguTw/vioesdCKGo/z5PXph9yGWBarEhk=";
      name = "kmods-x86_64-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/64/kmods/6.6.122-1-e7e50fbc0aafa7443418a79928da2602/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-n2oLd5IziJZZwIb3vluiuQUGM9p2TcgFLKBSSJ+g7pI=";
      name = "x86_64-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/64/packages/Packages";
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
