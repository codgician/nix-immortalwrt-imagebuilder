# 24.10.0 x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/64/";
  sha256sums = {
    hash = "sha256-P1rhhw914YnhWCgPu+/ueoZ87ojEYumvabGQGxCCYpQ=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "8056bc9a2efd976015d58a08e4cbff80c1939f57d4cd4db960a4697c2733f05e";
    filename = "immortalwrt-imagebuilder-24.10.0-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-EUxF76PINtFYilDJFO79tXSpXZbj6hTOHN499EfSOuc=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "e374625fa86cafa3cbc5e009d5855910";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-e374625fa86cafa3cbc5e009d5855910";
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
  kmods."6.6.73-1-e374625fa86cafa3cbc5e009d5855910" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/64/kmods/6.6.73-1-e374625fa86cafa3cbc5e009d5855910/";
    sourceInfo = {
      hash = "sha256-VtzAufNcvr2SrLHo+zWDDoV12Ge4tMvq/9ztQC6Zzs4=";
      name = "kmods-x86_64-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/64/kmods/6.6.73-1-e374625fa86cafa3cbc5e009d5855910/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-myif1zgpTyf5jkhSGkN4m8tGTqjCDdPIT+4nLKLr2HU=";
      name = "x86_64-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/64/packages/Packages";
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
