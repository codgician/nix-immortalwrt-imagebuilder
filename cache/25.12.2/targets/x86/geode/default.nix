# 25.12.2 x86/geode
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/geode/";
  sha256sums = {
    hash = "sha256-7Pahhz0jEIHOKJ8PZ8aOykn/6OWMNb2AWhpvTi/f9hQ=";
    name = "x86_geode-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/geode/sha256sums";
  };
  imagebuilder = {
    sha256 = "7fcbb3a38e0de9a7508e79b6e458362900a28801f3eb190cc57a13c8143e5494";
    filename = "immortalwrt-imagebuilder-25.12.2-x86-geode.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-DkdnrAec3rvZl5jKWRLzdm49303zeSKOBfglbD8ro4Y=";
    name = "x86_geode-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/geode/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "b139c4708dce409ff85d6ce62e409775";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-b139c4708dce409ff85d6ce62e409775";
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
  kmods."6.12.103-1-b139c4708dce409ff85d6ce62e409775" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/geode/kmods/6.12.103-1-b139c4708dce409ff85d6ce62e409775/";
    sourceInfo = {
      hash = "sha256-6qgnwGjZ7B0TjGINb3OxqkGZ1JwBUU4PKP2r2yGUyMI=";
      name = "kmods-x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/geode/kmods/6.12.103-1-b139c4708dce409ff85d6ce62e409775/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/geode/packages/";
    sourceInfo = {
      hash = "sha256-o3J5YlwS847XG40B8UP9HpipcrL1Ti1L69gNkCDXXQ8=";
      name = "x86_geode-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/x86/geode/packages/packages.adb";
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
