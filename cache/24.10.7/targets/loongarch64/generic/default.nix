# 24.10.7 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-rgNHAjwKsfMr/ME1KOrUIistPQm8wqb2ujXn7zGDG64=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "b20c2976632f6b983212aa2ccd2c09b1590e5b8cae9cdc30999f71565d5e7c5a";
    filename = "immortalwrt-imagebuilder-24.10.7-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CBbM5NnVi7zV1J6hVVCNAiBv/H2GZ5Oc15Ov0BVzMDA=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "2a9933a91d8a762f13b20f8a9eb70b1c";
      version = "6.6.159";
    };
    default_packages = [
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
      "kmod-e1000e"
      "kmod-i40e"
      "kmod-igb"
      "kmod-igbvf"
      "kmod-igc"
      "kmod-ixgbe"
      "kmod-ixgbevf"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-r8125"
      "kmod-r8126"
      "kmod-r8127"
      "kmod-r8168"
      "kmod-usb-net-asix"
      "kmod-usb-net-asix-ax88179"
      "kmod-usb-net-rtl8150"
      "kmod-usb-net-rtl8152-vendor"
      "kmod-yt6801"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
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
    kmods_target = "6.6.159-1-2a9933a91d8a762f13b20f8a9eb70b1c";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.6.159-1-2a9933a91d8a762f13b20f8a9eb70b1c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/loongarch64/generic/kmods/6.6.159-1-2a9933a91d8a762f13b20f8a9eb70b1c/";
    sourceInfo = {
      hash = "sha256-t5hqn+eXoO3uMA/tn4b1J3nrN8g5mH61orMIkaJatoY=";
      name = "kmods-loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/loongarch64/generic/kmods/6.6.159-1-2a9933a91d8a762f13b20f8a9eb70b1c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-qtcMP76tZcIMoNWlHvr281pvO4KaYa9viM/URaylV2M=";
      name = "loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/loongarch64/generic/packages/Packages";
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
