# snapshot x86/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-gGMG4cBjNtFgVHxn4SKVZ96pIrBQRJMGm1LBX2Uvzec=";
    name = "x86_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "18afbc6cf8d1e74bc75b50b254fa7bf6452669d7b4366eee4f899906bd122b9f";
    filename = "immortalwrt-imagebuilder-x86-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mI5h0A5EWhdhaS4qUP2Vs5cAwB5Xr9kVb5s5+t3QZ54=";
    name = "x86_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "d47703d7e529ff04a02ae9edc88054af";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-d47703d7e529ff04a02ae9edc88054af";
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
  kmods."6.18.52-1-d47703d7e529ff04a02ae9edc88054af" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/kmods/6.18.52-1-d47703d7e529ff04a02ae9edc88054af/";
    sourceInfo = {
      hash = "sha256-lUkBHWD+O13ukc4qk9nQgSJ5kRvUaJR723czOSkYE8k=";
      name = "kmods-x86_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/legacy/kmods/6.18.52-1-d47703d7e529ff04a02ae9edc88054af/packages.adb";
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
      hash = "sha256-T6EaAe/J+84akzX03DlBZC9keIA6AWWoMOD31hb8QAc=";
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
