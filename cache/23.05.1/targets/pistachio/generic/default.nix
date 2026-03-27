# 23.05.1 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-iKwhJSTeDyyCf3hnPuKpKaE3wwMLxCOBA9mnkCMQLOg=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9ccded5b21b36bd9af6f1b399b19fcba10d67fd39ce286378a8cf016ae31a1e4";
    filename = "immortalwrt-imagebuilder-23.05.1-pistachio-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-QSG5iQNDgh22/XHGd1HDGPyixJl4dGOQpfT+BBjMmQg=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/pistachio/generic/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-9czCIcVLVsuajRHCSIE8EhgDK3g/HTzJVR8YCpzZd08=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/pistachio/generic/packages/Packages";
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
