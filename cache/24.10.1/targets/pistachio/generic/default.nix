# 24.10.1 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-lOCjuusw9BCk9G3aWZ9SO09dNMdW6cWymeeXizWI3c0=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "11878f3bd26727c3d47c5eb7b880e4ebf74a1fd64e92b9eb7c046887f3038b6a";
    filename = "immortalwrt-imagebuilder-24.10.1-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RuyjrhKM9e74WTBVXe2ULmeIQTsJHFVafh0NYYnwmCw=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "5bc7e7a41f12b4cda562c8c68589ad64";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-5bc7e7a41f12b4cda562c8c68589ad64";
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
  kmods."6.6.86-1-5bc7e7a41f12b4cda562c8c68589ad64" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/pistachio/generic/kmods/6.6.86-1-5bc7e7a41f12b4cda562c8c68589ad64/";
    sourceInfo = {
      hash = "sha256-Al3PitF97OsBl7p4Lx3za8DLx1L4ZB/lj3cNnfMENGY=";
      name = "kmods-pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/pistachio/generic/kmods/6.6.86-1-5bc7e7a41f12b4cda562c8c68589ad64/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-Xwg9Abxt/DR2oEE2kIPEh1vDhfmi1W/SdYU1Tr3ttTI=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/pistachio/generic/packages/Packages";
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
