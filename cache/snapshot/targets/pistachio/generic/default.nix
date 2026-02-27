# snapshot pistachio/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-l+9UI2/oSNJ63+J3juf/7wzCRJkY9uB5V0Bbt40JLwI=";
    name = "pistachio_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "b2cdbd7fecc81feaeb44340ccd0895ce6cb2d4b8fe20dae2676c805e23eb64ef";
    filename = "immortalwrt-imagebuilder-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VHm0Oujco7Rfny7Odhw73/6Cowgbl3dOZFF379FFj9k=";
    name = "pistachio_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "38a1d6d5710a20b7d27c069ddae2403d";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-38a1d6d5710a20b7d27c069ddae2403d";
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
  kmods."6.12.67-1-38a1d6d5710a20b7d27c069ddae2403d" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/pistachio/generic/kmods/6.12.67-1-38a1d6d5710a20b7d27c069ddae2403d/";
    sourceInfo = {
      hash = "sha256-PrT++HIaL1p1nCrtCch0+ZcQfkMY1Sm2B01odKj2xso=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/pistachio/generic/kmods/6.12.67-1-38a1d6d5710a20b7d27c069ddae2403d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-RL/F2xNCvp5jruMBimE6ugMYtt4Kbq2zTQqed0yeE2s=";
      name = "pistachio_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/pistachio/generic/packages/packages.adb";
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
