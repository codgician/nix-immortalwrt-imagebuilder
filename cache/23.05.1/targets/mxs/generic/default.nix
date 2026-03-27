# 23.05.1 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-LFGCE9jS6IWWLrsCgmiSpDc9FZ/KJg4axnAUyII5X0U=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "af5c63f085ebac04868f11d1478143a43bdfa48b3f5e4cacb7c8ba6258e45224";
    filename = "immortalwrt-imagebuilder-23.05.1-mxs-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-zqEMJxWQHYCHuwqH0RnvVcv2tHV8fU8W2gPOHEo+N+s=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      i2se_duckbill = {
        device_packages = [
          "-dnsmasq"
          "-firewall"
          "-ppp"
          "-ip6tables"
          "-iptables"
          "-6relayd"
          "-mtd"
          "uboot-envtools"
          "kmod-leds-gpio"
          "-kmod-ipt-nathelper"
        ];
      };
      olinuxino_maxi = {
        device_packages = [
          "kmod-usb-net-smsc95xx"
          "kmod-pinctrl-mcp23s08-i2c"
          "kmod-pinctrl-mcp23s08-spi"
          "kmod-leds-gpio"
          "kmod-sound-core"
        ];
      };
      olinuxino_micro = {
        device_packages = [
          "kmod-pinctrl-mcp23s08-spi"
          "kmod-pinctrl-mcp23s08-i2c"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-DuWqlpwTWG45Q+DeG/lvf+P0GNc7A43Uz4BKjmzrEzI=";
      name = "mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/mxs/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm926ej-s";
  feeds = import ./../../../packages/arm_arm926ej-s.nix;
}
