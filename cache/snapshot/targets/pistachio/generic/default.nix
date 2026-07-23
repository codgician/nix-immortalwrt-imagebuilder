# snapshot pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-ZgrouXKKvgQ6mrftViozdrGTt1Tky2oOM0JJhG/yDsk=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8d1137d3152869356413b698fb6fb83c782b936fadbe92d61d4cf3bb249bb52d";
    filename = "immortalwrt-imagebuilder-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-y/7UDbWENIWSMHeSyE/zmpxaiY4Ay9WQCN0DOIYPg6k=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "889c689ec0faf145cc10e7545004284c";
      version = "6.18.39";
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
    kmods_target = "6.18.39-1-889c689ec0faf145cc10e7545004284c";
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
  kmods."6.18.39-1-889c689ec0faf145cc10e7545004284c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.39-1-889c689ec0faf145cc10e7545004284c/";
    sourceInfo = {
      hash = "sha256-nDsa5gYFO3Nom2z7cbC86XY6q9+7neMArWJVu+WHiQY=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/pistachio/generic/kmods/6.18.39-1-889c689ec0faf145cc10e7545004284c/packages.adb";
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
      hash = "sha256-snEronrLpFRZVZUqFaLANWIplNQQgZlBGrAcaEQLaXE=";
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
