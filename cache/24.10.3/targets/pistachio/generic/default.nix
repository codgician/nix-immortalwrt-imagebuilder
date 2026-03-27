# 24.10.3 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-0xAV008KZ3GBJD95B7MPeJriqIt1I49NYpt3T8pZ6mk=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "36f64695115efc1092fdf5c44d3a7e920ec6e2d0e91807892bfabf1709e9f80c";
    filename = "immortalwrt-imagebuilder-24.10.3-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-EIMxoJRWtF+eoZvLRqCrYfRmK+6cBY9wuFGI+T+Ojos=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "89ce2d28580a97c09f3f812190978d12";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-89ce2d28580a97c09f3f812190978d12";
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
  kmods."6.6.104-1-89ce2d28580a97c09f3f812190978d12" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/pistachio/generic/kmods/6.6.104-1-89ce2d28580a97c09f3f812190978d12/";
    sourceInfo = {
      hash = "sha256-cSM2EZPG8iGjvdh7F/NMLoitx+qmPNulzKUm9Luu4H0=";
      name = "kmods-pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/pistachio/generic/kmods/6.6.104-1-89ce2d28580a97c09f3f812190978d12/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-RuZj2y8qXAvcrgCUdxUq74eUE2UNjj2ahjIavUBUsJQ=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/pistachio/generic/packages/Packages";
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
