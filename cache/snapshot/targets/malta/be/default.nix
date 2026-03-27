# snapshot malta/be
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/";
  sha256sums = {
    hash = "sha256-mS9orJJJSNX2Nd22cAKMnTlmGeBG2Et1fktY6w7q4ZA=";
    name = "malta_be-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/sha256sums";
  };
  imagebuilder = {
    sha256 = "b448fe7caff2b0149f696c00f54236ceb7920a1130d03e21162a2ce658999b4e";
    filename = "immortalwrt-imagebuilder-malta-be.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-PqbJfkltVzVfY3ovxk6uxAWFftmCwaI5Dgr2V7Bnllc=";
    name = "malta_be-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "f1812f3f64a561e4897e644d8ef6f8d1";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-f1812f3f64a561e4897e644d8ef6f8d1";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.77-1-f1812f3f64a561e4897e644d8ef6f8d1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.12.77-1-f1812f3f64a561e4897e644d8ef6f8d1/";
    sourceInfo = {
      hash = "sha256-0WdQEJRjRW/Ae99s/u1Q8CfWVJO9N8wqGoHrEkJftMw=";
      name = "kmods-malta_be-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/kmods/6.12.77-1-f1812f3f64a561e4897e644d8ef6f8d1/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/packages/";
    sourceInfo = {
      hash = "sha256-q8qHLUa4AOsJINWiETsMPi2lCtED3kT+fMAkDy5P7Zk=";
      name = "malta_be-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
