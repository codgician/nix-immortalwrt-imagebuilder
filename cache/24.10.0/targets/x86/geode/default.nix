# 24.10.0 x86/geode
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-BuzRQwwpzSRz74cnA6R5w0o38PdEc5WELkjmCHA9/3Y=";
    name = "x86_geode-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "f663ee4fe07cc4ea2c1658806b871655e6fc6e119430bfb1a02e3ffe6bc22a16";
    filename = "immortalwrt-imagebuilder-24.10.0-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XO8/7a/d3ytm42wcXJNjj0d+XjPSnxWJgC0LhBqHUyw=";
    name = "x86_geode-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "d913fc496e1ae174aff58d5d1df68056";
      version = "6.6.73";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
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
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
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
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-d913fc496e1ae174aff58d5d1df68056";
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
  kmods."6.6.73-1-d913fc496e1ae174aff58d5d1df68056" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/geode/kmods/6.6.73-1-d913fc496e1ae174aff58d5d1df68056/";
    sourceInfo = {
      hash = "sha256-hLGa+tMat4YCbOXfrmMXnoyIESxyFDZ0tJHuDhavI3c=";
      name = "kmods-x86_geode-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/geode/kmods/6.6.73-1-d913fc496e1ae174aff58d5d1df68056/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/geode/packages/";
    sourceInfo = {
      hash = "sha256-w/ZZX94Cp9Q4peK3tgCI5zuFyzb/avLKqBbNhNI6uEs=";
      name = "x86_geode-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/x86/geode/packages/Packages";
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
