# 25.12.0-rc2 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-GyAOcuyRpnopsp1X9UcCLDSUI0aHpJ7SPgtWRVXHf9Y=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1ef18466976e46aa56f560197d203fa764de0cdbd6b02f74b23b5fb144709ae4";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-LfD034rd42VVnNa6wKn8nVSZ4mp9rDTKgKrpa6akD+c=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "e1a5785bb30b2ab7d3e8954eabb42f89";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "blkid"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdisk"
      "firewall4"
      "fstools"
      "grub2-efi-loongarch64"
      "kmod-dwmac-motorcomm"
      "kmod-e1000e"
      "kmod-i40e"
      "kmod-igb"
      "kmod-igbvf"
      "kmod-igc"
      "kmod-ixgbe"
      "kmod-ixgbevf"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-r8125"
      "kmod-r8126"
      "kmod-r8127"
      "kmod-r8168"
      "kmod-usb-net-asix"
      "kmod-usb-net-asix-ax88179"
      "kmod-usb-net-rtl8150"
      "kmod-usb-net-rtl8152-vendor"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.79-1-e1a5785bb30b2ab7d3e8954eabb42f89";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.79-1-e1a5785bb30b2ab7d3e8954eabb42f89" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/loongarch64/generic/kmods/6.12.79-1-e1a5785bb30b2ab7d3e8954eabb42f89/";
    sourceInfo = {
      hash = "sha256-JkwEUlu3JnWLF+k8mkiNrfisJZGgk049MYFOAKmA9Wo=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/loongarch64/generic/kmods/6.12.79-1-e1a5785bb30b2ab7d3e8954eabb42f89/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-GLjs6T9VTb8nDp2oJOTHWlfMKVgPCTrAOFCS58yAuK4=";
      name = "loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/loongarch64/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "loongarch64_generic";
  feeds = import ./../../../packages/loongarch64_generic.nix;
}
