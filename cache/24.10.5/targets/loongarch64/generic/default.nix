# 24.10.5 loongarch64/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-cNNddUhxqr1JAESNRVHgVlzFqiQOn6vkAmYewV2xRGg=";
    name = "loongarch64_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "acbe1affbc41450ced843c0252c6aac1a81e4cb1e7af2a4aef24ff1b83935a77";
    filename = "immortalwrt-imagebuilder-24.10.5-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-W8vh/iKbewkePRd6UTJRHx7iBMIqDrRBcJw6hdZtSPY=";
    name = "loongarch64_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "db8df0df5e3cb21c006793cf0bd0a740";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-db8df0df5e3cb21c006793cf0bd0a740";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.6.122-1-db8df0df5e3cb21c006793cf0bd0a740" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/loongarch64/generic/kmods/6.6.122-1-db8df0df5e3cb21c006793cf0bd0a740/";
    sourceInfo = {
      hash = "sha256-F1hHZFPESvPXfKDMhLTTYz5nVhMS0rqNTraemNdzg4Q=";
      name = "kmods-loongarch64_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/loongarch64/generic/kmods/6.6.122-1-db8df0df5e3cb21c006793cf0bd0a740/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-1bLdwmk253ssd0ws0O77ZbcV1GBOq1mHff32R572Xvg=";
      name = "loongarch64_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/loongarch64/generic/packages/Packages";
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
