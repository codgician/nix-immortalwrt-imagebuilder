# 24.10.0 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-uaeB48GeakPxfmd5Ox36YPOv526D9M+r+AHA80wc8VU=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e6e965fb32999a360e22e45d2f1df3134886e92c1e73622da79efaaf828b4df5";
    filename = "immortalwrt-imagebuilder-24.10.0-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/kJKdnjQswD9oxpMuqoOt9V/LBAiH/hpRcgg2veDuw4=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "75bd1c8ec80b2b6095e281786567207b";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-75bd1c8ec80b2b6095e281786567207b";
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
  kmods."6.6.73-1-75bd1c8ec80b2b6095e281786567207b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/pistachio/generic/kmods/6.6.73-1-75bd1c8ec80b2b6095e281786567207b/";
    sourceInfo = {
      hash = "sha256-9Rp586Gh4n1zjSjtucCKH/BhiEmDft3y1kZYAUbaj10=";
      name = "kmods-pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/pistachio/generic/kmods/6.6.73-1-75bd1c8ec80b2b6095e281786567207b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-Ueju4lZmIhxKrgP54CiT78z4Qw0BWQY7TEWY2yhF9DM=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/pistachio/generic/packages/Packages";
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
