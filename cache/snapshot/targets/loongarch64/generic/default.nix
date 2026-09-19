# snapshot loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-zE9LSktUE0ktwp4yn8WnfD2QYcT27aCIUQKjM78BzXs=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "38fbc227005cd07ba5705908429b4ab79f2921835c2fb6e89069a1ab11b4dab2";
    filename = "immortalwrt-imagebuilder-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tcme8NH6E02ktU9zhQsIkTc+tZkEaFzeTjrJhA9NRXs=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "ce3ac4ae0399a4c9acceb5ec6c691851";
      version = "6.12.108";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "blkid"
      "ca-bundle"
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
    kmods_target = "6.12.108-1-ce3ac4ae0399a4c9acceb5ec6c691851";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.108-1-ce3ac4ae0399a4c9acceb5ec6c691851" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.108-1-ce3ac4ae0399a4c9acceb5ec6c691851/";
    sourceInfo = {
      hash = "sha256-zCIrFaBON8iv1JnEDiWq1dxzZg64gyNm1tssh9G6hOY=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.108-1-ce3ac4ae0399a4c9acceb5ec6c691851/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-jjlGISaSYsi7X3NMfswQUrzQlUrtcxjlW7CX9dg9di4=";
      name = "loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/packages/packages.adb";
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
