# 24.10.7 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-NowEkQjYHyk/IVjo0TMbA7rFQuaXZ+ZksrI1R8rCZvk=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ab69ceb43b66e7298224d4d8fab9619d1ada55ff1113ae509a7a0dae113a717f";
    filename = "immortalwrt-imagebuilder-24.10.7-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-uzb82jVLa67PPWlXCHeUPIUz/Mg6ry0vbtihDj5rEkE=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "6bb11e0dba7d0ac5f4b35b98b159f1e9";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-6bb11e0dba7d0ac5f4b35b98b159f1e9";
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
  kmods."6.6.159-1-6bb11e0dba7d0ac5f4b35b98b159f1e9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mxs/generic/kmods/6.6.159-1-6bb11e0dba7d0ac5f4b35b98b159f1e9/";
    sourceInfo = {
      hash = "sha256-EayF1D7Br5T+WspSVCmsuYqThmeK47RazfB3scG/D8Q=";
      name = "kmods-mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mxs/generic/kmods/6.6.159-1-6bb11e0dba7d0ac5f4b35b98b159f1e9/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-Zdm8Dp4xH9W6w7/6JGPFJHLxhHBsGvo4nRb9IPsLTjc=";
      name = "mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/mxs/generic/packages/Packages";
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
