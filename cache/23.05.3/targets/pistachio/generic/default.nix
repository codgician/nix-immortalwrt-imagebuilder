# 23.05.3 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-ZjVAxDgXhu8bZZt1g9e/BqyHyQDAGDwwAM/JFo+xpG8=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "18e809fb4af841ed16dccca1ae5a918041abc59b51a5af2df3424b5a47676304";
    filename = "immortalwrt-imagebuilder-23.05.3-pistachio-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-r/ixnhTV0mC4Ht2rVoI6rGbWBVY2SvcO8ToDIR98xos=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/pistachio/generic/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-XWsTeJ4bBkCj6ba6RtXVb++i2xuSCSsiB1gRsxVh5cs=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/pistachio/generic/packages/Packages";
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
