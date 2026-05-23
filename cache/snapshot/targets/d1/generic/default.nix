# snapshot d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-WU+Hh23I4itSTzgKTZm3sntI+BtUAipqJRJnqBunLD8=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "f660156c4ffe55ec76439307c3927adb1a1c5e6b66acf222ca4e58cf2c5f2ea8";
    filename = "immortalwrt-imagebuilder-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4mrZCdvkZN3Og5583+apsdV6fQA7dQ9OqLpcFAdMb+E=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "93a144c8186efc9d75bb7d726c8496a0";
      version = "6.18.31";
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
    kmods_target = "6.18.31-1-93a144c8186efc9d75bb7d726c8496a0";
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
  kmods."6.18.31-1-93a144c8186efc9d75bb7d726c8496a0" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.31-1-93a144c8186efc9d75bb7d726c8496a0/";
    sourceInfo = {
      hash = "sha256-paefZOIPyeqs35LlX/AvO2kKgy8QcaHv1yI1f79JsS4=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.31-1-93a144c8186efc9d75bb7d726c8496a0/packages.adb";
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
      hash = "sha256-c0JzAkcu+DlGYZ4j6o7J3L+Dk4NxcQ1rDOFckLMOktQ=";
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
