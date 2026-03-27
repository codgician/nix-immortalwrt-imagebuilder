# 24.10.0 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-0+5FUUOx2EyrHZJ3MCshh7aDlcmyPUZvvLs2acU9898=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a4c8aa942dc8e043b1a567c827aff8d56d4c123da6afbb32e08b98e657c51701";
    filename = "immortalwrt-imagebuilder-24.10.0-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-iLC0nC1WN6othACH7ZXMg4EbWSYj6L0RVuMQTUh0EnE=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "017895cce0441b061a734cecfc6030d4";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-017895cce0441b061a734cecfc6030d4";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.6.73-1-017895cce0441b061a734cecfc6030d4" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/loongarch64/generic/kmods/6.6.73-1-017895cce0441b061a734cecfc6030d4/";
    sourceInfo = {
      hash = "sha256-fWcjiVRoJYs4ydt4JXy/W3sjvCyA7XsNfWF2tH+yBsg=";
      name = "kmods-loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/loongarch64/generic/kmods/6.6.73-1-017895cce0441b061a734cecfc6030d4/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-+qYv0b3QeYyLUuQmAMtDBSh9yh/82mwZfwKCkAUeRB4=";
      name = "loongarch64_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/loongarch64/generic/packages/Packages";
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
