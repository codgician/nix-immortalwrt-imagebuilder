# 21.02.7 arc770/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/arc770/generic/";
  sha256sums = {
    hash = "sha256-TXUuQDpGpACM+CP4bRp5PBgR424Zyrjff+MyC8Z7OvM=";
    name = "arc770_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/arc770/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "78f96db492a93353ca43d85b2cbcaa2795d428f4fa4b9554c7603071d857ef79";
    filename = "immortalwrt-imagebuilder-21.02.7-arc770-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-t08fdr9yFehVxnvcKYZ9LjuNS/lc8XEO12zoh+dmGsA=";
    name = "arc770_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/arc770/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arc_arc700";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "fstools"
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
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      nsim = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/arc770/generic/packages/";
    sourceInfo = {
      hash = "sha256-it45A7nB5+rFEFe5OhUPG2fgeLEQQfLZf+g19YG+axs=";
      name = "arc770_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/arc770/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arc_arc700";
  feeds = import ./../../../packages/arc_arc700.nix;
}
