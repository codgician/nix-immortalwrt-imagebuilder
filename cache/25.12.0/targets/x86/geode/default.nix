# 25.12.0 x86/geode
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-2gRaqDRGNvACYODC7wPd/9cQ/srJkvLZh3C2tJ/mZLE=";
    name = "x86_geode-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "b6c23a9d890623491c24f8cb19f9034dd6461a0a813dde5609781227235f2838";
    filename = "immortalwrt-imagebuilder-25.12.0-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Solc9ssoSlTXn++5vJndNXJHJW9+X8CXqe+YjYGZRxw=";
    name = "x86_geode-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "121e12642e9fdc8b3897a348cffd58b8";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-121e12642e9fdc8b3897a348cffd58b8";
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
  kmods."6.12.87-1-121e12642e9fdc8b3897a348cffd58b8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/geode/kmods/6.12.87-1-121e12642e9fdc8b3897a348cffd58b8/";
    sourceInfo = {
      hash = "sha256-xOicC+6sUemR8TtpDZZe7PG0f0vC4Mmd+QKbi5cVAEs=";
      name = "kmods-x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/geode/kmods/6.12.87-1-121e12642e9fdc8b3897a348cffd58b8/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/geode/packages/";
    sourceInfo = {
      hash = "sha256-5Mb+622nC/HVMT7kqS1XqfqlIVW4XNHoIxSXss9OeVA=";
      name = "x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/geode/packages/packages.adb";
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
