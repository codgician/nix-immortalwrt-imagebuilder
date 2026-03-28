# snapshot x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/";
  sha256sums = {
    hash = "sha256-5RG28g1uy0sxsiCLfhoIAy9DBFciaNIw6z+5wT1uuIs=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "3c75ef23f6999b15be1117bbafed55463315fd1c43654b9cc1235008a69c6bb3";
    filename = "immortalwrt-imagebuilder-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nBKJd4vyKOohxfe24ALdel7xisOSVs3dBJSnLK+UcLQ=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "142b9032f9063fc6a858aae8450ed050";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-142b9032f9063fc6a858aae8450ed050";
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
  kmods."6.12.77-1-142b9032f9063fc6a858aae8450ed050" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.12.77-1-142b9032f9063fc6a858aae8450ed050/";
    sourceInfo = {
      hash = "sha256-puZOXB9nFt3giHZnd9MPzDw8807TuEAHcSBBZmkBVl0=";
      name = "kmods-x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.12.77-1-142b9032f9063fc6a858aae8450ed050/packages.adb";
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
      hash = "sha256-82pSh4RkgPMgg/MUBMFNINbNelFs8/dh6Zu9q51FQu0=";
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
