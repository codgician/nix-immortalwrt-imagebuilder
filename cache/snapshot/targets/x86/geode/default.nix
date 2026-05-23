# snapshot x86/geode
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-Zdj8ftzgZmW1YTcjo1pq3VCrKiMmZr0l50vX7tXWS7g=";
    name = "x86_geode-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "ce53a1160dcfb7aa02c9d0fa83a574b2719447344326d41f39987d0cca487b1e";
    filename = "immortalwrt-imagebuilder-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-D09QT0MoGWk7whbFw2YH3NUchvCVJEUedk+h0D2hD+c=";
    name = "x86_geode-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "2d3fab6af83b10ef723bb55e663cbf26";
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
    kmods_target = "6.18.31-1-2d3fab6af83b10ef723bb55e663cbf26";
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
  kmods."6.18.31-1-2d3fab6af83b10ef723bb55e663cbf26" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/kmods/6.18.31-1-2d3fab6af83b10ef723bb55e663cbf26/";
    sourceInfo = {
      hash = "sha256-GKWrc9dPKx7sQ5Zlaki2zo/u7kcw6wAeLWuEcbRV9iI=";
      name = "kmods-x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/kmods/6.18.31-1-2d3fab6af83b10ef723bb55e663cbf26/packages.adb";
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
      hash = "sha256-/rrehV0bl845+tq51Ga7jg7EC6Z2W5Ccm1JU8g+SpUw=";
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
