# 23.05.7 octeon/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-B1WH79xqhkp9/geEa7u7LRHtNg/IXg/Yo7dqW1ZZGeI=";
    name = "octeon_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d271601fb86921838af64447db843472e6875eec36678c080a48b01c81f77e75";
    filename = "immortalwrt-imagebuilder-23.05.7-octeon-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-S0OZ2XyrQGdDcCRVEdfF4X2P2hsnwblkqhr/6aDqmaE=";
    name = "octeon_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "e5721e74fb903fbf4c5862adab2c0e99";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-e5721e74fb903fbf4c5862adab2c0e99";
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
      ubnt_edgerouter-6p = {
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
      ubnt_unifi-usg = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-ZqZZP/p2dvZYgl7UIdrWx+Dm8Mv+/8uogJZhVdlyhak=";
      name = "octeon_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/octeon/generic/packages/Packages";
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
