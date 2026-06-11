# snapshot d1/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-OP4KyTXDbgvekeMhxXLSy1+iYAxpVAR/WOQFF0x/ULc=";
    name = "d1_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "c49d235198a52c456b22cd8ec19aa68994f6a62282d433ade7829a112c1b8d01";
    filename = "immortalwrt-imagebuilder-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-g4aRDBiggThUURLrYKrEKRx+EpB+bKT0M4Km61rmJV4=";
    name = "d1_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "d0a7c8dc59d7ec800b5b940b0c70821a";
      version = "6.18.34";
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
    kmods_target = "6.18.34-1-d0a7c8dc59d7ec800b5b940b0c70821a";
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
  kmods."6.18.34-1-d0a7c8dc59d7ec800b5b940b0c70821a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.34-1-d0a7c8dc59d7ec800b5b940b0c70821a/";
    sourceInfo = {
      hash = "sha256-a/xy/gF++UtvpLPtjK1InvpWUPgFb99mqIJTERvZDT4=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/d1/generic/kmods/6.18.34-1-d0a7c8dc59d7ec800b5b940b0c70821a/packages.adb";
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
      hash = "sha256-LgQ/yfIpVJM0adjp5eFd/qVAZz3fH9akMKmcEcU5RY4=";
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
