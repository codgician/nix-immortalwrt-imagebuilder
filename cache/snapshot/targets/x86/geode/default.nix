# snapshot x86/geode
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-QU0JDn9hBMWJ/I64amXocD6nDrntnHcyN2wsCad1DEA=";
    name = "x86_geode-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "e0e7adcfb1b37b32e724871b9bccfd2976c0e5c7abd171e9cde0b94086f75e06";
    filename = "immortalwrt-imagebuilder-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-u4tNYZ1LAqDX0CpmIuguW4ZkDL2WN0TTh2gFdnW40hk=";
    name = "x86_geode-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "d10d03ac4403fbfea760d635488e5873";
      version = "6.18.21";
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
    kmods_target = "6.18.21-1-d10d03ac4403fbfea760d635488e5873";
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
  kmods."6.18.21-1-d10d03ac4403fbfea760d635488e5873" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/kmods/6.18.21-1-d10d03ac4403fbfea760d635488e5873/";
    sourceInfo = {
      hash = "sha256-reeG1NlkuldDdiCc1PhTqGEQOWXSBNivv03rrKCBt78=";
      name = "kmods-x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/kmods/6.18.21-1-d10d03ac4403fbfea760d635488e5873/packages.adb";
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
      hash = "sha256-F211PGEWrJTfTD0pKOvJizl4iulltk3wmo6hBRpT3Wk=";
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
