# snapshot loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-zs0tNEIIXeecQet6xzx3h5+5IlAriE55sMjeVSLWHz8=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9f0ae21dfbb124684421b88f4619a1087137f672381bdfe245f774db52ecab26";
    filename = "immortalwrt-imagebuilder-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qhIPs1QN0USkiaRGcXLWjtwvuhVg9gwVkr2ak5jEYK4=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "b9115c8f0c37e7b6601b88fbf9339300";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-b9115c8f0c37e7b6601b88fbf9339300";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.77-1-b9115c8f0c37e7b6601b88fbf9339300" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.77-1-b9115c8f0c37e7b6601b88fbf9339300/";
    sourceInfo = {
      hash = "sha256-JMNDAkrmPdxmfP8VgyX6efvS2XAAFP0Uzgcoj+aguvc=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.77-1-b9115c8f0c37e7b6601b88fbf9339300/packages.adb";
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
      hash = "sha256-Cu0BP1fTszztPwX0n6spcEPPiLxhrx+ntXSJfKyHHQc=";
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
