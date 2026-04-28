# 24.10.6 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-1r2epsL75S+33Zs1NA7dk7mLlJZYObKyxb1FN9BYUsk=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a41d440e95d771228b344a3a4fc9242cc7ee8d2d479a68dc97af61ecca3dd49c";
    filename = "immortalwrt-imagebuilder-24.10.6-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OUADZE0988OuDy3k3q6Vhqpdpf4Dun1rakPsxnejgsI=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "2a40eb0c484ebb8c6481e00b7f1c5e4b";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-2a40eb0c484ebb8c6481e00b7f1c5e4b";
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
  kmods."6.6.133-1-2a40eb0c484ebb8c6481e00b7f1c5e4b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/pistachio/generic/kmods/6.6.133-1-2a40eb0c484ebb8c6481e00b7f1c5e4b/";
    sourceInfo = {
      hash = "sha256-hSGNqzZsWNGBaV6KGj1URuRU97pK6laXp3p+lv2HRF4=";
      name = "kmods-pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/pistachio/generic/kmods/6.6.133-1-2a40eb0c484ebb8c6481e00b7f1c5e4b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-13qAXTxjWVYnrbApKbGtxSu2RwZI35wQRJsgCfrZXoQ=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/pistachio/generic/packages/Packages";
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
