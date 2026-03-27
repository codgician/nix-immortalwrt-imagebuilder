# 24.10.2 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-LxU1EW7FQaDF/Qjg6kosHZPBiIPTcf53x2VPBQNmJNw=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e07f24a3013fabfebb9a4d1b516363fa16d3ee1a7bc7dd466557085164b6144b";
    filename = "immortalwrt-imagebuilder-24.10.2-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-1nvdHwzLH6ZuSLc4UdpGExX15NCU8vB5OTSK8Cqh/KU=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "89ce2d28580a97c09f3f812190978d12";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-89ce2d28580a97c09f3f812190978d12";
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
  kmods."6.6.93-1-89ce2d28580a97c09f3f812190978d12" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/pistachio/generic/kmods/6.6.93-1-89ce2d28580a97c09f3f812190978d12/";
    sourceInfo = {
      hash = "sha256-ee+hEcbCNPC9CbXTIxkkWW7lcUlAZ4HD2ZcUswd21ZM=";
      name = "kmods-pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/pistachio/generic/kmods/6.6.93-1-89ce2d28580a97c09f3f812190978d12/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-kO6yvG3mNnHryx5UmlULefL86U83wlY/cOSNCrgJvaA=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/pistachio/generic/packages/Packages";
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
