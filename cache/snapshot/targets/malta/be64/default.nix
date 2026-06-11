# snapshot malta/be64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/";
  sha256sums = {
    hash = "sha256-T2fB4WlQ4IVgqxArFpEIdm85HIYOEE4jaWqps52O4W4=";
    name = "malta_be64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/sha256sums";
  };
  imagebuilder = {
    sha256 = "4d1474ef62cd04ea7ec14689be9fafe15e61af207ffc8b139e5c1843c31e25f6";
    filename = "immortalwrt-imagebuilder-malta-be64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Jgh6yvUKjYaVOBiHZhGRg69uiNWeBI4zZhA27MpGOeI=";
    name = "malta_be64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "5ad15938a2b11e1bab59f6ae87f472b9";
      version = "6.18.34";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-mac80211-hwsim"
      "kmod-nft-offload"
      "kmod-pcnet32"
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
      "wpad-openssl"
    ];
    kmods_target = "6.18.34-1-5ad15938a2b11e1bab59f6ae87f472b9";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.34-1-5ad15938a2b11e1bab59f6ae87f472b9" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.18.34-1-5ad15938a2b11e1bab59f6ae87f472b9/";
    sourceInfo = {
      hash = "sha256-kN1Y8AAbjr0KnmDNeTEo1cttXvu8znO7iMQwhnYe1JY=";
      name = "kmods-malta_be64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.18.34-1-5ad15938a2b11e1bab59f6ae87f472b9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/packages/";
    sourceInfo = {
      hash = "sha256-ev2EhBPaE90yNC+EG6aTkt4qd1mM/6opuJyJxwr2UYU=";
      name = "malta_be64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64_mips64r2";
  feeds = import ./../../../packages/mips64_mips64r2.nix;
}
