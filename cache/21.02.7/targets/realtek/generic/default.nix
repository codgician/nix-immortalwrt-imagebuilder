# 21.02.7 realtek/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/realtek/generic/";
  sha256sums = {
    hash = "sha256-GAUKM8SjMLfQ/UrDn6uAMgwFkArWQDvJedGUvh5AV84=";
    name = "realtek_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/realtek/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d940760fc9bea76f7e3e836795df2d1d4a3497743024ad8b2d845145619c96ee";
    filename = "immortalwrt-imagebuilder-21.02.7-realtek-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-TY7pB8AemPx0CQXP9LgE4AQUrtP8NhWjx0CrIii0mEI=";
    name = "realtek_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/realtek/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_4kec";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall"
      "fstools"
      "ip-bridge"
      "ip-full"
      "ip6tables"
      "iptables"
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
      "odhcp6c"
      "opkg"
      "procd"
      "tc"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      allnet_all-sg8208m = {
        device_packages = [ ];
      };
      d-link_dgs-1210-10p = {
        device_packages = [ "lua-rs232" ];
      };
      d-link_dgs-1210-16 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-28 = {
        device_packages = [ ];
      };
      netgear_gs108t-v3 = {
        device_packages = [ ];
      };
      netgear_gs110tpp-v1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-10hp = {
        device_packages = [ ];
      };
      zyxel_gs1900-8 = {
        device_packages = [ ];
      };
      zyxel_gs1900-8hp-v1 = {
        device_packages = [ "lua-rs232" ];
      };
      zyxel_gs1900-8hp-v2 = {
        device_packages = [ "lua-rs232" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/realtek/generic/packages/";
    sourceInfo = {
      hash = "sha256-vQ/ZWuSIo+qo6OtyCGv+kqSN0CWr1+5NzsLk53DU9Q8=";
      name = "realtek_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/realtek/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_4kec";
  feeds = import ./../../../packages/mips_4kec.nix;
}
