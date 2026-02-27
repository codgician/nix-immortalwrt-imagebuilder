# 24.10.5 mxs/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-9VvAa2VcedqmBQxUEPREOkGFHGyuc+I99Q4cgONrK+E=";
    name = "mxs_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0b81a5202dcb7363325fcc60d8b84188a69efd5a4f22b80cf1f16dd1ccfd8536";
    filename = "immortalwrt-imagebuilder-24.10.5-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AwjQmtnCnPb1ZY8GBR4NE4M+wku4ZY8fafeOXYauXP8=";
    name = "mxs_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "6bb11e0dba7d0ac5f4b35b98b159f1e9";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-6bb11e0dba7d0ac5f4b35b98b159f1e9";
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
  kmods."6.6.122-1-6bb11e0dba7d0ac5f4b35b98b159f1e9" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mxs/generic/kmods/6.6.122-1-6bb11e0dba7d0ac5f4b35b98b159f1e9/";
    sourceInfo = {
      hash = "sha256-YmCBKdey/qCxWiiywcgTaMcJUCV3x6uV+mCC7Pf8A9w=";
      name = "kmods-mxs_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mxs/generic/kmods/6.6.122-1-6bb11e0dba7d0ac5f4b35b98b159f1e9/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-a063sp5GKuDdDRMlWbaOm06Fka1GrQA35BTGYeoAM/E=";
      name = "mxs_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mxs/generic/packages/Packages";
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
