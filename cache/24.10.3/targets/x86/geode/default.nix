# 24.10.3 x86/geode
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-NCbIFk/YhF+Rr68KQi+U7q4nzSlhc84UAo1UmgtLNDk=";
    name = "x86_geode-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "d98cc863fb95bb757ebcc0e281df8da7d3a30740318c20bfe2b856c7ce9609cb";
    filename = "immortalwrt-imagebuilder-24.10.3-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jWM1o2tJmfFPWXUNJJp4vYyl/0tZ36VbJC4o9ijf/ag=";
    name = "x86_geode-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "f10b60df1001b995d74fbf02a94cab1b";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-f10b60df1001b995d74fbf02a94cab1b";
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
  kmods."6.6.104-1-f10b60df1001b995d74fbf02a94cab1b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/geode/kmods/6.6.104-1-f10b60df1001b995d74fbf02a94cab1b/";
    sourceInfo = {
      hash = "sha256-tUKKYe3QAqvaDIY3x78CzLgI3b1hfBdFDN9JcQb8BQM=";
      name = "kmods-x86_geode-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/geode/kmods/6.6.104-1-f10b60df1001b995d74fbf02a94cab1b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/geode/packages/";
    sourceInfo = {
      hash = "sha256-z7HAlX8/XoV/DXg+YyeVMlPg7JWfyShB3ZeyXfE6h9k=";
      name = "x86_geode-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/x86/geode/packages/Packages";
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
