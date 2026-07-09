# snapshot mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-aZhqyM1Iqg4OhK/b/uAr6fz1qWLLUIccT0ZMoikfy1k=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "7681bac201e4eba832b2d1ba0d21c36233f0bfe4a3cca05af7d7178b8229b5d5";
    filename = "immortalwrt-imagebuilder-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-aCQuSxlOAyMb2cnfr72xaI4QudhcgWBzUjGC4xiq5kY=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "ad1269115fcbd60b3da03e1f43d79533";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-ad1269115fcbd60b3da03e1f43d79533";
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
  kmods."6.18.37-1-ad1269115fcbd60b3da03e1f43d79533" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.18.37-1-ad1269115fcbd60b3da03e1f43d79533/";
    sourceInfo = {
      hash = "sha256-ciQic4HWQ6+WjH4ZjCOqH2ObsQ8P3+yWPK/X2e896m8=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.18.37-1-ad1269115fcbd60b3da03e1f43d79533/packages.adb";
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
      hash = "sha256-J28v8LO3uH8YBfYkA1c4QhZDe/jYTzngTDHeSQsGwfw=";
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
