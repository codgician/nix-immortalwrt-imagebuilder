# 25.12.1 x86/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-Dg07r4orZHv2u8274TMtb5vmmntx5PO7W7kqlp7ZQ9c=";
    name = "x86_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "b986a6242d37cd5a20ce6773e8e041aad6a14b953e21a3c22946dc94c40eaa78";
    filename = "immortalwrt-imagebuilder-25.12.1-x86-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UFJe8iIC06szn5fg45+lyEl815dnhrZbYUNZtOn6DhU=";
    name = "x86_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "2cd30dabdb47f79c3c1ca308b27f0913";
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
    kmods_target = "6.12.94-1-2cd30dabdb47f79c3c1ca308b27f0913";
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
  kmods."6.12.94-1-2cd30dabdb47f79c3c1ca308b27f0913" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/legacy/kmods/6.12.94-1-2cd30dabdb47f79c3c1ca308b27f0913/";
    sourceInfo = {
      hash = "sha256-1fa+GtAgNLBGQmEc8uvKhoDdlDd5FdQXGVONUboqm7U=";
      name = "kmods-x86_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/legacy/kmods/6.12.94-1-2cd30dabdb47f79c3c1ca308b27f0913/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-V+S3X+eW20dSCzJfEVhUG/fqX7T5MJuaYxfVyKXowCc=";
      name = "x86_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/legacy/packages/packages.adb";
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
