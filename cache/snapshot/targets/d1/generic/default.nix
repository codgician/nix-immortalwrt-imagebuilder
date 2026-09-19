# snapshot d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-iqRgo+8rmDdPaElnfhM0gFSZg6dNMhozlFF2J/xpS10=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "374415b3b11db6205e57d14114b522ccc97d579530f78704ae646b2524f7220e";
    filename = "immortalwrt-imagebuilder-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sqqdzUEN7mLMfz55DzUaNql8GmxsGj9BvDH7oPzuUHk=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "3592d1d3806d181b87af4f294e487ee4";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "f2fsck"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
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
    kmods_target = "6.18.52-1-3592d1d3806d181b87af4f294e487ee4";
    profiles = {
      "100ask_dongshan-nezha-stu" = {
        device_packages = [ ];
      };
      allwinner_d1-nezha = {
        device_packages = [ "kmod-gpio-pcf857x" ];
      };
      sipeed_lichee-rv-dock = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
        ];
      };
      widora_mangopi-mq-pro = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.18.52-1-3592d1d3806d181b87af4f294e487ee4" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.52-1-3592d1d3806d181b87af4f294e487ee4/";
    sourceInfo = {
      hash = "sha256-tHaF5np+aNgRsB1z12vMtpaWw5diRcYiPLcFFJ/lI80=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.52-1-3592d1d3806d181b87af4f294e487ee4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-jtpqPLMW9vTlSqY8lzIoeschFFapSZyL2JYdanelbkA=";
      name = "d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_generic";
  feeds = import ./../../../packages/riscv64_generic.nix;
}
