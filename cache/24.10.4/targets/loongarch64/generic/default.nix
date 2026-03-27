# 24.10.4 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-SVoEMy2p/iPOBhtXDhnXYog0Xd7yeHRw4THnVWGUzsQ=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "053024c3ad38a020b52ee60b1463cca4676d92278984b538ae21469741e8fe12";
    filename = "immortalwrt-imagebuilder-24.10.4-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-R84+VbxOOzFwXhQtaS3oJskX/TspGstl5FPeQz0nTQo=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "75b0087f04ef5c1a14e14b7c2227d323";
      version = "6.6.110";
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
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
    kmods_target = "6.6.110-1-75b0087f04ef5c1a14e14b7c2227d323";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.6.110-1-75b0087f04ef5c1a14e14b7c2227d323" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/loongarch64/generic/kmods/6.6.110-1-75b0087f04ef5c1a14e14b7c2227d323/";
    sourceInfo = {
      hash = "sha256-0SUhbHYFeBRXOpKUkKdncC/Qwhrk4Xg9iQ671CFc58A=";
      name = "kmods-loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/loongarch64/generic/kmods/6.6.110-1-75b0087f04ef5c1a14e14b7c2227d323/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-euD4+KlAWR8Sb+r/kZnEikhmqBZQmJpp5XgscSMqg7s=";
      name = "loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/loongarch64/generic/packages/Packages";
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
