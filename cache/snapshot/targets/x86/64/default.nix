# snapshot x86/64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/";
  sha256sums = {
    hash = "sha256-KCDw6lfGWvllLOvuIYxkNvzRMdomZXymUd6igtsrbnk=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/sha256sums";
  };
  imagebuilder = {
    sha256 = "4eafac405efcc317361fe696ee6a8fcbff54210a62ab1ff631273495dbd90778";
    filename = "immortalwrt-imagebuilder-x86-64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rVioFQK70WVySpaVoLLIvP1PRXU+ApO+e+ehjUt1IhQ=";
    name = "x86_64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "x86_64";
    linux_kernel = {
      release = "1";
      vermagic = "734e47861aa05188bec0d9b64feb9bff";
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
    kmods_target = "6.18.52-1-734e47861aa05188bec0d9b64feb9bff";
    profiles = {
      generic = {
        device_packages = [
          "kmod-amazon-ena"
          "kmod-amd-xgbe"
          "kmod-bnx2"
          "kmod-e1000"
          "kmod-dwmac-intel"
          "kmod-forcedeth"
          "kmod-fs-vfat"
          "kmod-tg3"
          "kmod-drm-i915"
        ];
      };
    };
  };
  kmods."6.18.52-1-734e47861aa05188bec0d9b64feb9bff" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.18.52-1-734e47861aa05188bec0d9b64feb9bff/";
    sourceInfo = {
      hash = "sha256-Kv5Pvyk9zZvJT7DKtBQq238TLQi6RsiYeRsmydbSbGg=";
      name = "kmods-x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/kmods/6.18.52-1-734e47861aa05188bec0d9b64feb9bff/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/packages/";
    sourceInfo = {
      hash = "sha256-Wkx63t9PdVYyPWeiZTPiVqA+uoniifAKN2G0vzIhOf4=";
      name = "x86_64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/x86/64/packages/packages.adb";
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
