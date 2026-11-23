# 24.10.7 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-yMdLcLZvw4V2Oa9gaKOa/V61tsd8BWyjGpi4FT/boac=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "5cf9ac68a89d3f56929384ce5a2db7ef096a85162d129e4fd884da21655de532";
    filename = "immortalwrt-imagebuilder-24.10.7-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-B0TYTAuj4kPrJiuHxeIc4gcL500lkTzysQNcYgbwOKI=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "2a40eb0c484ebb8c6481e00b7f1c5e4b";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-2a40eb0c484ebb8c6481e00b7f1c5e4b";
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
  kmods."6.6.159-1-2a40eb0c484ebb8c6481e00b7f1c5e4b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/pistachio/generic/kmods/6.6.159-1-2a40eb0c484ebb8c6481e00b7f1c5e4b/";
    sourceInfo = {
      hash = "sha256-/Wuy0iQcx7yQQvgx1+DPmFMA/onzEfEEdCYcY8NKKkE=";
      name = "kmods-pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/pistachio/generic/kmods/6.6.159-1-2a40eb0c484ebb8c6481e00b7f1c5e4b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-7z073AZyVbMqbBrZMJRsSO2CJnpjKgpXHnEkK4+S7xI=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/pistachio/generic/packages/Packages";
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
