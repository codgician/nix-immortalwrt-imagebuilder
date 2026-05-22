# snapshot x86/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-jPNOxeH6XZNE7JLCC14Za+4LlfDTO803gLTI399EUD8=";
    name = "x86_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "7bcf0707b701c097f4244328062d7ac9b1cd1ddda462eaa0a4ebb9d75da3b96f";
    filename = "immortalwrt-imagebuilder-x86-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sv/TWPmmpWNhBQ2EG7Z7D84woAeMCLw0GzJLRJGvMXI=";
    name = "x86_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "4484b11a2ac3627479d3f0c085d2acc0";
      version = "6.18.31";
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
    kmods_target = "6.18.31-1-4484b11a2ac3627479d3f0c085d2acc0";
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
  kmods."6.18.31-1-4484b11a2ac3627479d3f0c085d2acc0" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/kmods/6.18.31-1-4484b11a2ac3627479d3f0c085d2acc0/";
    sourceInfo = {
      hash = "sha256-prq/9P9g33cikGBIG7hLAUPNCcadYmV/qVEQmmeHQT4=";
      name = "kmods-x86_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/kmods/6.18.31-1-4484b11a2ac3627479d3f0c085d2acc0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-YQDoh7AxW4PgWLIvWeh97tWdbj0PChyBogJfTLZ+MdE=";
      name = "x86_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/packages/packages.adb";
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
