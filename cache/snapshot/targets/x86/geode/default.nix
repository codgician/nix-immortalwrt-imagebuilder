# snapshot x86/geode
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-R8GaIv02UFnu+AWIOiRf4hzmUVZiJs4BDdMpY7J1n/0=";
    name = "x86_geode-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "edd182c0f5a0904eb9617534395ff25d79e251b2ff0ebf83f0f29c3b32030933";
    filename = "immortalwrt-imagebuilder-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-grUmDn3fXtXCRHOcBVMIHgEhkuMlXNXu8noFwsfXORs=";
    name = "x86_geode-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "9cd12a075dfe6c3dee505e225acb487b";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-9cd12a075dfe6c3dee505e225acb487b";
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
  kmods."6.18.44-1-9cd12a075dfe6c3dee505e225acb487b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/kmods/6.18.44-1-9cd12a075dfe6c3dee505e225acb487b/";
    sourceInfo = {
      hash = "sha256-pH9bXLdqGMrdM1TxNDdWfEAFwFXCVWICwXYv28BCM8o=";
      name = "kmods-x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/kmods/6.18.44-1-9cd12a075dfe6c3dee505e225acb487b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/packages/";
    sourceInfo = {
      hash = "sha256-fwbMmUvFkpWNTmNSx2jwVmZXht2NtSQ8d4X0NgyDgno=";
      name = "x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/packages/packages.adb";
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
