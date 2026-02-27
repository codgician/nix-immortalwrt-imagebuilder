# 23.05.7 x86/legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-Hm0dqOXzSW6jLMsGqzLflcYABCKLRwRjMSOPZBLvyQA=";
    name = "x86_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "3eb937c3bbbfe14b288e55bbd52ee58642a0edcec72dd733ae7fd5498fcb591b";
    filename = "immortalwrt-imagebuilder-23.05.7-x86-legacy.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-9BqWplzD3QvqID0O6Xq1sJvqoY0jL/e226hDJ5lhDy4=";
    name = "x86_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "33633daef0b518750f89677ffbad64e9";
      version = "5.15.195";
    };
    default_packages = [
      "alsa-utils"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdisk"
      "firewall4"
      "fstools"
      "grub2-bios-setup"
      "intel-igpu-firmware-dmc"
      "kmod-8139cp"
      "kmod-8139too"
      "kmod-ac97"
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-pcnet32"
      "kmod-r8101"
      "kmod-r8125"
      "kmod-r8126"
      "kmod-r8168"
      "kmod-sound-hda-codec-hdmi"
      "kmod-sound-hda-codec-realtek"
      "kmod-sound-hda-codec-via"
      "kmod-sound-hda-core"
      "kmod-sound-hda-intel"
      "kmod-sound-i8x0"
      "kmod-sound-via82xx"
      "kmod-tulip"
      "kmod-usb-audio"
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
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-33633daef0b518750f89677ffbad64e9";
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
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-70tcaj9a0Kvcj3pjRifyX6oYPia6IQoOOVN/IIcV0y0=";
      name = "x86_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/legacy/packages/Packages";
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
