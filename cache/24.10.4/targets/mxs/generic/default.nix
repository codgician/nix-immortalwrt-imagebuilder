# 24.10.4 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-RWiDxuowprpmDev6PWtS/RJWZzPTChWxIhZX/ir4v3w=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "b2aa7e4f3aeb7686e453eae6d4c5809bea9d560afcb4f9fb886d7dd2e01e07de";
    filename = "immortalwrt-imagebuilder-24.10.4-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZShvPaB+K4ehS4SM6UnrkIx2zS9XyRgwUhcxygra2b8=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "b2f7da7b20b5f5813fe8cb1fdc7e925c";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-b2f7da7b20b5f5813fe8cb1fdc7e925c";
    profiles = {
      i2se_duckbill = {
        device_packages = [
          "-dnsmasq"
          "-ppp"
          "-ip6tables"
          "-iptables"
          "-mtd"
          "uboot-envtools"
          "kmod-leds-gpio"
          "-kmod-nf-nathelper"
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
  kmods."6.6.110-1-b2f7da7b20b5f5813fe8cb1fdc7e925c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mxs/generic/kmods/6.6.110-1-b2f7da7b20b5f5813fe8cb1fdc7e925c/";
    sourceInfo = {
      hash = "sha256-83RpyHyp2c3FGPlhZ91j1GeMXUCdJZ+jB2z7pOlwrRI=";
      name = "kmods-mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mxs/generic/kmods/6.6.110-1-b2f7da7b20b5f5813fe8cb1fdc7e925c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-t3wo2/biHti4PeC6DVPxI9vOJmAzkbwKaBqiDY04foE=";
      name = "mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mxs/generic/packages/Packages";
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
