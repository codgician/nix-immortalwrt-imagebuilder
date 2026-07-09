# 25.12.1 x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/64/";
  sha256sums = {
    hash = "sha256-WY1HtBtN22uQBPxGWW8zsPOp9OIQQ0G03X99+LeYzbw=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "637c8d1cd5f3b1959eb42a0c8bb2e791687080b022a8315784e8f9b8b5238157";
    filename = "immortalwrt-imagebuilder-25.12.1-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-8qQrxDVhLjS05pKMCoHxFeC8txfRo1k88aK3cxJOGKA=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "0413601b1c3f0490e17f340fe09229ea";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-0413601b1c3f0490e17f340fe09229ea";
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
  kmods."6.12.94-1-0413601b1c3f0490e17f340fe09229ea" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/64/kmods/6.12.94-1-0413601b1c3f0490e17f340fe09229ea/";
    sourceInfo = {
      hash = "sha256-FmulfursEY4b3nl8nzO0pBzVC9esVaSozMyOqM+RESI=";
      name = "kmods-x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/64/kmods/6.12.94-1-0413601b1c3f0490e17f340fe09229ea/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-nTlTpFcKlM+YQS13p4+omDj3gWi0qdTwU5ddzvMNwuc=";
      name = "x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/64/packages/packages.adb";
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
