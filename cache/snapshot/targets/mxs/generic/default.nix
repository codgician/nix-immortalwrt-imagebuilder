# snapshot mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-rmT9m7D07/97NfjGqCabHoG57qLn2iPiT+AFI5wofCI=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3554d7682170689ec4ddd6be9896af1ee175d0105b3df2af9ad1580e03007620";
    filename = "immortalwrt-imagebuilder-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mJ1ScR7AdJapRnTT3lb6sCCi7Iw3Kk9Ph9Yy3hPeb0A=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "9c656f901fd6f0ed47d9bbbaa6f68322";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-9c656f901fd6f0ed47d9bbbaa6f68322";
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
  kmods."6.18.52-1-9c656f901fd6f0ed47d9bbbaa6f68322" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.18.52-1-9c656f901fd6f0ed47d9bbbaa6f68322/";
    sourceInfo = {
      hash = "sha256-ONLkUrrUfrYQLqNumDPYLvjDN+ux9gcKalOMdUOPBvE=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.18.52-1-9c656f901fd6f0ed47d9bbbaa6f68322/packages.adb";
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
      hash = "sha256-uKWd8mK8AbHVtAOnhV0IawnNdUTnQg01vyYVNrEXnpk=";
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
