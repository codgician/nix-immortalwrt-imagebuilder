# 24.10.5 x86/legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-DVVBrNYqW+3cEqnxUM+lKFm5GuLSItpCO8rgp7TPNig=";
    name = "x86_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "8be1d01c9ba20828bb920b06c4f66a10373037ab89dfed0318d63cf041c61641";
    filename = "immortalwrt-imagebuilder-24.10.5-x86-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-oZFY4HH24NPlXI3D5DEmVw0P0vUmUPXozQO4X/uiShs=";
    name = "x86_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "5105d9c46364be77de0d776ff7cc4aaf";
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
    kmods_target = "6.6.122-1-5105d9c46364be77de0d776ff7cc4aaf";
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
  kmods."6.6.122-1-5105d9c46364be77de0d776ff7cc4aaf" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/legacy/kmods/6.6.122-1-5105d9c46364be77de0d776ff7cc4aaf/";
    sourceInfo = {
      hash = "sha256-GKOYARt0Bs1bE3pdOo2YOmbglqNekqosUQAo5PyP+Tw=";
      name = "kmods-x86_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/legacy/kmods/6.6.122-1-5105d9c46364be77de0d776ff7cc4aaf/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-gJvV0Br5Xu+M5DSRpdcj0X2wooCTwQEw2fgUJinB7HE=";
      name = "x86_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/x86/legacy/packages/Packages";
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
