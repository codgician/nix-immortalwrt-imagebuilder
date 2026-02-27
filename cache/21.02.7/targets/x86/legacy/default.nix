# 21.02.7 x86/legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-bT8o9mP8flcq5mF79M6E9xpevwZluVktfl9lRs4YVGI=";
    name = "x86_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "d61041a034a57ca0318ce805b72ca88df8841c047a8423f8797da88aca2006bb";
    filename = "immortalwrt-imagebuilder-21.02.7-x86-legacy.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-H4+RdMuViO8pkj4ojBgqSk2UPzOoa5os+IUV0S7nzEU=";
    name = "x86_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = null;
    default_packages = [
      "alsa-utils"
      "autocore-x86"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdisk"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-8139cp"
      "kmod-8139too"
      "kmod-ac97"
      "kmod-button-hotplug"
      "kmod-e1000e"
      "kmod-fs-f2fs"
      "kmod-i40e-vendor"
      "kmod-igb-vendor"
      "kmod-igbvf"
      "kmod-igc"
      "kmod-ipt-raw"
      "kmod-ixgbe-vendor"
      "kmod-ixgbevf-vendor"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-pcnet32"
      "kmod-r8101"
      "kmod-r8125"
      "kmod-r8168"
      "kmod-sound-hda-codec-hdmi"
      "kmod-sound-hda-codec-realtek"
      "kmod-sound-hda-codec-via"
      "kmod-sound-hda-core"
      "kmod-sound-hda-intel"
      "kmod-sound-i8x0"
      "kmod-sound-via82xx"
      "kmod-tg3"
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
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
          "kmod-via-rhine"
          "kmod-via-velocity"
          "kmod-forcedeth"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-jc7iHDPX7nR8+Rv1tt8qP//CI1G1sU26XSCx62v1vEg=";
      name = "x86_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/legacy/packages/Packages";
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
