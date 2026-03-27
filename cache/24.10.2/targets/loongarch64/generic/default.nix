# 24.10.2 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-AgC8esr0VvploGMRjniLhdN/7jq+7d+P+MEXAMnucZY=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e6f0f77d9245de214bd76acccbb509b4c750c4c0b56999ed82a6611c1632e0e6";
    filename = "immortalwrt-imagebuilder-24.10.2-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gf0QZLdcY51qDgQXnu8Ye+0qR3XwiS1r0UVEWe8WpcY=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "451a3f10d89b71b80bffbc436d238340";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-451a3f10d89b71b80bffbc436d238340";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.6.93-1-451a3f10d89b71b80bffbc436d238340" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/loongarch64/generic/kmods/6.6.93-1-451a3f10d89b71b80bffbc436d238340/";
    sourceInfo = {
      hash = "sha256-WceDuzWKr7nER5doAbArFj0UMWyln6bMIXbBu9iU5NI=";
      name = "kmods-loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/loongarch64/generic/kmods/6.6.93-1-451a3f10d89b71b80bffbc436d238340/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-EibrTwLym3UhFnDUf2ooNFLnNa9aSD4e43T6Kot3IHQ=";
      name = "loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/loongarch64/generic/packages/Packages";
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
