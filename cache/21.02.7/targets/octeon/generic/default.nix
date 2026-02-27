# 21.02.7 octeon/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-1/8hsVJLAC7lXXX2c8GsBKvXW6sIlM0FittT8MkLNVY=";
    name = "octeon_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/octeon/generic/sha256sums";
  };
  imagebuilder = null;
  profiles.sourceInfo = {
    hash = "sha256-2CL1MGkwRxcsDNIyXFHIXOPIaOPZEU3MM6NH3xJr1Zs=";
    name = "octeon_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      generic = {
        device_packages = [ ];
      };
      itus_shield-router = {
        device_packages = [ ];
      };
      ubnt_edgerouter = {
        device_packages = [ ];
      };
      ubnt_edgerouter-4 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-lite = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-xEV4WfFEJLcaK+DVpCVDkySZBv/f+3FyPkKhY1K28Ok=";
      name = "octeon_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/octeon/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64_octeonplus";
  feeds = import ./../../../packages/mips64_octeonplus.nix;
}
