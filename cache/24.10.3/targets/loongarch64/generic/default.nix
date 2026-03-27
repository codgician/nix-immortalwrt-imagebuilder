# 24.10.3 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-dttKYMyjl4mpfNKKPo2LFrgtomrqR0OwINqBTM3d5X0=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "07327ccbca54d5f97b075dc7ff3159d1277cdf1ea1338f71f8510fd68c27e7ba";
    filename = "immortalwrt-imagebuilder-24.10.3-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ckOMYkvwXJffkrGuy4Lgi6LLFF5fbPaWv52PMprP0wc=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "451a3f10d89b71b80bffbc436d238340";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-451a3f10d89b71b80bffbc436d238340";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.6.104-1-451a3f10d89b71b80bffbc436d238340" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/loongarch64/generic/kmods/6.6.104-1-451a3f10d89b71b80bffbc436d238340/";
    sourceInfo = {
      hash = "sha256-AWwTFzOV91FH8+8stqCcZmAb2sA6rP1lB6stS2ewrrQ=";
      name = "kmods-loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/loongarch64/generic/kmods/6.6.104-1-451a3f10d89b71b80bffbc436d238340/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-qxebg+6C+RbLZpos/lpImpRkTxRa4HGdiLBsiQOz2Gg=";
      name = "loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/loongarch64/generic/packages/Packages";
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
