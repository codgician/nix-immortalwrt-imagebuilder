# 21.02.7 x86/geode
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-lCbyp1EYaol8aXUkN3ABQZfOBUSEaoW6+KOb9AsE+FE=";
    name = "x86_geode-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "b710ec542b3c2636bee973835c5570817dc7fdc83fc564e9626ef8c0d9c74911";
    filename = "immortalwrt-imagebuilder-21.02.7-x86-geode.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-MXeVxbLeSN2eoSC8bTyrpU9NJ6otSYIwulzPB913xiQ=";
    name = "x86_geode-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/geode/profiles.json";
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
          "kmod-crypto-cbc"
          "kmod-crypto-hw-geode"
          "kmod-ledtrig-gpio"
        ];
      };
      geos = {
        device_packages = [
          "kmod-crypto-cbc"
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/geode/packages/";
    sourceInfo = {
      hash = "sha256-axZVAFfbfLHIevRaJhuqmSfqe8xt9se/N+FkK3OdXGk=";
      name = "x86_geode-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/x86/geode/packages/Packages";
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
