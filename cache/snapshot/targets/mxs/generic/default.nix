# snapshot mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-j0G9WRo0diLbJoSyJrsIw3NIVgqWoIuH0Qn3brQ8Yi0=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a01d2b180fa7549a48e7870264086e1a8700f418f338ceaba7ae5092e72fb050";
    filename = "immortalwrt-imagebuilder-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NPX1fcf8M/cMmB9pEd5Oj0MIy48RlBqKMeYsgcqrKHE=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "b72065b45897077b781b911912c4ec51";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-b72065b45897077b781b911912c4ec51";
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
  kmods."6.18.44-1-b72065b45897077b781b911912c4ec51" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.18.44-1-b72065b45897077b781b911912c4ec51/";
    sourceInfo = {
      hash = "sha256-0GuhkaWfoBP2btACHZyg/DOUiZd2iHoEDV/HHLdtEBs=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.18.44-1-b72065b45897077b781b911912c4ec51/packages.adb";
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
      hash = "sha256-8iqqK7WQRr6wv95sR0O5kj9SPtQi3RsK7i/eVI+Inqc=";
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
