# 21.02.7 pistachio/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-ioCap7w8skXRnzx407Mnd/v9ugrZmJ0fd7O42iLpWQQ=";
    name = "pistachio_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = null;
  profiles.sourceInfo = {
    hash = "sha256-aAWGiUWMROhnPPdkWcyA0hFP3u0KxCc8j8eiFCdU/vQ=";
    name = "pistachio_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/pistachio/generic/profiles.json";
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
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-t2+YqLeXBAZYQepgRbx/YVabjthgJ7OFAjHYbf0EruM=";
      name = "pistachio_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/pistachio/generic/packages/Packages";
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
