# 23.05.0 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-6qVNm7C+dvzYgc3DWT76qCbZS3WyCh9UiZGTar0xHvY=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "48aacd99faac8739435fe96705ce2abd363dbad3f1ef56d1a6bb5ed206b77b5d";
    filename = "immortalwrt-imagebuilder-23.05.0-pistachio-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-q2B2ggWTOcHcmvANYQoPeE3R67KS1JzGmcv48V2NnYc=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-ptNWt5vnr9HoLktFa/W4tRYDLwToGASYFtHzQOC/8Ds=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/pistachio/generic/packages/Packages";
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
