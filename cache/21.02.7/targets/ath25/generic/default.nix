# 21.02.7 ath25/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath25/generic/";
  sha256sums = {
    hash = "sha256-3eOz1oY2MFRYYXhWhGUl3cdodosg6johLC4HMTQvxxA=";
    name = "ath25_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath25/generic/sha256sums";
  };
  imagebuilder = null;
  profiles.sourceInfo = {
    hash = "sha256-IuL91p0kQcjsv3u0Uiwe7PC4u4v9Vr/EMXT2XXeeDvQ=";
    name = "ath25_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath25/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
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
      "kmod-ath5k"
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      generic = {
        device_packages = [ ];
      };
      ubnt_picostation-2 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath25/generic/packages/";
    sourceInfo = {
      hash = "sha256-Nska41y3y+vvZmP8flT/wvrYKC9AbCFgbQAuGP7AYkU=";
      name = "ath25_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath25/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
