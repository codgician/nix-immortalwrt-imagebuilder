# snapshot malta/be64
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/";
  sha256sums = {
    hash = "sha256-bj1k2a9/D4SWglMzvC56633sfj3X9U07nDzXFUUbcFc=";
    name = "malta_be64-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/sha256sums";
  };
  imagebuilder = {
    sha256 = "2b91402aefdd9e25f972caa890d612ae68dfa9b414ac0ae8dea0c2e22dda46b5";
    filename = "immortalwrt-imagebuilder-malta-be64.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZNLy0Mx437W0DVFN4i1/IuflKovb+iNl12NmW0M9c44=";
    name = "malta_be64-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_mips64r2";
    linux_kernel = {
      release = "1";
      vermagic = "e6c74d45beaab75f334ec14de581519c";
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
    kmods_target = "6.12.77-1-e6c74d45beaab75f334ec14de581519c";
    profiles = {
      generic = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.77-1-e6c74d45beaab75f334ec14de581519c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.12.77-1-e6c74d45beaab75f334ec14de581519c/";
    sourceInfo = {
      hash = "sha256-+UqYmks2Z5au1HuJtdfk0rYwEq5oUuB/qsWHG8ofy1M=";
      name = "kmods-malta_be64-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/malta/be64/kmods/6.12.77-1-e6c74d45beaab75f334ec14de581519c/packages.adb";
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
      hash = "sha256-Iy36mGO3SaRZQR23tfcrIx5Ni8rHOGLaPYNqE/FQZLo=";
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
