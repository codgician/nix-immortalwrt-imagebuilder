# 25.12.1 x86/geode
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-E3uvfovwRd1zjdXkSvqn+pfc6ZOhsIpX7ginOa82b3A=";
    name = "x86_geode-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "b35a3143134615350de45d31b5f2523fa3039901c333415f87ba6a7435990cff";
    filename = "immortalwrt-imagebuilder-25.12.1-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3CXbE3CueqzC6YEuVM7hBxJ2ap93FwluzIf4hKyoC6g=";
    name = "x86_geode-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "b139c4708dce409ff85d6ce62e409775";
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
    kmods_target = "6.12.94-1-b139c4708dce409ff85d6ce62e409775";
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
  kmods."6.12.94-1-b139c4708dce409ff85d6ce62e409775" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/geode/kmods/6.12.94-1-b139c4708dce409ff85d6ce62e409775/";
    sourceInfo = {
      hash = "sha256-E0tvulIjXQHQHkSe+HlPztwc52eN4D9e4TPRsoegozs=";
      name = "kmods-x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/geode/kmods/6.12.94-1-b139c4708dce409ff85d6ce62e409775/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/geode/packages/";
    sourceInfo = {
      hash = "sha256-T38V3vmW1wtnrA522XaRye5uNwLQ0f5S/ZgRaVPPbIQ=";
      name = "x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/x86/geode/packages/packages.adb";
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
