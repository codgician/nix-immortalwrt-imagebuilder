# snapshot loongarch64/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-UoEuF6oWd0JKTB7EiW8TRAfRc8WxNWBqFFIABcYhxgM=";
    name = "loongarch64_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "21408abe51d28363272b7ac127dfab4a6d9fdf3e6dce6b048ba9fa0e4f484e38";
    filename = "immortalwrt-imagebuilder-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-cMui1V7pkveRJr+XN6yWgShRTk++goVPWOvl8jE7GnA=";
    name = "loongarch64_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "7d011e74f3e72902aabc48ace5724e3d";
      version = "6.12.67";
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
      "kmod-nft-offload"
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
    kmods_target = "6.12.67-1-7d011e74f3e72902aabc48ace5724e3d";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.67-1-7d011e74f3e72902aabc48ace5724e3d" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/loongarch64/generic/kmods/6.12.67-1-7d011e74f3e72902aabc48ace5724e3d/";
    sourceInfo = {
      hash = "sha256-l3wiLAtsPvRuQngjD0UQEpw427LJLjED6dMHkoCeHM4=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/loongarch64/generic/kmods/6.12.67-1-7d011e74f3e72902aabc48ace5724e3d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-7HJNkFuUrsqvk7evBoOGiRfDjSV55V4w4RNEmw2TFO0=";
      name = "loongarch64_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/loongarch64/generic/packages/packages.adb";
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
