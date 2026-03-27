# 24.10.1 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-pX0kzTnVvT3dCAswdhlnPlto25k7VER5a19BCP1oJAA=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "4a9037e6a5c6f367f3691143a3571ed431b32f0d55d0f9eb654a9f52e9712e5a";
    filename = "immortalwrt-imagebuilder-24.10.1-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-KEGCBGoikXjb2YOpezRTzvtvgRY0c8r4KfJo+D3cU9Y=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "82ab3717934f03532ea3b7fccd67f592";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-82ab3717934f03532ea3b7fccd67f592";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.6.86-1-82ab3717934f03532ea3b7fccd67f592" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/loongarch64/generic/kmods/6.6.86-1-82ab3717934f03532ea3b7fccd67f592/";
    sourceInfo = {
      hash = "sha256-dE6Ht/3jTw2Q6lJCbbtgCUdm74798MDvUczPllq9cNE=";
      name = "kmods-loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/loongarch64/generic/kmods/6.6.86-1-82ab3717934f03532ea3b7fccd67f592/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-oeLZcBWXCk4SmAJEzu2rCGoegblY3BEoRd9Bog2WcxQ=";
      name = "loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/loongarch64/generic/packages/Packages";
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
