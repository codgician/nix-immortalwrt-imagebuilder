# 25.12.0-rc2 x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/64/";
  sha256sums = {
    hash = "sha256-KwSaQ6jLSiIChSi3yzXYseHhhopB72KcZhtfU3kpC4Q=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "283725b01cd4b105123b7714f8c0a26ad8c0f719fb305b3233de53bb9ea159c5";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XQC2anbCYkH7KBPsp9hKKOxe/uXKqCQEZuGiYTsMRF4=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "efc973101fa313543979d8da4c4e0958";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-efc973101fa313543979d8da4c4e0958";
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
  kmods."6.12.79-1-efc973101fa313543979d8da4c4e0958" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/64/kmods/6.12.79-1-efc973101fa313543979d8da4c4e0958/";
    sourceInfo = {
      hash = "sha256-3GQCkms1ibZr5FScgGqnRwUnC2TuU4WiQyIEnYyP/Uk=";
      name = "kmods-x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/64/kmods/6.12.79-1-efc973101fa313543979d8da4c4e0958/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-FbclPmkNQPwSIVkYWFEr/d8Q4ob9DHRiZP1He/w4Q9U=";
      name = "x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/x86/64/packages/packages.adb";
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
