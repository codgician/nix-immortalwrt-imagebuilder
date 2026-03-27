# 24.10.0 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-hdxf2+TaX4ibbUuAi4ohI+w4DJgMWhLjjprxcpyeACA=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "04ad76f53850783ca64cfb630db3bacaeb3bd6471ecdebdde1a72f8f9e5517c3";
    filename = "immortalwrt-imagebuilder-24.10.0-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3trDlaZGEfD0W9RN3XdWzdqV57eW4r0IuV3sUtYkCaU=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "9736e4a17870fe92a00664e114d8fa3b";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-9736e4a17870fe92a00664e114d8fa3b";
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
  kmods."6.6.73-1-9736e4a17870fe92a00664e114d8fa3b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mxs/generic/kmods/6.6.73-1-9736e4a17870fe92a00664e114d8fa3b/";
    sourceInfo = {
      hash = "sha256-qcu7xNl8e7zJe6tfdoI/3EA6IKCP5R8UdFcCoZy5YHg=";
      name = "kmods-mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mxs/generic/kmods/6.6.73-1-9736e4a17870fe92a00664e114d8fa3b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-DJNFH+omidE0L9zj8emSlCfFNilZKCVObofzbCPsscI=";
      name = "mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mxs/generic/packages/Packages";
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
