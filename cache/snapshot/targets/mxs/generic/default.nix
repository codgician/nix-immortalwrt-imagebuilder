# snapshot mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-AjCqjXfYeRv/XfZCi60BUiee3u8hupQtuAakXZzPzXQ=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2030edaf9b8423e4b473dea7593d3f86a46c58d680a6fb5011e2b7d0c1b04778";
    filename = "immortalwrt-imagebuilder-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SJ3tEIW6nJvqMmHWlwUI9UhWXKO8I324/E0Dk+lSlwI=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "3adbd4c23dfd3a866f49753da9494c30";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-3adbd4c23dfd3a866f49753da9494c30";
    profiles = {
      i2se_duckbill = {
        device_packages = [
          "-dnsmasq"
          "-firewall4"
          "-mtd"
          "-nftables"
          "-odhcpd-ipv6only"
          "-ppp"
          "-kmod-nft-offload"
          "uboot-envtools"
          "kmod-leds-gpio"
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
  kmods."6.12.74-1-3adbd4c23dfd3a866f49753da9494c30" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.12.74-1-3adbd4c23dfd3a866f49753da9494c30/";
    sourceInfo = {
      hash = "sha256-K7lpivfU+ALCMjmOHunWkp9oCIBpvs1SZcOPZyKNXJA=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.12.74-1-3adbd4c23dfd3a866f49753da9494c30/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-tDGC/QMZNYsYOHX316sTukgXgOvkJNyWtzolFDeqmxE=";
      name = "mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/packages/packages.adb";
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
