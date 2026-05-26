# 25.12.0 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-4j6TDQ40OaNeDLIHejyfRzS6yqlT79P1acVCujmfVRs=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7cacc247289967650938a40352dab7d360013f6971145585df147ed89aed6c38";
    filename = "immortalwrt-imagebuilder-25.12.0-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3NkY1K4O9CUtwNbMVSjyUkGG8uP9HVCVSKMfEjYQBPc=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "d9cccd0c3c156ae4dafacd6fc88ff47a";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-d9cccd0c3c156ae4dafacd6fc88ff47a";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.87-1-d9cccd0c3c156ae4dafacd6fc88ff47a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/loongarch64/generic/kmods/6.12.87-1-d9cccd0c3c156ae4dafacd6fc88ff47a/";
    sourceInfo = {
      hash = "sha256-rNoyLupnqlGpe5mzeQj8DRRaCKw3WRbpmgzZ3XSyCuY=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/loongarch64/generic/kmods/6.12.87-1-d9cccd0c3c156ae4dafacd6fc88ff47a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-hJkzQjoTkGrJnvCaEhQWGexKeEW1wAte2f5NV3zi11U=";
      name = "loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/loongarch64/generic/packages/packages.adb";
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
