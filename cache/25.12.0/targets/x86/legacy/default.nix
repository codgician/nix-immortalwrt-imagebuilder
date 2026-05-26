# 25.12.0 x86/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-Vmt8v0ZUhLF3UbmIChaCyhmyV2PasxGSfNxSKJkzARw=";
    name = "x86_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "21a6517d7a27f65c9bd0c3913fa7cf9caa458059d576bcce41cc1000dafbbba4";
    filename = "immortalwrt-imagebuilder-25.12.0-x86-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-08rC4Z9VfDlWOS4liZE+pCN3bXhKu0kVO8+ttROwaU0=";
    name = "x86_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "eb7e8394238f358c3ed40deffe626faa";
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
    kmods_target = "6.12.87-1-eb7e8394238f358c3ed40deffe626faa";
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
  kmods."6.12.87-1-eb7e8394238f358c3ed40deffe626faa" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/legacy/kmods/6.12.87-1-eb7e8394238f358c3ed40deffe626faa/";
    sourceInfo = {
      hash = "sha256-W0/SlIlQqs4eCUJMqvYnUPLncB8LOyPcHnmNjWLEgZE=";
      name = "kmods-x86_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/legacy/kmods/6.12.87-1-eb7e8394238f358c3ed40deffe626faa/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-wELpa6xrKEL1O6LoX+ugZ/xqTVRVdnsQckXi/nC3IGo=";
      name = "x86_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/x86/legacy/packages/packages.adb";
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
