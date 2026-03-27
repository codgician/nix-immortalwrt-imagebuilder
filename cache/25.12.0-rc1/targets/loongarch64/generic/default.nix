# 25.12.0-rc1 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-CT2bDzj+hnON+TI9uf/ww4BuBpoDYK23tQpPYWFd0cs=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3aad925c9318df5a2d8b65dbbca9f47dfe6c10a127a693b6cca11c7d5d38d055";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mhfZ2d7N6na7+EM8f4Oqg/H1gLVb3vZb0Qed/wA7C8w=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "a8ad2d98838418635f1808aa310f788b";
      version = "6.12.74";
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
      "kmod-nf-nathelper"
      "kmod-nft-offload"
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
    kmods_target = "6.12.74-1-a8ad2d98838418635f1808aa310f788b";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.74-1-a8ad2d98838418635f1808aa310f788b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/loongarch64/generic/kmods/6.12.74-1-a8ad2d98838418635f1808aa310f788b/";
    sourceInfo = {
      hash = "sha256-kVKY8KQhYSwmpGANc3X8TW73z9af4mkqCL+ZnodnnD0=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/loongarch64/generic/kmods/6.12.74-1-a8ad2d98838418635f1808aa310f788b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-J3SA2oP36Tpf38bUpoCydL4N/SHjkRq9/1SUP1lejHM=";
      name = "loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/loongarch64/generic/packages/packages.adb";
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
