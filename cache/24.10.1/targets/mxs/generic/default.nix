# 24.10.1 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-4zM7C6lCtEXIQUpDu+3YvRIveLNQ0F/Fgghj0dpP4IM=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "71eb7324e92a3b03aa22898f8488d4ca69f0ea3ec8a4c746f56795b3dbe81433";
    filename = "immortalwrt-imagebuilder-24.10.1-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-71m2OHoo675efKVTVBxnW+H8RIoyJqpt/xlENSqG6Ko=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "add6e275567423ec496bc78e0aab83a3";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-add6e275567423ec496bc78e0aab83a3";
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
  kmods."6.6.86-1-add6e275567423ec496bc78e0aab83a3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mxs/generic/kmods/6.6.86-1-add6e275567423ec496bc78e0aab83a3/";
    sourceInfo = {
      hash = "sha256-SP2ncCsxJxaAwefD9xI0WYqX0Sz9AW2Psi3HdXCc4II=";
      name = "kmods-mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mxs/generic/kmods/6.6.86-1-add6e275567423ec496bc78e0aab83a3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-mxg2BMiruB7U4JF6wgVJ5c/Gf5nUYaqhhSFfITAHYRI=";
      name = "mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mxs/generic/packages/Packages";
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
