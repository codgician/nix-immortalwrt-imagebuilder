# snapshot pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-XrcfqENdKeb4yqDMdicx9It1p31qYJ4h6qPEbG+k5ZU=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "316236edc5fdfe58870be15592b04de4cde3ba9802feacb1a2a6ac70c1420041";
    filename = "immortalwrt-imagebuilder-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vrxtFfyERcbPxcSCvFeo2o3tcqZVuqwCWo44nCO5wMU=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "5f010ebbf329985702a691e4f8349fa0";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.52-1-5f010ebbf329985702a691e4f8349fa0";
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
  kmods."6.18.52-1-5f010ebbf329985702a691e4f8349fa0" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.52-1-5f010ebbf329985702a691e4f8349fa0/";
    sourceInfo = {
      hash = "sha256-/Hwsl02e+KKhvSOYHygnO1F0JTGAwS9JEEyPqlcxaMo=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.52-1-5f010ebbf329985702a691e4f8349fa0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-db630ld0Q6owr9Z8TXeJRaEOSY2lmaal5fseYk9AdeU=";
      name = "pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/packages/packages.adb";
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
