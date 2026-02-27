# 23.05.7 x86/64
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/64/";
  sha256sums = {
    hash = "sha256-3Sy0pWeP9Pc/RnVIZwJZscvNERIuYBc+RbkDL8ZSoGI=";
    name = "x86_64-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "570c89e50be369aab443f6667a5b39a798089873064cb8c266c9816d443382b9";
    filename = "immortalwrt-imagebuilder-23.05.7-x86-64.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-nP1HSNTlGrgJ0Ls1pLWQcsaZSo8y7iv3SPshif1qHRs=";
    name = "x86_64-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "b43b3018862131fe596535b496468fb0";
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
    kmods_target = "5.15.195-1-b43b3018862131fe596535b496468fb0";
    profiles = {
      generic = {
        device_packages = [
          "kmod-amazon-ena"
          "kmod-amd-xgbe"
          "kmod-bnx2"
          "kmod-e1000"
          "kmod-forcedeth"
          "kmod-fs-vfat"
          "kmod-tg3"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-QDvRSe1ogD6RT3iQxa17LnSsahQ5TVyfur16D/eUgjM=";
      name = "x86_64-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/x86/64/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "x86_64";
  feeds = import ./../../../packages/x86_64.nix;
}
