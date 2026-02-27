# 24.10.5 pistachio/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-IBvvstNS1Ro8FmPu4v93E7dAanD9rdplC7bjHXKcfQo=";
    name = "pistachio_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6f8f637f78cb6d995838a956229cd421922977c2ca339ef80b3a5d4f22b2f5df";
    filename = "immortalwrt-imagebuilder-24.10.5-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-0ZSV+gcOAWoe9c9xx/a/KgSPj2ObKSd43Cu4lPjrzKY=";
    name = "pistachio_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "2a40eb0c484ebb8c6481e00b7f1c5e4b";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-2a40eb0c484ebb8c6481e00b7f1c5e4b";
    profiles = {
      img_creator-ci40 = {
        device_packages = [
          "kmod-tpm-i2c-infineon"
          "kmod-ca8210"
          "wpan-tools"
        ];
      };
    };
  };
  kmods."6.6.122-1-2a40eb0c484ebb8c6481e00b7f1c5e4b" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/pistachio/generic/kmods/6.6.122-1-2a40eb0c484ebb8c6481e00b7f1c5e4b/";
    sourceInfo = {
      hash = "sha256-sqPQUKJt7uPXTD6moaxKEnGLDoFzf2z1ks1LIMmGnfU=";
      name = "kmods-pistachio_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/pistachio/generic/kmods/6.6.122-1-2a40eb0c484ebb8c6481e00b7f1c5e4b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-kbTTCTAIEfpy/3MiKOO010J3udQvxG95BXyeqEj6gUA=";
      name = "pistachio_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/pistachio/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc_24kf";
  feeds = import ./../../../packages/mipsel_24kc_24kf.nix;
}
