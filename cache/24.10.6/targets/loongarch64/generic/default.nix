# 24.10.6 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-Ks4h+itolGEn2jt9pltn7VoYmonZjSwU3NZdTHeYCmU=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "54bffe5f259dd6e1c6553db40e1ba451d68966c5fb8206f239c4ee47a638e3e3";
    filename = "immortalwrt-imagebuilder-24.10.6-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OrtjCx+ZBq5llG+g8GrHNE9jpkfEYX9kjpOrSt3TXTI=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "2a9933a91d8a762f13b20f8a9eb70b1c";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-2a9933a91d8a762f13b20f8a9eb70b1c";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.6.133-1-2a9933a91d8a762f13b20f8a9eb70b1c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/loongarch64/generic/kmods/6.6.133-1-2a9933a91d8a762f13b20f8a9eb70b1c/";
    sourceInfo = {
      hash = "sha256-29jfGjNsoCKHd4iEW/s9yyL525RZHx0poX0km7W+388=";
      name = "kmods-loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/loongarch64/generic/kmods/6.6.133-1-2a9933a91d8a762f13b20f8a9eb70b1c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-cv8ss92EjEdb9tR+uLYIqikJeJ86g8QDrWT4AlBKB54=";
      name = "loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/loongarch64/generic/packages/Packages";
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
