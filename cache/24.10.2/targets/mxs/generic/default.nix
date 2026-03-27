# 24.10.2 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-gxZsyUyBccnOslXclVILOnNfAVdyH7QN5JueTejRgFc=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0f2e1e43f977d4440f085006a2d64d243b807ed893af3324520b28dde0cac9fb";
    filename = "immortalwrt-imagebuilder-24.10.2-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-wgm9LgH/XarLoQNalLShAo6+YEU/8Xz8xb9bKxsPaM8=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "1a994c7fd49329ff2fdca0d40393b1f8";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-1a994c7fd49329ff2fdca0d40393b1f8";
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
  kmods."6.6.93-1-1a994c7fd49329ff2fdca0d40393b1f8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mxs/generic/kmods/6.6.93-1-1a994c7fd49329ff2fdca0d40393b1f8/";
    sourceInfo = {
      hash = "sha256-Qfb8va4++530ba0tvbYxEoE2Yoh1KYyacS4XkPYCo88=";
      name = "kmods-mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mxs/generic/kmods/6.6.93-1-1a994c7fd49329ff2fdca0d40393b1f8/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-iK4FhSYstljrgdAX7wPoBHNSfrJIhFIIm3dxI08YLsI=";
      name = "mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mxs/generic/packages/Packages";
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
