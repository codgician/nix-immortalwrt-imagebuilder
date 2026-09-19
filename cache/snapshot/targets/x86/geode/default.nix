# snapshot x86/geode
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-DztdpGY+fgrggzzz9RYPjAP6AVE0nl8QK4sG8bekQZk=";
    name = "x86_geode-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "3ca8725596eb35a26ab28c38c8161812c8e69c8cc6dabc8b2ca65bd8373516b3";
    filename = "immortalwrt-imagebuilder-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-kyhGhBsgWpG1Duwtqi4spXxsw6r6cu9k6WeaLFDxed0=";
    name = "x86_geode-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "a4b321e1a0c676ec93aa683257494a3f";
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
    kmods_target = "6.18.52-1-a4b321e1a0c676ec93aa683257494a3f";
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
  kmods."6.18.52-1-a4b321e1a0c676ec93aa683257494a3f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/kmods/6.18.52-1-a4b321e1a0c676ec93aa683257494a3f/";
    sourceInfo = {
      hash = "sha256-BxLCnFZo6jWFyMfMtoT8HUn5kXN+n+/+Tmgh4xX0z8o=";
      name = "kmods-x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/geode/kmods/6.18.52-1-a4b321e1a0c676ec93aa683257494a3f/packages.adb";
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
      hash = "sha256-rwSs+u8miayulnKuzcdmcMzxlT8duRncomk0BeNYF7w=";
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
